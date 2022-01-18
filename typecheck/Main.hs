{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE LambdaCase #-}
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


type CLEMap' = M.Map String CLEJSON
loadCLEMap :: FilePath -> IO (Maybe CLEMap')
loadCLEMap = fmap (fmap toMap . decode . LBS.fromStrict) . BS.readFile
    where
        toMap m = M.fromList (zip (CLEMap.label <$> m) (CLEMap.json <$> m))


toVarType :: CLEJSON -> CLEType
toVarType CLEJSON {level, cdf} = VarType level remoteLevels
    where
        cdf' = fromMaybe [] cdf
        remoteLevels = S.fromList $ remotelevel <$> cdf'

toFunType :: CLEMap' -> Int -> CLEJSON -> CLEType
toFunType map nargs json@CLEJSON {level, cdf} = 
    maybe defaultTy mkTy $ foldl1 pairwiseUnion <$> (mapM fromCDF =<< cdf)
    where
        remoteLevels = remoteLevelsOf json
        -- used when cle json provided is a var annotation
        defaultTy = 
            FunctionType 
                level 
                (S.singleton level) 
                (replicate nargs remoteLevels) 
                remoteLevels 
                remoteLevels
        mkTy (args, body, ret) = FunctionType level remoteLevels args body ret  
        pairwiseUnion (args, body, ret) (args', body', ret') =
            (zipWith S.union args args', S.union body body', S.union ret ret')
        fromCDF CDF {argtaints, codtaints, rettaints} = do
            args <- mapM (fmap S.unions . mapM lookupRemoteLevel) =<< argtaints
            body <- mapM lookupRemoteLevel =<< codtaints
            ret <- mapM lookupRemoteLevel =<< rettaints
            pure (args, S.unions body, S.unions ret)
        lookupRemoteLevel label = remoteLevelsOf <$> M.lookup label map
        remoteLevelsOf CLEJSON {cdf} = S.fromList $ remotelevel <$> fromMaybe [] cdf


annotateInstr :: CLEMap' 
    -> Instruction (IndexedPair f IndexedAssignment)
    -> Maybe (Instruction (IndexedPair f Annotated))
annotateInstr clemap (Instruction (ll :& AssignedInstruction (Just (Assignment _ lbl)))) =
    consInstr ll <$> M.lookup lbl clemap
    where consInstr ll = Instruction . (:&) ll . AnnotatedInstr . toVarType 
annotateInstr _ _ = Nothing

annotateTerm :: CLEMap'
    -> Terminator (IndexedPair f IndexedAssignment)
    -> Maybe (Terminator (IndexedPair f Annotated))
annotateTerm clemap (Terminator (ll :& (AssignedTerminator (Assignment _ lbl)))) = do 
    consTerm ll <$> M.lookup lbl clemap
    where consTerm ll = Terminator . (:&) ll . AnnotatedTerm . toVarType

annotateBB :: CLEMap'  
    -> BasicBlock (IndexedPair f IndexedAssignment)
    -> Maybe (BasicBlock (IndexedPair f Annotated))
annotateBB clemap (BasicBlock n instrs term (ll :& _)) = do
    let instrs' = mapMaybe (annotateInstr clemap) instrs
    term' <- annotateTerm clemap term
    Just $ BasicBlock n instrs' term' (ll :& UnAnnotatedBasicBlock)

annotateGlobal :: CLEMap' -> Global (LLWrapper & IndexedAssignment) -> Maybe (Global (LLWrapper & Annotated))
annotateGlobal clemap (Global (ll :& AssignedGlobal (Assignment _ lbl))) =
    consGlobal <$> M.lookup lbl clemap
    where
        consGlobal = Global . (:&) ll . AnnotatedGlobal . toVarType
annotateGlobal clemap (Function bbs (ll :& AssignedGlobal (Assignment _ lbl))) = do
    bbs' <- mapM (annotateBB clemap) bbs
    consFun bbs' <$> M.lookup lbl clemap
    where
        consFun bbs' = Function bbs' . (:&) ll . AnnotatedGlobal . toFunType clemap numargs
        numargs = case ll of
            WrapGlobal LL.Function {parameters} -> length $ fst parameters
            _ -> 0 

run ::
    [Global LLWrapper] ->
    M.Map LL.Name (Global IndexedAssignment) ->
    CLEMap' ->
    IO ()
run globals llmap clemap = print $ tc <$> M.keys annotated
    where
        tc n = (n, runTc ctx . checkGlobal <$> M.lookup n annotated)
        named = M.fromList $ zip (nameOf <$> globals) globals
        zipped = filterMaybe $ M.intersectionWith zipGlobal named llmap
        annotated = M.mapMaybe (annotateGlobal clemap) zipped   
        ctx = (\case 
                Global (_ :& (AnnotatedGlobal ty)) -> ty
                Function _ (_ :& (AnnotatedGlobal ty)) -> ty 
            ) <$> annotated  
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




