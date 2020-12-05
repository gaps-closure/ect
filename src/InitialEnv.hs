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

-- | Build an equivalence checking function for a given Z3 type
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

mkSort :: String -> [(String, [(String, Maybe Sort)])] -> ProofM Sort
mkSort sortName constrs = do
  constructors <- T.sequence $ map (uncurry mkConstr) constrs
  name         <- mkStringSymbol sortName
  mkDatatype name constructors

mkAccessor :: String -> Maybe Sort -> ProofM (Symbol, Maybe Sort, Int)
mkAccessor name dt = do
  accessorName <- mkStringSymbol name
  return (accessorName, dt, 0)

mkConstr :: String -> [(String, Maybe Sort)] -> ProofM Constructor
mkConstr name fields = do
  constName  <- mkStringSymbol name
  recognizer <- mkStringSymbol $ "is_" ++ name
  accessors  <- T.sequence $ map (uncurry mkAccessor) fields
  mkConstructor constName recognizer accessors


mkZ3Constructors :: Sort -> String -> [(String, [(String, Maybe Sort)])]
         -> ProofM (Sort, [Z3Constructor])
mkZ3Constructors bool name fields = do
  sort <- mkSort name fields
  equivFunc <- mkEquivFunc bool sort name
  let z3Type = Z3Type{..}
  constructors <- getDatatypeSortConstructors sort
  return $ (sort, zipWith3 (,,) constructors (map fst fields) (repeat z3Type))


initialEnv :: ProofM ProofEnv
initialEnv = do
  s_Bool <- mkBoolSort
  s_Int <- mkIntSort
  s_String <- mkStringSort
  s_Word32 <- mkBvSort 32
  $(initEnv "ProofEnv"
        [z3Constructors [| s_Bool |] ''A.AddrSpace
        ,z3ConstructorsOnly [| s_Bool |] ''A.Type ["VoidType"
                                                  ,"IntegerType"
                                                  ,"PointerType"]
        ,z3Constructors [| s_Bool |] ''A.Visibility
        ,z3Constructors [| s_Bool |] ''A.StorageClass
        ,z3Constructors [| s_Bool |] ''A.Linkage
        ,z3Constructors [| s_Bool |] ''A.CallingConvention
        ])
