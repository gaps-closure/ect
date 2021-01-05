{-# LANGUAGE LambdaCase #-}

{-

Template Haskell code for generating various Z3-type-related boilerplate

Debug by adding to package.yaml

  ghc-options:
  - -ddump-splices  # For debugging Template Haskell:
  - -ddump-to-file  # more $(find . -name "*splices")

https://hackage.haskell.org/package/z3-408.2/docs/Z3-Monad.html

https://z3prover.github.io/api/html/group__capi.html

https://hackage.haskell.org/package/template-haskell-2.16.0.0/docs/Language-Haskell-TH.html

-}

module Z3TypeGenerator where

import Data.Char (isUpper)
import Language.Haskell.TH

import Data.List (intercalate)

import qualified Data.Set as S
import Data.Foldable (foldrM)

-- | Prefixes inserted before the name of each Z3 sort (type),
-- and data constructor
sortPrefix, constructorPrefix :: String
sortPrefix = "s_"
constructorPrefix = "c_"
-- | Name of the proof environment type and data constructor

-- | Create a do block that initializes all the fields of the
-- initial proof environment.  Rather than emitting something like
-- ProofEnv{..}, this generates ProofEnv { s_Int = s_Int ; s_Bool = s_Bool ;...}
-- because RecordWildCards doesn't work the way you'd want in Template Haskell
initEnv :: String -> [Q Stmt] -> Q Exp
initEnv envType stmts = do
  stmts' <- sequence stmts
  Just envTypeName <- lookupTypeName envType
  Just envDconName <- lookupValueName envType
  TyConI tyCon <- reify envTypeName
  let fieldExps = case tyCon of
          DataD _ _ _ _ [dCons] _ ->
            case dCons of
              RecC _ vbangs -> map fe vbangs
                 where fe (n, _, _) = (n, VarE $ mkName $ nameBase n)
              c -> error $ "unrecognized constructor " ++ show c
          t -> error $ "unrecognized type constructor " ++ show t
      envExpr = RecConE envDconName fieldExps
  return $ DoE $
    stmts' ++ [NoBindS $ AppE (VarE $ mkName "return") envExpr]


{-

data Eith a b = Left a
              | Right b
              | Both a b
              | Neither

Eith = DataD "Eith" ["a", "b"]  [NormalC "Left" [Var "a"]   (could also be RecC)
                                ,NormalC "Right" [Var "b"]
                                ,NormalC "Both" [Var "a", Var "b"]
                                ,NormalC "Neither" []]

Eith (Eith Int Bool) (Eith Bool Int)

Eith_Eith_Int_Bool_Eith_Bool_Int
  Left_Eith_Int_Bool_Eith_Bool_Int   Eith_Int_Bool
  Right_Eith_Int_Bool_Eith_Bool_Int  Eith_Bool_Int
  Both_Eith_Int_Bool_Eith_Bool_Int   Eith_Int_Bool Eith_Bool_Int
  Nothing_Eith_Int_Bool_Eith_Bool_Int

-}


-- | Bindings for type variables: the name to return for a type variable
type NameEnv = [(Name, String)]

-- | Return a text name for a specific type, e.g., "Maybe_Bool"
-- Assumes the type in question is monomorphic, i.e., that it does not
-- include any free type variables
typeName :: NameEnv -> Type -> String
typeName env (VarT n) = case lookup n env of
  Just s -> s
  Nothing -> error $ "undefined type variable " ++ show n
typeName _ (ConT n) = nameBase n
typeName env (AppT t1 t2) = typeName env t1 ++ "_" ++ typeName env t2
typeName _ ListT = "List"
typeName _ (TupleT n) = "Tup" ++ show n
typeName _ t = error $ "unsupported type " ++ show t

-- | For Z3, name of the type constructor, then, for each
-- data constructor, the name of the data constructor and a list
-- of field-name, field-type-name pairs
--
-- (top-type-name, [constructor])
-- where constructor = (constructor-name, [(field-name, field-type-name)])

type StringConstructors = [(String, [(String, String)])]
type StringTypeInfo = (String, StringConstructors)

-- | Add bound variables to a type environment
-- The length of formals and actuals should match, but this is not checked
extendEnv :: NameEnv -> [TyVarBndr] -> [String] -> NameEnv
extendEnv env formals actuals = env' ++ env
  where
    env' = zipWith newBind formals actuals
    newBind (PlainTV n) s = (n, s)
    newBind (KindedTV n _) s = (n, s)

-- | Derive constructor information for an algebraic data type
-- with the given name and constructors
monoConstructors :: NameEnv -> Name -> [Con] -> StringTypeInfo
monoConstructors env tCon dCons = (tConName, dConsInfo)
  where
    typePrefix = filter isUpper tConName ++ "_"
    typeSuffix = concatMap (\(_,n) -> "_" ++ n) env -- type variable bindings
    tConName = nameBase tCon ++ typeSuffix
    dConsInfo = map dConInfo dCons

    dConInfo (NormalC n bts) = (typePrefix ++ nameBase n ++ typeSuffix,
                                map (\(_,t) -> ("f", typeName env t)) bts)
    dConInfo (RecC n vbts) = (typePrefix ++ nameBase n ++ typeSuffix,
                       map (\(f,_,t) -> (nameBase f, typeName env t)) vbts)

    dConInfo dc = error $ "unsupported constructors " ++ show dc

-- | Return information about a monomorphic algebraic type
monoDec :: NameEnv -> Dec -> [String] -> Q StringTypeInfo
monoDec env (DataD _ tCon tVars _ dCons _) args =
  return $ monoConstructors (extendEnv env tVars args) tCon dCons
monoDec env (NewtypeD _ tCon tVars _ dCon _) args =
  return $ monoConstructors (extendEnv env tVars args) tCon [dCon]
monoDec env (TySynD name tVars ty) args = do
  (_, dConsInfo) <- monoType (extendEnv env tVars args) ty
  return ( nameBase name, dConsInfo ) -- FIXME?
monoDec _ i _ = error $ "expecting a type constructor; got " ++ show i

-- | A "monomorphized" version of the given type:
--
-- For an algebraic data type,
-- return its type constructor base name
-- the base names of all its data constructors,
-- and the names of the of each of its fields, if any
monoType :: NameEnv -> Type -> Q StringTypeInfo
monoType env ty = collect [] ty
  where
    collect args (AppT t1 t2) = collect (typeName env t2 : args) t1
    collect args (ConT n) = do
      reify n >>= \case
        TyConI dec -> monoDec env dec args
        i -> error $ "monoType: expecting a TyConI; got " ++ show i
    collect [arg] ListT = return (tCon, dConsInfo)
      where tCon = "List_" ++ arg
            dConsInfo = [("Nil_" ++ arg, [])
                        ,("Cons_" ++ arg, [("head", arg)
                                          ,("tail", tCon)])]
    collect args (TupleT n) = return (tCon, dConsInfo)
      where tCon = "Tup" ++ show n ++ concatMap ("_"++) args
            dConsInfo = [(tCon, fields)]
            fields = zipWith field args ([1..] :: [Int])
            field t fn = ("field" ++ show fn, t)
        
    collect _ t = error $ "monoType: expecting a type; got " ++ show t

-- | Only generate code for certain constructors
z3ConstructorsOnly :: Q Exp -> Q Type -> [String] -> Q Stmt
z3ConstructorsOnly boolSort typeE fields = do
  typeInfo <- algTypeInfoOnly typeE fields
  boolSortE <- boolSort
  return $ z3ConstructorsStmt boolSortE typeInfo

-- | $(z3Constructors [| s_BoolType |] [t| A.AddrSpace |]
z3Constructors :: Q Exp -> Q Type -> Q Stmt
z3Constructors boolSort ty = do
  boolSortE <- boolSort
  typ <- ty
  typeInfo <- monoType [] typ
  return $ z3ConstructorsStmt boolSortE typeInfo

varsFor :: StringTypeInfo -> Pat
varsFor (tConName, dConsNames) = TupP [sortP, dConsPs]
  where
    sortP = VarP $ mkName $ sortPrefix ++ tConName
    dConsPs = ListP $
         map (\(n, _) -> VarP $ mkName $ constructorPrefix ++ n) dConsNames

-- | $(z3MutualConstructors [| s_BoolType |] [ [t| A.Type |]
--                                           , [t| [A.Type] |] ]
z3MutualConstructors :: Q Exp -> [Q Type] -> Q Stmt
z3MutualConstructors boolSort tys = do
  boolSortE <- boolSort
  typs <- sequence tys
  tinfos <- mapM (monoType []) typs
  let ourSorts = zipWith (\(a,_) b -> (a, b)) tinfos [(0::Integer)..]
      vars = ListP $ map varsFor tinfos
      tConNames = ListE $ map (LitE . StringL . fst) tinfos
      dConPairss = ListE $ map (ListE . map toDCons . snd) tinfos

      toDCons (dc, fields) = TupE [ LitE (StringL dc)
                                  , ListE (map toField fields) ]

      toField (fn, ft) = TupE [LitE (StringL fn), typE]
        where
          typE = case lookup ft ourSorts of
            Nothing -> rightE $ VarE $ mkName (sortPrefix ++ ft)
            Just n -> leftE $ LitE $ IntegerL n
          rightE = AppE $ ConE $ mkName "Right"
          leftE = AppE $ ConE $ mkName "Left"

  return $ BindS vars (foldl1 AppE [ VarE (mkName "mkMutualZ3Constructors")
                                   , boolSortE
                                   , tConNames
                                   , dConPairss ])


z3ConstructorsStmt :: Exp -> StringTypeInfo -> Stmt
z3ConstructorsStmt boolSortE (tConName, dConsNames) =
   BindS vars (foldl1 AppE [VarE (mkName "mkZ3Constructors")
                                   ,boolSortE
                                   ,tConNameE
                                   ,dConPairsE])
    where
      tConNameE = LitE $ StringL tConName

      vars = varsFor (tConName, dConsNames)

      toDCPair (dc, fields) = TupE [LitE (StringL dc)
                                   ,ListE (map toField fields)]
      justE = AppE (ConE $ mkName "Just")
      nothingE = ConE $ mkName "Nothing"

      toField (fn,ft) = TupE [LitE (StringL fn), typE]
        where typE = if ft == tConName then nothingE -- Handle self-recursive
                     else justE $ VarE $ mkName $ sortPrefix ++ ft

      dConPairsE = ListE $ map toDCPair dConsNames

algTypeInfoOnly :: Q Type -> [String] -> Q StringTypeInfo
algTypeInfoOnly actualType fields = do
  ty <- actualType
  (tConsName, dConsNames') <- monoType [] ty
  let dConsNames = filter (\(dc, _) -> elem dc fields) dConsNames'
  return (tConsName, dConsNames)

-- Create
--
-- data ProofEnv = ProofEnv { ... }

declareProofEnvType :: String -> [String] -> [(Q Type, [String])] -> [Q Type]
                    -> Q [Dec]
declareProofEnvType proofEnvType primitives limitedTypes types = do
  let sBang = Bang NoSourceUnpackedness SourceStrict
      sortField n = (mkName $ sortPrefix ++ n, sBang, ConT $ mkName "Sort")
      ctorField n = (mkName $ constructorPrefix ++ n, sBang
                    , ConT $ mkName "Z3Constructor")
      primitiveFields = map sortField primitives
      infoToFields (tCon, dCons) = sortField tCon : map (ctorField . fst) dCons
      proofEnvTypeName = mkName proofEnvType
  limitedFields <- concatMap infoToFields <$>
                   mapM (uncurry algTypeInfoOnly) limitedTypes
  typeEs <- sequence types
  fields <- concatMap infoToFields <$> mapM (monoType []) typeEs
  return $ [DataD [] proofEnvTypeName [] Nothing
              [RecC proofEnvTypeName
                (primitiveFields ++ limitedFields ++ fields)] []]





type TypeEnv = [(Name, Type)]

-- | Replace variables from the environment with types
instantiate :: TypeEnv -> Type -> Type
instantiate env (AppT t1 t2) = AppT (instantiate env t1) (instantiate env t2)
instantiate env (VarT n) = case lookup n env of
  Just t -> t
  Nothing -> error $ "undefined type variable " ++ nameBase n
instantiate _ t = t

conTypes :: TypeEnv -> [Con] -> [Type]
conTypes env = concatMap conType
  where
    conType (NormalC _ bts) = map (instantiate env . snd) bts
    conType (RecC _ vbts) = map (\(_,_,t) -> instantiate env t) vbts
    conType (InfixC (_,t1) _ (_,t2)) = map (instantiate env) [t1, t2]
    conType c = error $ "conType: do not know how to handle " ++ show c

-- | Extend a type environment by finding formals to actuals
extendTypeEnv :: TypeEnv -> [TyVarBndr] -> [Type] -> TypeEnv
extendTypeEnv env formals actuals = zipWith newBind formals actuals ++ env
  where
    newBind (PlainTV n) t = (n, t)
    newBind (KindedTV n _) t = (n, t)

decTypes :: TypeEnv -> Dec -> [Type] -> Q [Type]
decTypes env (DataD _ _ tVars _ dCons _) args =
  return $ conTypes (extendTypeEnv env tVars args) dCons
decTypes env (NewtypeD _ _ tVars _ dCon _) args =
  return $ conTypes (extendTypeEnv env tVars args) [dCon]
decTypes env (TySynD _ tVars t) args =
  dependingTypes (extendTypeEnv env tVars args) t
decTypes _ d _ = error $ "decTypes: unhandled declaration " ++ show d

dependingTypes :: TypeEnv -> Type -> Q [Type]
dependingTypes env ty = collect [] ty
  where
    collect args (AppT t1 t2) = collect (t2 : args) t1
    collect args (ConT n) = do
      reify n >>= \case
        TyConI dec -> decTypes env dec args
        PrimTyConI _ _ _ -> return [] -- Stop at primitives
        i -> error $ "dependingTypes : expecting TyConI; got " ++ show i
    collect args ListT = return args
    collect args (TupleT _) = return args
    collect _ t = error $ "dependingTypes: unhandled " ++ show t

visitRequired :: Type -> S.Set Type -> Q (S.Set Type)
visitRequired t visited | t `S.member` visited = return visited
visitRequired t visited = do
  types <- dependingTypes [] t 
  foldrM visitRequired (S.insert t visited) types

-- | Enumerate all the types that depend on the given type
requiredTypes :: Q Type -> Q Exp
requiredTypes ty = do
  typ <- ty
  typs <- visitRequired typ S.empty
  return $ LitE $ StringL $ show (map haskellTypeName (S.toList typs))

haskellTypeName :: Type -> String
haskellTypeName = collect []
  where
    collect args (AppT t1 t2) = collect (t2 : args) t1
    collect args (ConT n) = nameBase n ++ concatMap (\t -> " " ++ collect [] t) args
    collect [t] ListT = "[" ++ collect [] t ++ "]"
    collect args (TupleT _) = "(" ++ intercalate "," (map (collect []) args) ++ ")"
    collect _ t = show t
