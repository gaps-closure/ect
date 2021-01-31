{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskell #-}

{-| Construction of the initial environment for constructing proofs:
    populating a @ProofEnv object

    Because Template Haskell doesn't allow you to see things you just
    generated, this needs the @ProofEnv type created first, hence this
    file is distict from and comes after 'ProofEnv.hs'.

-}
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
import Control.Monad (zipWithM)

mkEquivPrimFunc :: Sort -- ^ Z3's Boolean sort
                -> String -- ^ Name of the primitive type
                -> Sort -- ^ Sort of the primitive type being compared
                -> ProofM Z3Type
mkEquivPrimFunc boolSort name sort = do
  equivFunc <- mkFreshFuncDecl ("equiv-" ++ name) [sort, sort] boolSort
  
  x  <- mkFreshConst "x" sort
  y  <- mkFreshConst "y" sort
  qx <- toApp x
  qy <- toApp y
  eqType <- mkApp equivFunc [x, y]
  eqBody <- mkEq x y
  assert =<< mkForallConst [] [qx, qy] =<< mkEq eqType eqBody
  
  saveEquivFunction sort equivFunc

  return Z3Type{..}
                

{- | Construct the declaration of an equivalence checking function
     and record it in the proof environment.

For something like @[Type]@, this generates a declaration like

@
(declare-fun equiv-List_Type!63 (List_Type List_Type) Bool)
@

-}
mkEquivFuncDecl :: Sort -- ^ Z3's Boolean sort
                -> Sort -- ^ Sort of the type being compared
                -> String -- ^ Name of the type
                -> ProofM FuncDecl
mkEquivFuncDecl bool sort name = do
  equivDecl <- mkFreshFuncDecl ("equiv-" ++ name) [sort, sort] bool
  saveEquivFunction sort equivDecl
  return equivDecl

{- | Construct the definition of an equivalence checking function

For something like @[Type]@, this generates an assertion/definition
like

@
(assert (forall ((x!65 List_Type) (y!66 List_Type))
  (! (let ((a!1 (or (and ((_ is (Nil_Type () List_Type)) x!65)
                         ((_ is (Nil_Type () List_Type)) y!66))
                    (and ((_ is (Cons_Type (Type List_Type) List_Type)) x!65)
                         ((_ is (Cons_Type (Type List_Type) List_Type)) y!66)
                         (equiv-Type!64 (head x!65) (head y!66))
                         (equiv-List_Type!63 (tail x!65) (tail y!66))))))
       (= (equiv-List_Type!63 x!65 y!66) a!1))
     :weight 0)))
@

where the body is an OR of ANDs.  There is one OR term per data
constructor.  Each AND term checks the recognizers for both objects and
@equiv-@ functions for corresponding fields of the two objects.

-}
mkEquivFuncDef :: Sort -- ^ Sort being compared
               -> [(String, [(String, Maybe Sort)])] -- ^ Fields
               -> FuncDecl -- ^ Declaration of the equivalance function
               -> ProofM ()
mkEquivFuncDef sort ctors equivFunc = do 
  x  <- mkFreshConst "x" sort
  y  <- mkFreshConst "y" sort
  qx <- toApp x
  qy <- toApp y
  eqType <- mkApp equivFunc [x, y]

  recognizers <- getDatatypeSortRecognizers sort
  accessors <- getDatatypeSortConstructorAccessors sort

  let fieldEquiv f1 f2 (_, Just srt) = do
        equivFunction <- getEquivFunction srt
        case equivFunction of
          Just f -> mkApp f [f1, f2]
          Nothing -> mkEq f1 f2 -- Use primitive equality if no special one is defined
      fieldEquiv f1 f2 (_, Nothing) = do
        mkApp equivFunc [f1, f2] -- Recursive call

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

  return ()

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
-- along with associated data constructors and an equivalence function.
-- Uses 'mkEquivFuncDecl' and 'mkEquivFuncDef'
mkZ3Constructors :: Sort -- ^ Z3's Boolean sort
                 -> String -- ^ Name of the type
                 -> [(String, [(String, Maybe Sort)])]
                 -- ^ Data constructors with fields
                 -> ProofM (Z3Type, [Z3Constructor])
                 -- ^ The generated Z3 sort and information about its data constructors
mkZ3Constructors bool name fields = do
  sort <- mkSort name fields
  equivFunc <- mkEquivFuncDecl bool sort name
  mkEquivFuncDef sort fields equivFunc
  let z3Type = Z3Type{..}
  constructors <- getDatatypeSortConstructors sort
  return (z3Type, zip3 constructors (map fst fields) (repeat z3Type))

-- | For a group of potentially mutually recursive algebraic types,
-- declare and define equivalence functions for each.  Uses
-- 'mkEquivFuncDecl' and 'mkEquivFuncDef'
mkMutualZ3Constructors :: Sort
                       -> [String]
                       -> [[(String, [(String, Either Int Sort)])]]
                       -> ProofM [(Z3Type, [Z3Constructor])]
mkMutualZ3Constructors bool names fieldsSet = do
  sorts <- mkMutualSorts names fieldsSet
  equivFuncs <- zipWithM (mkEquivFuncDecl bool) sorts names
  let fieldsSet' = map (map fixEquiv) fieldsSet
      fixEquiv (ctor, fields) = (ctor, map fixField fields)
      fixField (field, Left n) = (field, Just (sorts !! n))
      fixField (field, Right s) = (field, Just s)
  sequence_ $ zipWith3 mkEquivFuncDef sorts fieldsSet' equivFuncs
  constructorsSet <- T.sequence $ map getDatatypeSortConstructors sorts
  let z3Types = zipWith (\s eq -> Z3Type s eq) sorts equivFuncs
      merge cs fs z3t = (z3t, zip3 cs (map fst fs) (repeat z3t))
  return $ zipWith3 merge constructorsSet fieldsSet z3Types

-- | Initialize Z3 types, etc. that will be made available during
--   execution of the proof monad
initialEnv :: ProofM ProofEnv
initialEnv = do
  s_Bool <- mkBoolSort
  t_Bool <- mkEquivPrimFunc s_Bool "Bool" s_Bool
  t_Int <- mkEquivPrimFunc s_Bool "Int" =<< mkIntSort
  let t_Integer = t_Int
  t_Word16 <- mkEquivPrimFunc s_Bool "Word16" =<< mkBvSort 16
  t_Word32 <- mkEquivPrimFunc s_Bool "Word32" =<< mkBvSort 32
  t_Word <- mkEquivPrimFunc s_Bool "Word" =<< mkBvSort 32
  t_Word64 <- mkEquivPrimFunc s_Bool "Word64" =<< mkBvSort 64
  t_ShortByteString <- mkEquivPrimFunc s_Bool "ShortByteString" =<< mkStringSort  
  let t_ByteString = t_ShortByteString
  let t_Float = t_Bool -- FIXME
      t_Double = t_Bool -- FIXME
      t_InstructionMetadata = t_Bool
      t_List_Tup2_ShortByteString_MDRef_MDNode = t_Bool
      t_Metadata = t_Bool -- FIXME
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
