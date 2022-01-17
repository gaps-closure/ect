{-# LANGUAGE TemplateHaskell #-}

{-| The Proof Environment: Information about LLVM types in Z3-land
    used to create and compare the equivalent types during proof steps.

This enviromment is threaded through the Proof Monad via a @ReaderT@.
See 'ProofM.fromEnv'

Only one of these objects is ever created. However, Template Haskell insists
that the initialization of that object be done elsewhere ("InitialEnv") since
the code for initializing it depends on what's generated here.

This code relies on "Z3TypeGenerator.hs", which must be in a distinct file
since Template Haskell functions can't operate on code within the file that
defines them.

-}

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

-- | Information about an LLVM type implemented in Z3-land
data Z3Type =
  Z3Type { sort :: !Sort -- ^ Z3 sort for the type
         , equivFunc :: !FuncDecl -- ^ Z3 function for determining equivalence
         }

-- | Information about the LLVM type in Z3 land:
-- Its constructor function, name, and the sort and equivalence
-- checking function
type Z3Constructor = (FuncDecl, String, Z3Type )

-- | A replacement for the built-in @NonEmpty@ list type.  This
-- uses a named constructor rather than the @:-@ infix constructor
data NonEmpty a = Colon a [a]

{-| Non-changing references to all the Z3 sorts and constructor functions
for all the LLVM types.  Generated by 'declareProofEnvType'

A Z3 'Sort' is prefixed by @s_@; a 'Z3Constructor' is prefixed by @c_@ and
an abbreviated (capitals-only) version of the name of the type.  See 'typeName'

@
data ProofEnv = ProofEnv { s_Bool :: !Sort
                         , s_Maybe_StorageClass :: !Sort
                         , c_MSC_Nothing_StorageClass :: !Z3Constructor
                         , c_MSC_Just_StorageClass :: !Z3Constructor
                         , s_StorageClass :: !Sort
                         , c_SC_Import :: !Z3Constructor
                         , c_SC_Export :: !Z3Constructor ... }
@

Note that here, the order of sorts and types does not matter.
See 'declareProofEnvType'

This list of types was generated by the @printTypes@ executable using
'requiredTypes' and then manually tweaked.
-}

genProofEnvDecl "ProofEnv"
  ["Bool"
  ,"Int"
  ,"Integer"
  ,"Word"
  ,"Word16"
  ,"Word32"
  ,"Word64"
  ,"ByteString"
  ,"ShortByteString"
  ,"Float"
  ,"Double"
  ]
  [  [t| Either A.GroupID A.FunctionAttribute |]
   , [t| ([A.Parameter], Bool) |]
   , [t| (A.Constant, A.Name) |]
   , [t| (A.Operand, [A.ParameterAttribute]) |]
   , [t| (A.Operand, A.Name) |]
   , [t| NonEmpty A.Name |]
   , [t| Maybe Word32 |]
   , [t| Maybe ShortByteString |]
   , [t| Maybe A.Type |]
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
   , [t| [A.FunctionAttribute] |]
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
