{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskell #-}

module InitialEnv (initialEnv) where

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
import Data.ByteString.Short (ShortByteString)
import Data.Word (Word32)
import Data.List (zipWith4)

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

mkZ3Constructors :: Sort
                 -> String
                 -> [(String, [(String, Maybe Sort)])]
                 -> ProofM (Sort, [Z3Constructor])
mkZ3Constructors bool name fields = do
  sort <- mkSort name fields
  equivFunc <- mkEquivFunc bool sort name
  let z3Type = Z3Type{..}
  constructors <- getDatatypeSortConstructors sort
  return $ (sort, zipWith3 (,,) constructors (map fst fields) (repeat z3Type))

mkMutualZ3Constructors :: Sort
                       -> [String]
                       -> [[(String, [(String, Either Int Sort)])]]
                       -> ProofM [(Sort, [Z3Constructor])]
mkMutualZ3Constructors bool names fieldsSet = do
  sorts <- mkMutualSorts names fieldsSet
  equivFuncs <- T.sequence $ zipWith (\s n -> mkEquivFunc bool s n) sorts names
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
  s_String <- mkStringSort
  s_Word32 <- mkBvSort 32
  let s_Word = s_Word32
  s_Word64 <- mkBvSort 64
  s_ShortByteString <- mkStringSort
  let s_BasicBlock   = s_Bool -- FIXME
      s_Constant     = s_Bool -- FIXME
      s_MDRef_MDNode = s_Bool -- FIXME
  $(initEnv "ProofEnv" $
        [ z3Constructors [| s_Bool |] [t| A.AddrSpace |]
        , z3Constructors [| s_Bool |] [t| A.Name |]
        , z3Constructors [| s_Bool |] [t| A.FloatingPointType |]
        , z3MutualConstructors [| s_Bool |] [ [t| A.Type   |]
                                            , [t| [A.Type] |] ]
        ] ++
        map (z3Constructors [| s_Bool |])
            [[t| Maybe Word32 |]
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
            ] ++
     [ z3ConstructorsOnly [| s_Bool |] [t| A.Global |] ["G_Function"]]
   )
