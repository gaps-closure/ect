{-

Template Haskell code for generating various Z3-type-related boilerplate

-}

module Z3TypeGenerator where

import Language.Haskell.TH

-- | Prefixes inserted before the name of each Z3 sort (type),
-- and data constructor
sortPrefix, constructorPrefix, proofEnvTypeName :: String
sortPrefix = "s_"
constructorPrefix = "c_"
-- | Name of the proof environment type and data constructor
proofEnvTypeName = "ProofEnv"

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


typeName :: Type -> String
typeName (ConT n) = nameBase n
typeName (AppT t1 t2) = typeName t1 ++ "_" ++ typeName t2
typeName ListT = "List" -- The [] type
typeName t = error $ "unsupported type " ++ show t

z3Constructors :: Q Exp -> Name -> Q Stmt
z3Constructors boolSort ty = do
  (tConsName, dConsNames) <- algTypeInfo ty
  boolSortE <- boolSort
  return $ z3ConstructorsStmt boolSortE tConsName dConsNames

z3ConstructorsOnly :: Q Exp -> Name -> [String] -> Q Stmt
z3ConstructorsOnly boolSort ty fields = do
  (tConsName, dConsNames) <- algTypeInfoOnly ty fields
  boolSortE <- boolSort
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

-- For an algebraic data type,
-- return its type constructor base name
-- the base names of all its data constructors,
-- and the names of the of each of its fields, if any
algTypeInfo :: Name -> Q (String, [(String, [(String, String)])])
algTypeInfo ty = do
  TyConI tyCon <- reify ty
  case tyCon of
    DataD _ tCon _ _ dCons _ -> do
      let tConName = nameBase tCon
          dConsNames = map getDName dCons
          getDName (NormalC n bts) =
            (nameBase n, map (\(_,t) -> ("f", typeName t)) bts)
          getDName (RecC n vbts) =
            (nameBase n, map (\(f,_,t) -> (nameBase f, typeName t)) vbts)
          getDName dn = error $ "unsupported data constructor " ++ show dn
      return (tConName, dConsNames)
    tc -> error $ "unsupported type constructor " ++ show tc

algTypeInfoOnly :: Name -> [String]
                -> Q (String, [(String, [(String, String)])])
algTypeInfoOnly ty fields = do
  (tConsName, dConsNames') <- algTypeInfo ty
  let dConsNames = filter (\(dc, _) -> elem dc fields) dConsNames'
  return (tConsName, dConsNames)

-- Create
--
-- data ProofEnv = ProofEnv { ... }

declareProofEnvType :: [String] -> [(Name, [String])] -> [Name] -> Q [Dec]
declareProofEnvType primitives limitedTypes types = do
  let sBang = Bang NoSourceUnpackedness SourceStrict
      sortField n = (mkName $ sortPrefix ++ n, sBang, ConT $ mkName "Sort")
      ctorField n = (mkName $ constructorPrefix ++ n, sBang
                    , ConT $ mkName "Z3Constructor")
      primitiveFields = map sortField primitives
      infoToFields (tCon, dCons) = sortField tCon : map (ctorField . fst) dCons
  limitedFields <- concatMap infoToFields <$>
                   mapM (uncurry algTypeInfoOnly) limitedTypes
  fields <- concatMap infoToFields <$> mapM algTypeInfo types
  return $ [DataD [] (mkName proofEnvTypeName) [] Nothing
              [RecC (mkName proofEnvTypeName)
                (primitiveFields ++ limitedFields ++ fields)] []]
