{-# LANGUAGE TemplateHaskell #-}

module ProofEnv where

import Z3TypeGenerator

import Z3.Monad

import qualified LLVM.AST as A
import qualified LLVM.AST.DLL as A (StorageClass(..))
import qualified LLVM.AST.AddrSpace as A
import qualified LLVM.AST.Visibility as A
import qualified LLVM.AST.Linkage as A
--import qualified LLVM.AST.AddrSpace as A
import qualified LLVM.AST.CallingConvention as A
--import qualified LLVM.AST.Global as A


----------------------------------------------------------------------
--
-- The Proof Environment: Z3 definitions that can be used in proof steps
-- These are collected here and threaded through the Proof Monad via a ReaderT
--
-- Access these with "fromEnv"

-- | Information about an LLVM type implemented in Z3-land
data Z3Type = Z3Type { sort :: !Sort
                     , equivFunc :: !FuncDecl }

-- | A constructor function and more information about the type in Z3-land
type Z3Constructor = (FuncDecl, String, Z3Type)

-- | Run the Template Haskell code to generate
-- data ProofEnv = ProofEnv { s_Bool :: !Sort
--                          , s_StorageClass :: !Sort
--                          , c_Import :: !Z3Constructor
--                          , c_Export :: !Z3Constructor ... }

declareProofEnvType [''A.AddrSpace
                    ,''A.Type
                    ,''A.Visibility
                    ,''A.StorageClass
                    ,''A.Linkage
                    ,''A.CallingConvention]

{-
data ProofEnv = ProofEnv
  { z3_Bool :: !Sort
  , z3_StorageClass :: !Sort
  , z3_Import :: !Z3Constructor
  , z3_Export :: !Z3Constructor
  }
-}
