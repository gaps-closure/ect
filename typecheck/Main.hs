{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module Main where

import System.Environment (getArgs)
import LLVM ( moduleAST, withModuleFromBitcode, File(File) )
import LLVM.Context (withContext)
import qualified LLVM.AST as LL
import TypeCheck
    ( convertName, wrapGlobal, Global(..), LLWrapper(WrapGlobal), (&), type (&), Annotated (..),
    IndexedPair (IndexedPair), CLEType (VarType, FunctionType), Flow (Flow), BasicBlock (BasicBlock), Instruction (Instruction), Terminator (Terminator), checkGlobal )
import Data.Aeson ( decode )
import Data.ByteString ( readFile )
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as LBS
import Prelude hiding (readFile)
import qualified Data.Map as M
import LLMap (GlobalDesc, zipGlobal, wrapGlobalDesc, IndexedAssignment (..), Assignment (Assignment))
import qualified LLMap as LM
import qualified Data.Bifunctor
import LLVM.AST.Global (name)
import Data.Maybe ( fromJust, isJust )
import CLEMap
    ( CDF(CDF, remotelevel, argtaints, codtaints, rettaints),
      CLE(CLE, json, label),
      CLEJSON(CLEJSON),
      CLEMap )
import qualified CLEMap as CL 
import qualified Data.Set as S
import TypeCheck (runTc)

ast :: FilePath -> IO LL.Module
ast bc = withContext $ \c -> withModuleFromBitcode c (File bc) moduleAST

globals :: LL.Module -> [LL.Global]
globals = concatMap globalsOnly . LL.moduleDefinitions
    where
        globalsOnly (LL.GlobalDefinition g) = [g]
        globalsOnly _ = []

llmapJson :: BS.ByteString -> Maybe (M.Map LL.Name (Global IndexedAssignment))
llmapJson jsonsrc = fmap (fmap wrapGlobalDesc . convertKeys) (decode (LBS.fromStrict jsonsrc) :: Maybe (M.Map String GlobalDesc))
    where
        convertKeys = M.fromList . fmap (Data.Bifunctor.first convertName) . M.toList

nameOf :: Global LLWrapper -> LL.Name
nameOf (Global (WrapGlobal LL.GlobalVariable {name, ..})) = name
nameOf (Global (WrapGlobal LL.GlobalAlias {name, ..})) = name
nameOf (Global (WrapGlobal LL.Function {name, ..})) = name
nameOf (Function _ (WrapGlobal LL.GlobalVariable {name, ..})) = name
nameOf (Function _ (WrapGlobal LL.GlobalAlias {name, ..})) = name
nameOf (Function _ (WrapGlobal LL.Function {name, ..})) = name

-- >>> :t wrapGlobal
-- wrapGlobal :: LL.Global -> Global LLWrapper
run :: FilePath -> FilePath -> FilePath -> IO ()
run bc json clemap = do
    globs <- globals <$> ast bc
    let wrapped = fmap wrapGlobal globs
    let named = M.fromList $ zip (fmap nameOf wrapped) wrapped
    llmap <- fromJust . llmapJson <$> readFile json
    clemap <- fromJust . decode . LBS.fromStrict <$> readFile clemap  
    let zipped = filterMaybe $ M.intersectionWith zipGlobal named llmap
    let annotated = fromJust . toAnnotated clemap <$> zipped
    let tc = runTc (M.singleton (LL.mkName "get_b.b") $ VarType "purple_E" S.empty) . checkGlobal <$> annotated
    print $ M.lookup (LL.mkName "get_b") tc
    where
        filterMaybe = fmap fromJust . M.filter isJust 

toAnnotated :: CLEMap -> Global (LLWrapper & IndexedAssignment) -> Maybe (Global (LLWrapper & Annotated))
toAnnotated clemap (Global (IndexedPair ll (AssignedGlobal (Assignment _ lbl)))) = 
    Global . IndexedPair ll . AnnotatedGlobal . fromCLE <$> M.lookup lbl clemap'  
    where
        clemap' = M.fromList (zip (label <$> clemap) clemap)
        fromCLE (CLE _ (CLEJSON (Just cdfs) level)) = VarType (level ++ "_E") $ S.fromList (remotelevel <$> cdfs)
        fromCLE (CLE _ (CLEJSON Nothing level)) = VarType (level ++ "_E") S.empty
toAnnotated clemap (Function bbs (IndexedPair ll (AssignedGlobal (Assignment _ lbl)))) = do
    bbs' <- mapM toAnnotatedBB bbs
    Function bbs' . IndexedPair ll . AnnotatedGlobal . fromCLE <$> M.lookup lbl clemap'  
    where
        toAnnotatedBB (BasicBlock n instrs term (IndexedPair bbll _)) = do 
            let instrs' = concatMap (fromMaybe . toAnnotatedInstr) instrs
            term' <- toAnnotatedTerm term
            return $ BasicBlock n instrs' term' (IndexedPair bbll UnAnnotatedBasicBlock)  
        fromMaybe (Just x) = [x]
        fromMaybe Nothing = []
        toAnnotatedTerm (Terminator (IndexedPair tll (AssignedTerminator (Assignment _ tlbl)))) = 
            -- TODO: how to determine annotations here? below is definitely incorrect
            (\c -> Terminator $ IndexedPair tll $ AnnotatedTerm (fromCLE c) (fromCLE c)) <$> M.lookup tlbl clemap'
        toAnnotatedInstr (Instruction (IndexedPair ill (AssignedInstruction (Just (Assignment _ ilbl))))) =
            Instruction . IndexedPair ill . AnnotatedInstr . fromCLE <$> M.lookup ilbl clemap'
        toAnnotatedInstr (Instruction (IndexedPair _ (AssignedInstruction Nothing))) = Nothing
        clemap' = M.fromList (zip (label <$> clemap) clemap)
        fromCLE (CLE _ (CLEJSON (Just cdfs) level)) = FunctionType (level ++ "_E") $ fromCDF <$> cdfs
        fromCLE (CLE _ (CLEJSON Nothing level)) = FunctionType (level ++ "_E") [] 
        fromCDF CDF {remotelevel, argtaints, codtaints, rettaints} = 
            Flow (remotelevel ++ "_E") 
                 (maybe [] (fmap toEnclaveSet) argtaints) 
                 (maybe S.empty toEnclaveSet codtaints) 
                 (maybe S.empty toEnclaveSet rettaints) 
        toEnclaveSet = S.fromList . fmap (++ "_E") 
toAnnotated clemap (Function bbs (IndexedPair ll (AssignedGlobalWithExtra (Assignment enc lbl) args body ret))) = do
    bbs' <- mapM toAnnotatedBB bbs
    Function bbs' . IndexedPair ll . AnnotatedGlobal . fromCLE <$> M.lookup lbl clemap'  
    where
        toAnnotatedBB (BasicBlock n instrs term (IndexedPair bbll _)) = do 
            let instrs' = concatMap (fromMaybe . toAnnotatedInstr) instrs
            term' <- toAnnotatedTerm term
            return $ BasicBlock n instrs' term' (IndexedPair bbll UnAnnotatedBasicBlock)  
        fromMaybe (Just x) = [x]
        fromMaybe Nothing = []
        toAnnotatedTerm (Terminator (IndexedPair tll (AssignedTerminator (Assignment _ tlbl)))) = 
            -- TODO: how to determine annotations here? below is definitely incorrect
            (\c -> Terminator $ IndexedPair tll $ AnnotatedTerm (fromCLEVar c) (fromCLEVar c)) <$> M.lookup tlbl clemap'
        toAnnotatedInstr (Instruction (IndexedPair ill (AssignedInstruction (Just (Assignment _ ilbl))))) =
            Instruction . IndexedPair ill . AnnotatedInstr . fromCLEVar <$> M.lookup ilbl clemap'
        toAnnotatedInstr (Instruction (IndexedPair _ (AssignedInstruction Nothing))) = Nothing
        clemap' = M.fromList (zip (label <$> clemap) clemap)
        fromCLEVar (CLE _ (CLEJSON (Just cdfs) level)) = VarType (level ++ "_E") $ S.fromList (remotelevel <$> cdfs)
        fromCLEVar (CLE _ (CLEJSON Nothing level)) = VarType (level ++ "_E") S.empty
        fromCLE (CLE _ (CLEJSON (Just cdfs) level)) = FunctionType (level ++ "_E") $ fromCDF <$> cdfs
        fromCLE (CLE _ (CLEJSON Nothing level)) = FunctionType (level ++ "_E") (fromMaybe flow)
        flow = do
            args' <- fmap (toFlow . json) <$> mapM (`M.lookup` clemap') (LM.label <$> args)
            body' <- toFlow . json <$> M.lookup (LM.label body) clemap' 
            ret' <- toFlow . json <$> M.lookup (LM.label ret) clemap' 
            return $ Flow enc args' body' ret'
        toFlow (CLEJSON (Just cdfs) _) = S.fromList (remotelevel <$> cdfs)
        toFlow _ = S.empty 
        fromCDF CDF {remotelevel, argtaints, codtaints, rettaints} = 
            Flow (remotelevel ++ "_E") 
                 (maybe [] (fmap toEnclaveSet) argtaints) 
                 (maybe S.empty toEnclaveSet codtaints) 
                 (maybe S.empty toEnclaveSet rettaints) 
        toEnclaveSet = S.fromList . fmap (++ "_E") 

main :: IO ()
main = do
    (bc, json, clemap) <- fmap matchArgs getArgs
    run bc json clemap
    where
        matchArgs [bc, json, clemap] = (bc, json, clemap)
        matchArgs _ = error "Wrong number of arguments"


