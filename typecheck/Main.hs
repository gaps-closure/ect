{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# LANGUAGE DataKinds #-}
module Main where

import System.Environment (getArgs)
import Data.Maybe
import Data.Bifunctor (first)
import qualified Data.Set as S
import qualified Data.Map as M

import Data.Aeson (decode)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as LBS

import LLVM ( moduleAST, withModuleFromBitcode, File(File) )
import LLVM.Context (withContext)
import LLVM.AST.Global (parameters)
import qualified LLVM.AST as LL

import TypeCheck
import LLMap
import CLEMap


data FunctionCDF = FunctionCDF {
    remotelevel :: String,
    direction :: String,
    guarddirective :: GD,
    argtaints :: [S.Set String],
    codtaints :: S.Set String,
    rettaints :: S.Set String
} deriving (Eq, Ord, Show)

data VarCDF = VarCDF {
    varRemotelevel :: String,
    varDirection :: String,
    varGuarddirective :: GD
} deriving (Eq, Ord, Show)

data CLEDef a = CLEDef {
    level :: String,
    cdf :: S.Set a
} deriving (Eq, Ord, Show)

type FunctionDef = CLEDef FunctionCDF
type VarDef = CLEDef VarCDF
type CLE' = Either VarDef FunctionDef  

interpretCLEJSON :: CLEJSON -> CLE' 
interpretCLEJSON (CLEJSON (Just cdfs) level) = definition
    where
        definition = case variants of
            Left vcdfs -> Left $ CLEDef level $ S.fromList vcdfs
            Right fcdfs -> Right $ CLEDef level $ S.fromList fcdfs
        variants = foldl combine (Right []) (determineVariant <$> cdfs)
        determineVariant CDF {remotelevel,
            direction,
            guarddirective,
            argtaints = Just argtaints,
            codtaints = Just codtaints,
            rettaints = Just rettaints} =
                Right $ FunctionCDF 
                    remotelevel direction guarddirective 
                    (S.fromList <$> argtaints) 
                    (S.fromList codtaints) 
                    (S.fromList rettaints)
        determineVariant CDF {remotelevel, direction, guarddirective} =
                Left (VarCDF remotelevel direction guarddirective)
        combine (Right fcdfs) (Right fcdf) = Right (fcdf : fcdfs)
        combine (Left vcdfs) (Right _) = Left vcdfs
        combine (Right _) (Left vcdf) = Left [vcdf]
        combine (Left vcdfs) (Left vcdf) = Left (vcdf : vcdfs)
interpretCLEJSON (CLEJSON Nothing level) = Left (CLEDef level S.empty)


loadBC :: FilePath -> IO LL.Module
loadBC bc = withContext $ \c -> withModuleFromBitcode c (File bc) moduleAST

globalsFromModule :: LL.Module -> [LL.Global]
globalsFromModule = concatMap globalsOnly . LL.moduleDefinitions
    where
        globalsOnly (LL.GlobalDefinition g) = [g]
        globalsOnly _ = []

wrapGlobals :: [LL.Global] -> [Global LLWrapper]
wrapGlobals = fmap wrapGlobal

llmapJson :: BS.ByteString -> Maybe (M.Map LL.Name (Global IndexedAssignment))
llmapJson jsonsrc =
    fmap (fmap wrapGlobalDesc . convertKeys)
        (decode (LBS.fromStrict jsonsrc) :: Maybe (M.Map String GlobalDesc))
    where
        convertKeys = M.fromList . fmap (first nameFromString) . M.toList

loadLLMap :: FilePath -> IO (Maybe (M.Map LL.Name (Global IndexedAssignment)))
loadLLMap = fmap llmapJson . BS.readFile

type CLEMap' = M.Map String (Either VarDef FunctionDef)  
loadCLEMap :: FilePath -> IO (Maybe CLEMap')
loadCLEMap = fmap (fmap (interpret . toMap) . decode . LBS.fromStrict) . BS.readFile
    where
        interpret = fmap interpretCLEJSON  
        toMap m = M.fromList (zip (CLEMap.label <$> m) (CLEMap.json <$> m))


toVarType :: CLE' -> Maybe CLEType
toVarType (Left (CLEDef level cdfs)) = Just $ VarType (level ++ "_E") remoteEnclaves
    where
        remoteEnclaves = S.union (S.singleton $ level ++ "_E") $ S.map ((++ "_E") . varRemotelevel) cdfs
toVarType _ = Nothing
    
toFunType :: Int -> CLE' -> Maybe CLEType
toFunType n (Left (CLEDef level cdfs)) = Just $ FunctionType (level ++ "_E") [flow]
    where
        flow = Flow (level ++ "_E") 
            (replicate n (S.singleton $ withSelf remoteEnclaves)) 
            (S.singleton $ withSelf remoteEnclaves) 
            (S.singleton $ withSelf remoteEnclaves)
        withSelf = S.union $ S.singleton (level ++ "_E")
        remoteEnclaves = S.map ((++ "_E") . varRemotelevel) cdfs 
toFunType _ _ = Nothing
 
annotateInstr :: CLEMap' 
    -> Instruction (IndexedPair f IndexedAssignment)
    -> Maybe (Instruction (IndexedPair f Annotated))
annotateInstr clemap (Instruction (ll :& AssignedInstruction (Just (Assignment _ lbl)))) =
    consInstr ll =<< M.lookup lbl clemap
    where consInstr ll cle = Instruction . (:&) ll . AnnotatedInstr <$> toVarType cle
annotateInstr _ _ = Nothing

annotateTerm :: CLEMap'
    -> Terminator (IndexedPair f IndexedAssignment)
    -> Maybe (Terminator (IndexedPair f Annotated))
annotateTerm clemap (Terminator (ll :& (AssignedTerminator (Assignment _ lbl)))) = 
    consTerm ll =<< M.lookup lbl clemap
    where consTerm ll cle = Terminator . (:&) ll . AnnotatedTerm <$> toVarType cle

annotateBB :: CLEMap'  
    -> BasicBlock (IndexedPair f IndexedAssignment)
    -> Maybe (BasicBlock (IndexedPair f Annotated))
annotateBB clemap (BasicBlock n instrs term (ll :& _)) = do
    let instrs' = mapMaybe (annotateInstr clemap) instrs
    term' <- annotateTerm clemap term
    Just $ BasicBlock n instrs' term' (ll :& UnAnnotatedBasicBlock)

annotateGlobal :: CLEMap' -> Global (LLWrapper & IndexedAssignment) -> Maybe (Global (LLWrapper & Annotated))
annotateGlobal clemap (Global (ll :& AssignedGlobal (Assignment _ lbl))) =
    consGlobal =<< M.lookup lbl clemap
    where
        consGlobal cle = Global . (:&) ll . AnnotatedGlobal <$> toVarType cle
annotateGlobal clemap (Function bbs (ll :& AssignedGlobal (Assignment _ lbl))) = do
    bbs' <- mapM (annotateBB clemap) bbs
    consFun bbs' =<< M.lookup lbl clemap
    where
        consFun bbs' cle = Function bbs' . (:&) ll . AnnotatedGlobal <$> toFunType numargs cle
        numargs = case ll of
            WrapGlobal LL.Function {parameters} -> length $ fst parameters
            _ -> 0 

run ::
    [Global LLWrapper] ->
    M.Map LL.Name (Global IndexedAssignment) ->
    CLEMap' ->
    IO ()
run globals llmap clemap = print $
    runTc ctx . checkGlobal <$> M.lookup (LL.mkName "get_b") annotated
    where
        named = M.fromList $ zip (nameOf <$> globals) globals
        zipped = filterMaybe $ M.intersectionWith zipGlobal named llmap
        annotated = M.mapMaybe (annotateGlobal clemap) zipped   
        ctx = (\(Global (_ :& (AnnotatedGlobal ty))) -> ty) <$> annotated  
        filterMaybe = fmap fromJust . M.filter isJust
main :: IO ()
main = do
    (bcFile, llmapFile, clemapFile) <- fmap matchArgs getArgs
    globals <- wrapGlobals . globalsFromModule <$> loadBC bcFile
    llmap <- assertJust "could not load llmap" <$> loadLLMap llmapFile
    clemap <- assertJust "could not load clemap" <$> loadCLEMap clemapFile
    run globals llmap clemap
    where
        matchArgs [bc, json, clemap] = (bc, json, clemap)
        matchArgs _ = error "Wrong number of arguments"

        assertJust _ (Just x) = x
        assertJust m Nothing = error m




