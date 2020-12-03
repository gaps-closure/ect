{-

Template Haskell code for generating various Z3-type-related boilerplate

-}

module Z3TypeGenerator where

import Language.Haskell.TH

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

z3Constructors :: String -> Q Exp -> Name -> Q Stmt
z3Constructors prefix boolSort ty = do
  TyConI tyCon <- reify ty
  case tyCon of
    DataD _ tCon _ _ dCons _ -> do
      let tConName = nameBase tCon
          dConsNames = map getDName dCons
          getDName (NormalC n _) = nameBase n
          getDName dn = error $ "unrecognized constructor " ++ show dn

          sortP = VarP $ mkName $ prefix ++ tConName
          dConsPs = ListP $
            map (\n -> VarP $ mkName $ prefix ++ n) dConsNames
          vars = TupP [sortP, dConsPs]

          tConNameE = LitE $ StringL tConName

          toDCPair n = TupE [LitE (StringL n)
                            ,ListE []] -- FIXME

          dConPairsE = ListE $ map toDCPair dConsNames
          
      boolSortE <- boolSort

      return $ BindS vars (foldl1 AppE [VarE (mkName "mkZ3Constructors")
                                       ,boolSortE
                                       ,tConNameE
                                       ,dConPairsE])
    tc -> error $ "unsupported type constructor " ++ show tc
