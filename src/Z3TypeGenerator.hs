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

    {- [NoBindS finalExpr'] ++
       [NoBindS $ AppE (VarE $ mkName "return") finalExpr'][] -}


-- FIXME: add fields to the data constructors

z3Constructors :: Q Exp -> Name -> Q Stmt
z3Constructors boolSort ty = do
  (tConName, dConsNames) <- algTypeInfo ty
  let tConNameE = LitE $ StringL tConName

      sortP = VarP $ mkName $ sortPrefix ++ tConName
      dConsPs = ListP $
         map (\n -> VarP $ mkName $ constructorPrefix ++ n) dConsNames
      vars = TupP [sortP, dConsPs]
  
      toDCPair n = TupE [LitE (StringL n)
                        ,ListE []] -- FIXME

  
      dConPairsE = ListE $ map toDCPair dConsNames
  boolSortE <- boolSort
  return $ BindS vars (foldl1 AppE [VarE (mkName "mkZ3Constructors")
                                   ,boolSortE
                                   ,tConNameE
                                   ,dConPairsE])

-- For an algebraic data type,
-- return its type constructor base name
-- and the base names of all its data constructors
algTypeInfo :: Name -> Q (String, [String])
algTypeInfo ty = do
  TyConI tyCon <- reify ty
  case tyCon of
    DataD _ tCon _ _ dCons _ -> do
      let tConName = nameBase tCon
          dConsNames = map getDName dCons
          getDName (NormalC n _) = nameBase n
          getDName (RecC n _) = nameBase n
          getDName dn = error $ "unsupported data constructor " ++ show dn
      return (tConName, dConsNames)
    tc -> error $ "unsupported type constructor " ++ show tc


-- Create
--
-- data ProofEnv = ProofEnv { ... }

-- FIXME: Add sorts for other primitive types
declareProofEnvType :: [Name] -> Q [Dec]
declareProofEnvType types = do
  let sBang = Bang NoSourceUnpackedness SourceStrict
      sortField n = (mkName $ sortPrefix ++ n, sBang, ConT $ mkName "Sort")
      ctorField n = (mkName $ constructorPrefix ++ n, sBang
                    , ConT $ mkName "Z3Constructor")
      boolField = sortField "Bool"
      infoToFields (tCon, dCons) = sortField tCon : map ctorField dCons
  fields <- concatMap infoToFields <$> mapM algTypeInfo types
  return $ [DataD [] (mkName proofEnvTypeName) [] Nothing
              [RecC (mkName proofEnvTypeName) (boolField : fields)] []]
