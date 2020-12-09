{-# LANGUAGE LambdaCase #-}

{-

Template Haskell code for generating various Z3-type-related boilerplate

Debug by adding to package.yaml

  ghc-options:
  - -ddump-splices  # For debugging Template Haskell:
  - -ddump-to-file  # more $(find . -name "*splices")

-}

module Z3TypeGenerator where

import Data.Char (isUpper)
import Language.Haskell.TH

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


-- | A "monomorphized" version of the given type:
-- (top-type-name, [constructors])
-- where constructor = (constructor-name, [(field-name, field-type-name)])
--
-- For an algebraic data type,
-- return its type constructor base name
-- the base names of all its data constructors,
-- and the names of the of each of its fields, if any
monoType :: Type -> Q (String, [(String, [(String, String)])])
monoType theType = collectTArgs [] theType
  where
    collectTArgs args (AppT t1 t2) = collectTArgs (typeName [] t2 : args) t1
    collectTArgs args (ConT n) = processConstructors n args
    collectTArgs [arg] ListT = return (tCon, dConsInfo)
      where tCon = "List_" ++ arg
            dConsInfo = [("Nil_" ++ arg, [])
                        ,("Cons_" ++ arg, [("head", arg)
                                          ,("tail", tCon)])]
    collectTArgs args (TupleT n) = return (tcon, dConsInfo)
      where tcon = "Tup" ++ show n ++ concatMap ("_"++) args
            dConsInfo = [(tcon, fields)]
            fields = zipWith field args ([1..] :: [Int])
            field t fn = ("field" ++ show fn, t)

    collectTArgs _ t = error $ "monoType: unsupported type " ++ show t


    processConstructors :: Name -> [String]
                        -> Q (String, [(String, [(String, String)])])
    processConstructors typeConN argStrings =
      reify typeConN >>= \case
        TyConI (DataD _ tCon tVars _ dCons _) ->
          algConstructors argStrings tCon tVars dCons
        TyConI (NewtypeD _ tCon tVars _ dCon _) ->
          algConstructors argStrings tCon tVars [dCon]

        i -> error $ "expecting a type constructor; got " ++ show i

    algConstructors argStrings tCon tVars dCons = return (tConName, dConsInfo)
      where
        nameEnv = zipWith (\tvb s -> (tyVarBndrName tvb, s)) tVars argStrings

        tyVarBndrName (PlainTV n) = n
        tyVarBndrName (KindedTV n _) = n

        typePrefix = filter isUpper tConName ++ "_"
        typeSuffix = concatMap ("_"++) argStrings
        tConName = nameBase tCon ++ typeSuffix
        dConsInfo = map dConInfo dCons

        dConInfo (NormalC n bts) =
          (typePrefix ++ nameBase n ++ typeSuffix,
            map (\(_,t) -> ("f", typeName nameEnv t)) bts)
        dConInfo (RecC n vbts) =
          (typePrefix ++ nameBase n ++ typeSuffix,
            map (\(f,_,t) -> (nameBase f, typeName nameEnv t)) vbts)

        dConInfo dc = error $ "unsupported constructors " ++ show dc

-- | Only generate code for certain constructors
z3ConstructorsOnly :: Q Exp -> Q Type -> [String] -> Q Stmt
z3ConstructorsOnly boolSort typeE fields = do
  (tConsName, dConsNames) <- algTypeInfoOnly typeE fields
  boolSortE <- boolSort
  return $ z3ConstructorsStmt boolSortE tConsName dConsNames

-- | $(z3Constructors [| s_BoolType |] [t| A.AddrSpace |]
z3Constructors :: Q Exp -> Q Type -> Q Stmt
z3Constructors boolSort ty = do
  boolSortE <- boolSort
  typ <- ty
  (tConsName, dConsNames) <- monoType typ
  return $ z3ConstructorsStmt boolSortE tConsName dConsNames

z3ConstructorsStmt :: Exp -> String -> [(String, [(String, String)])] -> Stmt
z3ConstructorsStmt boolSortE tConName dConsNames =
   BindS vars (foldl1 AppE [VarE (mkName "mkZ3Constructors")
                                   ,boolSortE
                                   ,tConNameE
                                   ,dConPairsE])
    where
      tConNameE = LitE $ StringL tConName

      sortP = VarP $ mkName $ sortPrefix ++ tConName
      dConsPs = ListP $
         map (\(n, _) -> VarP $ mkName $ constructorPrefix ++ n) dConsNames
      vars = TupP [sortP, dConsPs]

      toDCPair (dc, fields) = TupE [LitE (StringL dc)
                                   ,ListE (map toField fields)]
      justE = AppE (ConE $ mkName "Just")
      nothingE = ConE $ mkName "Nothing"

      toField (fn,ft) = TupE [LitE (StringL fn), typE]
        where typE = if ft == tConName then nothingE
                     else justE $ VarE $ mkName $ sortPrefix ++ ft

      dConPairsE = ListE $ map toDCPair dConsNames

algTypeInfoOnly :: Q Type -> [String]
                -> Q (String, [(String, [(String, String)])])
algTypeInfoOnly actualType fields = do
  ty <- actualType
  (tConsName, dConsNames') <- monoType ty
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
  fields <- concatMap infoToFields <$> mapM monoType typeEs
  return $ [DataD [] proofEnvTypeName [] Nothing
              [RecC proofEnvTypeName
                (primitiveFields ++ limitedFields ++ fields)] []]
