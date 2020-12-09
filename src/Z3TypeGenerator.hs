{-# LANGUAGE LambdaCase #-}

{-

Template Haskell code for generating various Z3-type-related boilerplate

Debug by adding to package.yaml

  ghc-options:
  - -ddump-splices  # For debugging Template Haskell:
  - -ddump-to-file  # more $(find . -name "*splices")

-}

module Z3TypeGenerator where

import Language.Haskell.TH

-- | Prefixes inserted before the name of each Z3 sort (type),
-- and data constructor
sortPrefix, constructorPrefix :: String
sortPrefix = "s1_"
constructorPrefix = "c1_"
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
typeName _ t = error $ "unsupported type " ++ show t

-- | A "monomorphized" version of the given type:
-- (top-type-name, [constructors])
-- where constructor = (constructor-name, [(field-name, field-type-name)])
monoType :: Type -> Q (String, [(String, [(String, String)])])
monoType theType = collectTArgs [] theType
  where
    collectTArgs args (AppT t1 t2) = collectTArgs (typeName [] t2 : args) t1
    collectTArgs args (ConT n) = processConstructors n args
    collectTArgs [arg] ListT = return ("List_" ++ arg, dConsInfo)
      where dConsInfo = [("Nil_" ++ arg, [])
                        ,("Cons_" ++ arg, [("cons", arg)])]
      
    collectTArgs _ t = error $ "monoType: unsupported type " ++ show t


    processConstructors :: Name -> [String] -> Q (String, [(String, [(String, String)])])
    processConstructors typeConN argStrings =
      reify typeConN >>= \case
        TyConI (DataD _ tCon tVars _ dCons _) -> return (tConName, dConsInfo)
            where
              nameEnv = zipWith (\tvb s -> (tyVarBndrName tvb, s))
                                tVars argStrings
              tyVarBndrName (PlainTV n) = n
              tyVarBndrName (KindedTV n _) = n
              typeSuffix = concatMap ("_"++) argStrings
              tConName = nameBase tCon ++ typeSuffix
              dConsInfo = map dConInfo dCons

              dConInfo (NormalC n bts) =
                (nameBase n ++ typeSuffix,
                  map (\(_,t) -> ("f", typeName nameEnv t)) bts)
              dConInfo (RecC n vbts) =
                (nameBase n ++ typeSuffix,
                 map (\(f,_,t) -> (nameBase f, typeName nameEnv t)) vbts)
                
              dConInfo dc = error $ "unsupported constructors " ++ show dc
                         
        i -> error $ "expecting a type constructor; got " ++ show i

 
{-
z3Constructors :: Q Exp -> Name -> Q Stmt
z3Constructors boolSort ty = do
  (tConsName, dConsNames) <- algTypeInfo ty
  boolSortE <- boolSort
  return $ z3ConstructorsStmt boolSortE tConsName dConsNames
-}

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
  
{-  
  case typ of
    
    ConT n -> do -- Monomorphic algebraic type 
      (tConsName, dConsNames) <- algTypeInfo n
      return $ z3ConstructorsStmt boolSortE tConsName dConsNames


    {-  Simple polymorphic algebraic type, e.g., Maybe StorageClass

        The type from the quoted type is an AppT (ConT Name) (ConT Name)

        The first name reifies to a DataD with a list of TyVarBndrs
        that are the names of the type variable given as an argument
    -}
    AppT (ConT tn1) (ConT tn2) -> do -- Polymorphic algebraic type
      TyConI (DataD _ tCon [KindedTV tvName StarT] _ constructors _) <- reify tn1
      let suffix = "_" ++ nameBase tn2
          tConsName = nameBase tCon ++ suffix
          dConsNames = map getDName constructors
          
          getDName (NormalC n bts) = (nameBase n ++ suffix, map btField bts)
          getDName dn = error $ "unsupported data constructor " ++ show dn

          btField (_, (ConT n)) = ("f", nameBase n ++ suffix)
          btField (_, (VarT v)) | v == tvName = ("f", nameBase tn2) -- instantiate the lone variable
          btField bt = error $ "unsupported BangType " ++ show bt
          
--      let envExpr = LitE $ StringL (nameBase tn1 ++ " " ++ nameBase tn2 ++
--                       " : " ++
--                       show tVarBind ++ " -> " ++ show constructors)
      return $ z3ConstructorsStmt boolSortE tConsName dConsNames
      -- return $ NoBindS $ AppE (VarE $ mkName "return") envExpr


    t -> error $ "Unsupported type " ++ show t

-}

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
{-
algTypeInfo :: Name -> Q (String, [(String, [(String, String)])])
algTypeInfo ty = do
  TyConI tyCon <- reify ty
  case tyCon of
    DataD _ tCon _ _ dCons _ -> do
      let tConName = nameBase tCon
          dConsNames = map getDName dCons
          getDName (NormalC n bts) =
            (nameBase n, map (\(_,t) -> ("f", typeName [] t)) bts)
          getDName (RecC n vbts) =
            (nameBase n, map (\(f,_,t) -> (nameBase f, typeName [] t)) vbts)
          getDName dn = error $ "unsupported data constructor " ++ show dn
      return (tConName, dConsNames)
    tc -> error $ "unsupported type constructor " ++ show tc
-}

-- FIXME: Work from a Type, not a name
-- Handle AppT in addition to ConT
-- Move machinery from z3Constructors to here
-- "monomorphiseAlgTypeInfo"


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

-- FIXME: handle Maybe StorageClass here (extend algTypeInfo?)
