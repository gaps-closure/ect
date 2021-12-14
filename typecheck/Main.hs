{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
module Main where

import System.Environment (getArgs)
import LLVM ( moduleAST, withModuleFromBitcode, File(File) )
import LLVM.Context (withContext)
import qualified LLVM.AST as LL
import TypeCheck
    ( convertName, wrapGlobal, Global(..), LLWrapper(WrapGlobal), (&) )
import Data.Aeson ( decode )
import Data.ByteString ( readFile )
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as LBS
import Prelude hiding (readFile)
import qualified Data.Map as M
import LLMap (GlobalDesc, zipGlobal, wrapGlobalDesc, IndexedAssignment)
import qualified Data.Bifunctor
import LLVM.AST.Global (name)
import Data.Maybe ( fromJust, isJust )

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


run :: FilePath -> FilePath -> IO ()
run bc json = do
    globs <- globals <$> ast bc
    let wrapped = fmap wrapGlobal globs
    let named = M.fromList $ zip (fmap nameOf wrapped) wrapped
    llmap <- fromJust . llmapJson <$> readFile json
    let zipped = filterMaybe $ M.intersectionWith zipGlobal named llmap
    print $ M.lookup (LL.mkName "get_b") zipped
    where
        filterMaybe = fmap fromJust . M.filter isJust 

main :: IO ()
main = do
    (bc, json) <- fmap matchArgs getArgs
    run bc json
    where
        matchArgs [bc, json] = (bc, json)
        matchArgs _ = error "Wrong number of arguments"


