{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE LambdaCase #-}
module Main where

import System.Environment (getArgs)
import Data.Maybe ( fromJust, isJust )
import Data.Bifunctor (first)
import qualified Data.Map as M

import Data.Aeson (decode)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as LBS

import LLVM ( moduleAST, withModuleFromBitcode, File(File) )
import LLVM.Context (withContext)
import qualified LLVM.AST as LL

import TypeCheck
import LLMap
import CLEMap hiding (CLEMap)
import Convert
import qualified Data.Set as S

loadBC :: FilePath -> IO LL.Module
loadBC bc = withContext $ \c -> withModuleFromBitcode c (File bc) moduleAST

globalsFromModule :: LL.Module -> [LL.Global]
globalsFromModule = concatMap globalsOnly . LL.moduleDefinitions
    where
        globalsOnly (LL.GlobalDefinition g) = [g]
        globalsOnly _ = []

wrapGlobals :: [LL.Global] -> [Global LLWrapper]
wrapGlobals = fmap wrap

llmapJson :: BS.ByteString -> Maybe (M.Map LL.Name (Global IndexedAssignment))
llmapJson jsonsrc =
    fmap (fmap wrapGlobalDesc . convertKeys)
        (decode (LBS.fromStrict jsonsrc) :: Maybe (M.Map String GlobalDesc))
    where
        convertKeys = M.fromList . fmap (first nameFromString) . M.toList

loadLLMap :: FilePath -> IO (Maybe (M.Map LL.Name (Global IndexedAssignment)))
loadLLMap = fmap llmapJson . BS.readFile

loadCLEMap :: FilePath -> IO (Maybe CLEMap)
loadCLEMap = fmap (fmap toMap . decode . LBS.fromStrict) . BS.readFile
    where
        toMap m = M.fromList (zip (CLEMap.label <$> m) (CLEMap.json <$> m))

run ::
    [Global LLWrapper] ->
    M.Map LL.Name (Global IndexedAssignment) ->
    CLEMap ->
    IO ()
run globals llmap clemap = mapM_ print $ tc <$> M.keys annotated
    where
        tc n = (n, runTc ctx . checkGlobal <$> M.lookup n annotated)
        named = M.fromList $ zip (nameOf <$> globals) globals
        zipped = filterMaybe $ M.intersectionWith zipGlobal named llmap
        annotated = M.mapMaybe (convert clemap) zipped   
        globalMap = (\case 
                Global (_ :& (AnnotatedGlobal ty)) -> ty
                Function _ (_ :& (AnnotatedGlobal ty)) -> ty 
            ) <$> annotated  
        ctx = mkContext globalMap (S.fromList ["orange", "purple", "green"])
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




