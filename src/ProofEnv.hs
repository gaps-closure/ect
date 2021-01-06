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
import qualified LLVM.AST.InlineAssembly as A
import qualified LLVM.AST.RMWOperation as A
import qualified LLVM.AST.IntegerPredicate as A
import qualified LLVM.AST.FloatingPointPredicate as A
import qualified LLVM.AST.ThreadLocalStorage as A
import qualified LLVM.AST.Float as A
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


data NonEmpty a = Colon a [a]

declareProofEnvType "ProofEnv"
  ["Bool"
  ,"Int"
  ,"Word"
  ,"Word32"
  ,"Word64"
  ,"ShortByteString"
  ]
  []
  [  [t| Either A.GroupID A.FunctionAttribute |]
   , [t| ([A.Parameter], Bool) |]
   , [t| (A.Constant, A.Name) |]
   , [t| (A.Operand, [A.ParameterAttribute]) |]
   , [t| (A.Operand, A.Name) |]
   , [t| NonEmpty A.Name |]
   , [t| Maybe Word32 |]
   , [t| Maybe ShortByteString |]
   , [t| Maybe A.Constant |]
   , [t| Maybe A.StorageClass |]
   , [t| Maybe A.UnnamedAddr |]
   , [t| Maybe A.Atomicity |]
   , [t| Maybe A.TailCallKind |]
   , [t| Maybe A.Name |]
   , [t| Maybe A.Operand |]
   , [t| Maybe A.Model |]
   , [t| A.Named A.Instruction |]
   , [t| A.Named A.Terminator |]
   , [t| [Either A.GroupID A.FunctionAttribute] |]
   , [t| [(A.Constant, A.Name)] |]
   , [t| [(A.Operand, [A.ParameterAttribute])] |]
   , [t| [(A.Operand, A.Name)] |]
   , [t| [A.Named A.Instruction] |]
   , [t| [Word32] |]
   , [t| [A.Constant] |]
   , [t| [A.BasicBlock] |]
   , [t| [A.Parameter] |]
   , [t| [A.LandingPadClause] |]
   , [t| [A.Name] |]
   , [t| [A.Operand] |]
   , [t| [A.ParameterAttribute] |]
   , [t| [A.Type] |]
   , [t| A.AddrSpace |]
   , [t| A.CallingConvention |]
   , [t| A.Constant |]
   , [t| A.StorageClass |]
   , [t| A.SomeFloat |]
   , [t| A.FloatingPointPredicate |]
   , [t| A.FunctionAttribute |]
   , [t| A.GroupID |]
   , [t| A.BasicBlock |]
   , [t| A.Global |]
   , [t| A.Parameter |]
   , [t| A.UnnamedAddr |]
   , [t| A.Dialect |]
   , [t| A.InlineAssembly |]
   , [t| A.Atomicity |]
   , [t| A.FastMathFlags |]
   , [t| A.Instruction |]
   , [t| A.LandingPadClause |]
   , [t| A.MemoryOrdering |]
   , [t| A.SynchronizationScope |]
   , [t| A.TailCallKind |]
   , [t| A.Terminator |]
   , [t| A.IntegerPredicate |]
   , [t| A.Linkage |]
   , [t| A.Name |]
   , [t| A.CallableOperand |]
   , [t| A.Operand |]
   , [t| A.ParameterAttribute |]
   , [t| A.RMWOperation |]
   , [t| A.Model |]
   , [t| A.FloatingPointType |]
   , [t| A.Type |]
   , [t| A.Visibility |]  
  ]
