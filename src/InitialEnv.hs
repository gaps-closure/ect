{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskell #-}

module InitialEnv where

import qualified Data.Traversable as T

import ProofM

import ProofEnv

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
--import Data.ByteString (ByteString)
import Data.Word (Word32)
import Data.List (zipWith4)
--import Control.Monad (zipWithM)


-- | Build an equivalence checking function for a given Z3 type.
--   Needs the bool sort
mkEquivFunc :: Sort -> Sort -> String -> ProofM FuncDecl
mkEquivFunc bool typ name = do
  equivType <- mkFreshFuncDecl ("equiv-" ++ name) [typ, typ] bool

  x  <- mkFreshConst "x" typ
  y  <- mkFreshConst "y" typ
  qx <- toApp x
  qy <- toApp y
  builtinEq <- mkEq x y
  eqType <- mkApp equivType [x, y]
  assert =<< mkForallConst [] [qx, qy] =<< mkEq builtinEq eqType

  return equivType


-- | Build an equivalence checking function for a given Z3 type.
-- 
mkEquivFunc2 :: Sort -- ^ Z3's Boolean sort
             -> Sort -- ^ Sort for which the function is being generated
             -> String -- ^ Name of the type
             -> [(String, [(String, Maybe Sort)])] -- ^ Fields
             -> ProofM FuncDecl
mkEquivFunc2 bool sort name ctors = do
  equivType <- mkFreshFuncDecl ("equiv-" ++ name) [sort, sort] bool

  x  <- mkFreshConst "x" sort
  y  <- mkFreshConst "y" sort
  qx <- toApp x
  qy <- toApp y
  eqType <- mkApp equivType [x, y]

  recognizers <- getDatatypeSortRecognizers sort
  accessors <- getDatatypeSortConstructorAccessors sort

  let fieldEquiv f1 f2 (_, Just srt) = do
        equivFunction <- getEquivFunction srt
        case equivFunction of
          Just f -> mkApp f [f1, f2]
          Nothing -> mkEq f1 f2 -- Use primitive equality if no special one is defined
      fieldEquiv f1 f2 (_, Nothing) = do
        mkApp equivType [f1, f2] -- Recursive call

  let ctorEquiv (_, fields) recognizer accs = do
        rx <- mkApp recognizer [x]
        ry <- mkApp recognizer [y]
        accx <- mapM (\a -> mkApp a [x]) accs
        accy <- mapM (\a -> mkApp a [y]) accs
        fieldsEq <- sequence $ zipWith3 fieldEquiv accx accy fields
        mkAnd $ [rx, ry] ++ fieldsEq

  ctorPredicates <- sequence $ zipWith3 ctorEquiv ctors recognizers accessors
  equivBody <- mkOr ctorPredicates
    
  assert =<< mkForallConst [] [qx, qy] =<< mkEq eqType equivBody

  return equivType

mkSort :: String -> [(String, [(String, Maybe Sort)])] -> ProofM Sort
mkSort sortName constrs = do
  let unMutual (n, as) = (n, map unJust as)
      unJust (a, Just srt) = (a, Right srt)
      unJust (a, Nothing) = (a, Left 0)
  constructors <- T.sequence $ map (uncurry mkConstr . unMutual) constrs
  name         <- mkStringSymbol sortName
  mkDatatype name constructors

mkMutualSorts :: [String]
              -> [[(String, [(String, Either Int Sort)])]]
              -> ProofM [Sort]
mkMutualSorts sortNames constrsSet = do
  let mkConstrs cs = T.sequence $ map (uncurry mkConstr) cs
  constructorsSet <- T.sequence $ map mkConstrs constrsSet
  names <- T.sequence $ map mkStringSymbol sortNames
  mkDatatypes names constructorsSet

mkAccessor :: String -> Either Int Sort -> ProofM (Symbol, Maybe Sort, Int)
mkAccessor name dt = do
  accessorName <- mkStringSymbol name
  return $ case dt of
    Right t -> (accessorName, Just t, 0) -- Number ignored
    Left n -> (accessorName, Nothing, n)

mkConstr :: String -> [(String, Either Int Sort)] -> ProofM Constructor
mkConstr name fields = do
  constName  <- mkStringSymbol name
  recognizer <- mkStringSymbol $ "is_" ++ name
  accessors  <- T.sequence $ map (uncurry mkAccessor) fields
  mkConstructor constName recognizer accessors

-- | For a given algebraic type, construct a sort for in Z3-land
-- along with associated data constructors and an equivalence function
mkZ3Constructors :: Sort -- ^ Z3's Boolean sort
                 -> String -- ^ Name of the type
                 -> [(String, [(String, Maybe Sort)])]
                 -- ^ Data constructors with fields
                 -> ProofM (Sort, [Z3Constructor])
                 -- ^ The generated Z3 sort and information about its data constructors
mkZ3Constructors bool name fields = do
  sort <- mkSort name fields
  equivFunc <- mkEquivFunc2 bool sort name fields
  let z3Type = Z3Type{..}
  constructors <- getDatatypeSortConstructors sort
  saveEquivFunction sort equivFunc
  return (sort, zip3 constructors (map fst fields) (repeat z3Type))

mkMutualZ3Constructors :: Sort
                       -> [String]
                       -> [[(String, [(String, Either Int Sort)])]]
                       -> ProofM [(Sort, [Z3Constructor])]
mkMutualZ3Constructors bool names fieldsSet = do
  sorts <- mkMutualSorts names fieldsSet
  equivFuncs <- T.sequence $ zipWith (mkEquivFunc bool) sorts names
  constructorsSet <- T.sequence $ map getDatatypeSortConstructors sorts
  let z3Types = zipWith (\s eq -> Z3Type s eq) sorts equivFuncs
      merge srt cs fs z3t = (srt, zipWith3 (,,) cs (map fst fs) (repeat z3t))
  return $ zipWith4 merge sorts constructorsSet fieldsSet z3Types

-- | Initialize Z3 types, etc. that will be made available during
--   execution of the proof monad
initialEnv :: ProofM ProofEnv
initialEnv = do
  s_Bool <- mkBoolSort
  s_Int <- mkIntSort
  s_Word16 <- mkBvSort 16
  s_Word32 <- mkBvSort 32
  let s_Word = s_Word32
  s_Word64 <- mkBvSort 64
  let s_Integer = s_Int
  s_ShortByteString <- mkStringSort  
  let s_ByteString = s_ShortByteString
  let s_Float = s_Bool -- FIXME
      s_Double = s_Bool -- FIXME
      s_InstructionMetadata = s_Bool
      s_List_Tup2_ShortByteString_MDRef_MDNode = s_Bool
      s_Metadata = s_Bool
  $(initEnv "ProofEnv" $
    map (z3Constructors [| s_Bool |]) [ [t| A.Visibility |]
                                      , [t| A.FloatingPointType |]
                                      , [t| A.Model |]
                                      , [t| A.RMWOperation |]
                                      , [t| A.Linkage |]
                                      , [t| A.IntegerPredicate |]
                                      , [t| A.TailCallKind |]
                                      , [t| A.SynchronizationScope |]
                                      , [t| A.MemoryOrdering |]
                                      , [t| A.Atomicity |]
                                      , [t| A.Dialect |]
                                      , [t| A.UnnamedAddr |]
                                      , [t| A.FloatingPointPredicate |]
                                      , [t| A.StorageClass |]
                                      , [t| A.GroupID |]
                                      , [t| A.FastMathFlags |]
                                      , [t| A.Name |]
                                      , [t| A.ParameterAttribute |]
                                      , [t| A.AddrSpace |]
                                      , [t| A.CallingConvention |]
                                      , [t| A.SomeFloat |] ] ++
    [z3MutualConstructors [| s_Bool |] [ [t| [A.Type] |]
                                       , [t| A.Type |] ] ] ++
    map (z3Constructors [| s_Bool |]) [ [t| A.InlineAssembly |]
                                      , [t| [A.ParameterAttribute] |]
                                      , [t| A.Parameter |]
                                      , [t| [A.Name] |]
                                      , [t| [A.Parameter] |]
                                      , [t| [Word32] |]
                                      , [t| Maybe A.Model |]
                                      , [t| Maybe A.Name |] ] ++
    [z3MutualConstructors [| s_Bool |] [ [t| A.Constant |]
                                       , [t| [A.Constant] |] ]] ++
    map (z3Constructors [| s_Bool |]) [ [t| A.LandingPadClause |]
                                       , [t| [A.LandingPadClause] |]
                                       , [t| A.Operand |] ] ++
    map (z3Constructors [| s_Bool |]) [ [t| Maybe A.Operand |]
                                      , [t| [A.Operand] |]
                                      , [t| A.CallableOperand |]
                                      , [t| Maybe A.TailCallKind |]
                                      , [t| Maybe A.Atomicity |]
                                      , [t| Maybe A.UnnamedAddr |]
                                      , [t| Maybe A.StorageClass |]
                                      , [t| Maybe A.Constant |]
                                      , [t| Maybe ShortByteString |]
                                      , [t| Maybe Word32 |]
                                      , [t| A.FunctionAttribute |]
                                      , [t| NonEmpty A.Name |]
                                      , [t| (A.Operand, A.Name) |]
                                      , [t| [(A.Operand, A.Name)] |]
                                      , [t| (A.Operand, [A.ParameterAttribute]) |]
                                      , [t| [(A.Operand, [A.ParameterAttribute])] |]
                                      , [t| (A.Constant, A.Name) |]
                                      , [t| [(A.Constant, A.Name)] |]
                                      , [t| ([A.Parameter], Bool) |]
                                      , [t| Either A.GroupID A.FunctionAttribute |]
                                      , [t| [Either A.GroupID A.FunctionAttribute] |]
                                      , [t| A.Instruction |]
                                      , [t| A.Named A.Instruction |]
                                      , [t| [A.Named A.Instruction] |]
                                      , [t| A.Terminator |]
                                      , [t| A.Named A.Terminator |]
                                      , [t| A.BasicBlock |]
                                      , [t| [A.BasicBlock] |]
                                      , [t| A.Global |] ]
   )
