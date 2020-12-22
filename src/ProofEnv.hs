{-# LANGUAGE TemplateHaskell #-}

module ProofEnv where

import Z3TypeGenerator

import Z3.Monad

import qualified LLVM.AST as A
import qualified LLVM.AST.DLL as A (StorageClass(..))
import qualified LLVM.AST.AddrSpace as A
import qualified LLVM.AST.Visibility as A
import qualified LLVM.AST.Linkage as A
import qualified LLVM.AST.CallingConvention as A
import qualified LLVM.AST.ParameterAttribute as A
import qualified LLVM.AST.FunctionAttribute as A
import qualified LLVM.AST.Constant as A
import Data.ByteString.Short (ShortByteString)
import Data.Word (Word32)


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

declareProofEnvType "ProofEnv"
  ["Bool"
  ,"Int"
  ,"String"
  ,"Word32"
  ,"Word"
  ,"Word64"
  ,"ShortByteString"
  ]
  [ {- ([t| A.Type |], ["T_VoidType"
                  ,"T_IntegerType"
                  ,"T_PointerType"])
  , -} ([t| A.Global |], ["G_Function"])
  ]
  [[t| A.Name |]
  ,[t| A.Type |]
  ,[t| [A.Type] |]
  ,[t| Maybe Word32 |]
  ,[t| A.AddrSpace |]
  ,[t| A.Visibility |]
  ,[t| A.StorageClass |]
  ,[t| Maybe A.StorageClass |]
  ,[t| Maybe ShortByteString |]
  ,[t| A.Linkage |]
  ,[t| A.CallingConvention |]
  ,[t| A.ParameterAttribute |]
  ,[t| [A.ParameterAttribute] |]
  ,[t| A.Parameter |]
  ,[t| [A.Parameter] |]
  ,[t| ([A.Parameter], Bool) |]
  ,[t| A.GroupID |]
  ,[t| A.FunctionAttribute |]
  ,[t| Either A.GroupID A.FunctionAttribute |]
  ,[t| [Either A.GroupID A.FunctionAttribute] |]
  ,[t| [A.BasicBlock] |]
  ,[t| Maybe A.Constant |]
  ,[t| (ShortByteString, A.MDRef A.MDNode) |]
  ,[t| [(ShortByteString, A.MDRef A.MDNode)] |]
  ]
