{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE NamedFieldPuns #-}
module Main where

import System.Environment (getArgs)
import LLVM ( moduleAST, withModuleFromBitcode, File(File) )
import LLVM.Context (withContext)
import qualified LLVM.AST as LL
import TypeCheck 
import Data.Aeson ( decode )
import Data.ByteString ( readFile )
import Data.ByteString.Lazy ( fromStrict )
import Prelude hiding (readFile)
import qualified Data.Map as M
import LLMap (GlobalDesc, zipGlobal)
import qualified Data.Bifunctor
import LLVM.AST.Global (name)
import Data.Functor.Identity

main :: IO ()
main = do
    (bc, json) <- fmap matchArgs getArgs
    (concatMap globalsOnly . LL.moduleDefinitions -> globals) <- withContext $ \c -> withModuleFromBitcode c (File bc) moduleAST
    let wrapped = fmap convert globals
    let named = M.fromList (toPair <$> wrapped)
    jsonsrc <- readFile json
    let json' = fmap convert $ convertKeys $ maybe' (decode (fromStrict jsonsrc) :: Maybe (M.Map String GlobalDesc))  
    let zipped = M.intersectionWith zipGlobal named json' 
    print zipped 
    where
        matchArgs [bc, json] = (bc, json)
        matchArgs _ = error "Wrong number of arguments"

        globalsOnly (LL.GlobalDefinition g) = [g]
        globalsOnly _ = []

        convertKeys = M.fromList . fmap (Data.Bifunctor.first convert) . M.toList

        maybe' (Just x) = x
        maybe' _ = error "Could not parse json"

        toPair global@(Global (Identity g) _ _) = (getName g, global)

        getName LL.GlobalVariable { name, .. } = name
        getName LL.Function { name, .. } = name
        getName LL.GlobalAlias { name, .. } = name