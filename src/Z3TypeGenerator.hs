{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE FlexibleInstances #-}

{-|

Template Haskell code for generating various Z3-type-related boilerplate

Debug by adding to package.yaml

@
  ghc-options:
  - -ddump-splices  # For debugging Template Haskell:
  - -ddump-to-file  # more $(find . -name "*splices")
@

https://hackage.haskell.org/package/z3-408.2/docs/Z3-Monad.html

https://z3prover.github.io/api/html/group__capi.html

https://hackage.haskell.org/package/template-haskell-2.16.0.0/docs/Language-Haskell-TH.html

-}

module Z3TypeGenerator where

import Data.Char (isUpper, isAlphaNum)
import Language.Haskell.TH

import Data.List (intercalate)

import qualified Data.Set as S
import Data.Foldable (foldrM)

import Data.Graph ( stronglyConnComp, SCC(CyclicSCC, AcyclicSCC) )



-- | Prefix inserted before the name of each Z3 sort/type
typePrefix :: String
typePrefix = "t_"

-- | Prefix inserted before the name of each Z3 constructor function
constructorPrefix :: String
constructorPrefix = "c_"

-- | Fix illegal characters in a Haskell string for Z3
sanitize :: String -> String
sanitize (c : cs) | isAlphaNum c = c : sanitize cs
sanitize (_ : cs) = '_' : sanitize cs
sanitize [] = []

{-|
Create a @do@ block that initializes all the fields of the
initial proof environment.  The generated code ultimately looks
something like

@
  do
    ...
    (s_UnnamedAddr, [c_UA_LocalAddr, c_UA_GlobalAddr]) <-
      ((mkZ3Constructors s_Bool_a3iXD) "UnnamedAddr")
       [("UA_LocalAddr", []), ("UA_GlobalAddr", [])]
    ...
    return ProofEnv { ...
     , s_UnnamedAddr = s_UnnamedAddr
     , c_UA_LocalAddr = c_UA_LocalAddr
     , c_UA_GlobalAddr = c_UA_GlobalAddr
       ...
    }
@

The @RecordWildCards@ language extension turns out not to work here
because of some Template Haskell quirk.  Otherwise, 
@return ProofEnv{..}@ would be correct

-}
genInitEnv :: String   -- ^ Name of the ProofEnv type, typically "ProofEnv"
           -> [Q Stmt] -- ^ do-block statements for filling in the various
                    -- various fields of the ProofEnv object, typically
                    -- 'z3Constructors' and 'z3MutualConstructors'
           -> Q Exp    -- ^ do initialization-statements ; return ProofEnv {...}
genInitEnv envType stmts = do
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


-- | Simple environment for looking up type variable bindings.
-- Used, e.g., by 'typeName' to see what concrete type has been bound
-- to a particular type variable.
type NameEnv = [(Name, String)]

{-| Return a text name for a specific type, e.g., @Maybe_Bool@

Assumes the type in question is monomorphic, i.e., that it does not
include any free type variables; the passed-in environment should
have bindings for all referenced type variables.

List types @[..]@ are named "List"

Tuple types @(..,..)@ are named, e.g., "Tup3"

-}
typeName :: NameEnv -- ^ Bindings for all type variables
         -> Type -- ^ The type in question
         -> String -- ^ The generated string
typeName env (VarT n) = case lookup n env of
  Just s -> s
  Nothing -> error $ "undefined type variable " ++ show n
typeName _ (ConT n) = nameBase n
typeName env (AppT t1 t2) = typeName env t1 ++ "_" ++ typeName env t2
typeName _ ListT = "List"
typeName _ (TupleT n) = "Tup" ++ show n
typeName _ t = error $ "unsupported type " ++ show t

-- | For a Haskell type, the name of the type constructor and
-- the names and fields of its data constructors
type StringTypeInfo = (String, StringConstructors)

-- | A list of data-constructor names paired with
-- lists of (data-constructor-name, field-name-string, field-type-name) pairs
type StringConstructors = [(Name, String, [(String, String)])]

-- | Add bound variables to a type environment.
-- The length of formals and actuals should match, but this is not checked
extendEnv :: NameEnv     -- ^ Existing type variable bindings
          -> [TyVarBndr] -- ^ Formals (type variables)
          -> [String]    -- ^ Actuals (type names)
          -> NameEnv     -- ^ Updated type variable bindings
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
    namePrefix = filter isUpper tConName ++ "_"
    typeSuffix = concatMap (\(_,n) -> "_" ++ n) env -- type variable bindings
    tConName = nameBase tCon ++ typeSuffix
    dConsInfo = map dConInfo dCons

    dConInfo (NormalC n bts) =
      ( n, namePrefix ++ nameBase n ++ typeSuffix
      , zipWith (\(_,t) nn -> ((sanitize $ "f_" ++ nameBase n ++ "_" ++ show nn)
                             , typeName env t)) bts [(1::Int)..])
    dConInfo (RecC n vbts) = (n, namePrefix ++ nameBase n ++ typeSuffix,
                       map (\(f,_,t) -> ((sanitize $ nameBase n ++ "_" ++ nameBase f)
                                        ,typeName env t)) vbts)
    dConInfo (InfixC (_,t1) n (_,t2)) =
      (n, namePrefix ++ "infix" ++ typeSuffix,    -- FIXME: name is like ":-"
        [("l", typeName env t1)
        ,("r", typeName env t2)])
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

-- | Derive a monomorphized version of the given type:
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
            dConsInfo = [(mkName "Nil", "Nil_" ++ arg, []) -- FIXME?
                        ,(mkName "Cons", "Cons_" ++ arg, [("head", arg)
                                          ,("tail", tCon)])]
    collect args (TupleT n) = return (tCon, dConsInfo)
      where tCon = "Tup" ++ show n ++ concatMap ("_"++) args
            dConsInfo = [(mkName ("Tup" ++ show n), tCon, fields)]
            fields = zipWith field args ([1..] :: [Int])
            field t fn = ("field" ++ show fn, t)
        
    collect _ t = error $ "monoType: expecting a type; got " ++ show t

{-| Generate @do@-block code that creates the sort and constructor
    functions for the given type.  Used within the 'initEnv' block.
    
Usage, e.g.,

@
$(z3Constructors [| s_BoolType |] [t| Maybe A.Model |]
@

turns into something like

@
(s_Maybe_Model, [c_MM_Nothing_Model, c_MM_Just_Model]) <-
   ((mkZ3Constructors s_Bool_a3iXD) "Maybe_Model")
      [("MM_Nothing_Model", [])
      ,("MM_Just_Model", [("f", Just (sort t_Model))])]
@

Passes the results of 'monoType' to 'z3ConstructorsStmt'
-}
z3Constructors :: Q Exp  -- ^ The Boolean sort, passed to 'z3ConstructorsStmt'
               -> Q Type -- ^ The type for which to generate the statement 
               -> Q Stmt
z3Constructors boolSort ty = do
  boolSortE <- boolSort
  typ <- ty
  typeInfo <- monoType [] typ
  return $ z3ConstructorsStmt boolSortE typeInfo

-- | Build a pattern for assigning to the sort and
-- constructors generated by, e.g., 'InitialEnv.mkZ3Constructors'
varsFor :: StringTypeInfo -> Pat
varsFor (tConName, dConsNames) = TupP [sortP, dConsPs]
  where
    sortP = VarP $ mkName $ typePrefix ++ tConName
    dConsPs = ListP $
         map (\(_,n, _) -> VarP $ mkName $ constructorPrefix ++ n) dConsNames

{-| Like "z3Constructors" but handle mutually recursive types using
    "mkMutualZ3Constuctors".

E.g.,

@
$(z3MutualConstructors [| s_BoolType |] [ [t| A.Type |]
                                        , [t| [A.Type] |] ]
@

generates code like

@
 [(s_List_Type, [c_Nil_Type, c_Cons_Type]),
  (s_Type, [c_T_VoidType, c_T_IntegerType, c_T_PointerType, ...])] <-
     ((mkMutualZ3Constructors s_Bool_a3iXD)
                      ["List_Type", "Type"])
                       [[("Nil_Type", []),
                        ("Cons_Type", [("head", Left 1), ("tail", Left 0)])],
                      [("T_VoidType", []),
                       ("T_IntegerType", [("typeBits", Right (sort t_Word32))]),
                       ("T_PointerType",
                             [("pointerReferent", Left 1),
                             ("pointerAddrSpace", Right s_AddrSpace)]),
                      ..]
@

-}
z3MutualConstructors :: Q Exp -> [Q Type] -> Q Stmt
z3MutualConstructors boolSort tys = do
  boolSortE <- boolSort
  typs <- sequence tys
  tinfos <- mapM (monoType []) typs
  let ourSorts = zipWith (\(a,_) b -> (a, b)) tinfos [(0::Integer)..]
      vars = ListP $ map varsFor tinfos
      tConNames = ListE $ map (LitE . StringL . fst) tinfos
      dConPairss = ListE $ map (ListE . map toDCons . snd) tinfos

      toDCons (_, dc, fields) = TupE [ LitE (StringL dc)
                                  , ListE (map toField fields) ]

      toField (fn, ft) = TupE [LitE (StringL fn), typE]
        where
          typE = case lookup ft ourSorts of
            Nothing -> rightE $ AppE (VarE $ mkName "sort") $ VarE $ mkName (typePrefix ++ ft)
            Just n -> leftE $ LitE $ IntegerL n
          rightE = AppE $ ConE $ mkName "Right"
          leftE = AppE $ ConE $ mkName "Left"

  return $ BindS vars (foldl1 AppE [ VarE (mkName "mkMutualZ3Constructors")
                                   , boolSortE
                                   , tConNames
                                   , dConPairss ])


{-|
Generate @do@-block code that creates the sort and constructor
functions for the given type.

Generated code calls 'InitialEnv.mkZ3Constructors'.

-}
z3ConstructorsStmt :: Exp -> StringTypeInfo -> Stmt
z3ConstructorsStmt boolSortE (tConName, dConsNames) =
   BindS vars (foldl1 AppE [VarE (mkName "mkZ3Constructors")
                                   ,boolSortE
                                   ,tConNameE
                                   ,dConPairsE])
    where
      tConNameE = LitE $ StringL tConName

      vars = varsFor (tConName, dConsNames)

      toDCPair (_, dc, fields) = TupE [LitE (StringL dc)
                                   ,ListE (map toField fields)]
      justE = AppE (ConE $ mkName "Just")
      nothingE = ConE $ mkName "Nothing"

      toField (fn,ft) = TupE [LitE (StringL fn), typE]
        where typE = if ft == tConName then nothingE -- Handle self-recursive
                     else justE $ AppE (VarE $ mkName "sort") (VarE $ mkName $ typePrefix ++ ft)

      dConPairsE = ListE $ map toDCPair dConsNames

{-| Create a data type declaration for the 'ProofEnv.ProofEnv' data type

@
  data ProofEnv
      = ProofEnv {s_Bool :: !Sort,   -- One for each primitive sort
                  s_Int :: !Sort,
                  s_UnnamedAddr :: !Z3Type,  -- 
                  c_UA_LocalAddr :: !Z3Constructor,
                  c_UA_GlobalAddr :: !Z3Constructor,
                  }
@

-}
genProofEnvDecl :: String -- ^ The name of the new type (usually "ProofEnv")
                    -> [String] -- ^ List of primitive sorts: these are turned directly into fields of type @Z3Type@
                    -> [Q Type] -- ^ Each type in this list will expand into a 'ProofEnv.Z3Type' field and 'ProofEnv.Z3Constructor' fields for each of its constructors
                    -> Q [Dec] -- ^ The generated declaration
genProofEnvDecl proofEnvType primitives types = do
  let sBang = Bang NoSourceUnpackedness SourceStrict
      typeField n = (mkName $ typePrefix ++ n, sBang, ConT $ mkName "Z3Type")
      ctorField n = (mkName $ constructorPrefix ++ n, sBang
                    , ConT $ mkName "Z3Constructor")
      primitiveFields = map typeField primitives
      infoToFields (tCon, dCons) =
        typeField tCon : map (\(_,f,_) -> ctorField f) dCons
      proofEnvTypeName = mkName proofEnvType
  typeEs <- sequence types
  fields <- concatMap infoToFields <$> mapM (monoType []) typeEs
  return $ [DataD [] proofEnvTypeName [] Nothing
              [RecC proofEnvTypeName (primitiveFields ++ fields)] []]




-- | Type variable-to-Type binding environment for monomorphizing while
-- determining all the dependent types with, e.g., 'dependingTypes'
type TypeEnv = [(Name, Type)]

-- | Replace type variables in a type with concrete types
-- from the given environment
instantiate :: TypeEnv -> Type -> Type
instantiate env (AppT t1 t2) = AppT (instantiate env t1) (instantiate env t2)
instantiate env (VarT n) = case lookup n env of
  Just t -> t
  Nothing -> error $ "undefined type variable " ++ nameBase n
instantiate _ t = t

-- | From a list of constructors, generate a list of types whose
-- type variables have been instantiated from the environment
conTypes :: TypeEnv -> [Con] -> [Type]
conTypes env = concatMap conType
  where
    conType (NormalC _ bts) = map (instantiate env . snd) bts
    conType (RecC _ vbts) = map (\(_,_,t) -> instantiate env t) vbts
    conType (InfixC (_,t1) _ (_,t2)) = map (instantiate env) [t1, t2]
    conType c = error $ "conType: do not know how to handle " ++ show c

-- | Extend a type environment by binding formal type variables to
-- the actual types they are given
extendTypeEnv :: TypeEnv -> [TyVarBndr] -> [Type] -> TypeEnv
extendTypeEnv env formals actuals = zipWith newBind formals actuals ++ env
  where
    newBind (PlainTV n) t = (n, t)
    newBind (KindedTV n _) t = (n, t)


-- | From a type environment, bind type arguments to a declaration
decTypes :: TypeEnv -- ^ Existing type environment
         -> Dec     -- ^ Declaration to be instantiated
         -> [Type]  -- ^ Type arguments, if any, to be applied to the 'Dec'
         -> Q [Type]
decTypes env (DataD _ _ tVars _ dCons _) args =
  return $ conTypes (extendTypeEnv env tVars args) dCons
decTypes env (NewtypeD _ _ tVars _ dCon _) args =
  return $ conTypes (extendTypeEnv env tVars args) [dCon]
decTypes env (TySynD _ tVars t) args =
  dependingTypes (extendTypeEnv env tVars args) t
decTypes _ d _ = error $ "decTypes: unhandled declaration " ++ show d

-- | In a given environment, for a given type, return the list
-- of concrete types it depends on.  Do so by collecting any type arguments
-- being applied to a type declaration before using 'decTypes'
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

-- | Produce a Haskell-syntax-style version of a type.
--
-- Names in the "LLVM" module are given an @A.@ prefix.
--
-- Names in the "GHC" module have their prefix removed
haskellTypeName :: Type -> String
haskellTypeName = collect []
  where
    collect args (AppT t1 t2) = collect (t2 : args) t1
    collect args (ConT n) = modn ++ nameBase n ++ concatMap (\t -> " " ++ collect [] t) args
      where
        modn = case nameModule n of
          Just ('L':'L':'V':'M':_) -> "A."
          Just ('G':'H':'C':_) -> ""
          Just s -> s ++ "."
          Nothing -> ""
    collect [t] ListT = "[" ++ collect [] t ++ "]"
    collect args (TupleT _) =
      "(" ++ intercalate ", " (map (collect []) args) ++ ")"
    collect _ t = show t

-- | Depth-first search of types and those they depend on.
-- Uses 'dependingTypes' to determine successors
visitRequired :: Type -- ^ Type to visit
              -> S.Set Type -- ^ Set of already-visited types
              -> Q (S.Set Type) -- ^ Set of types ultimately visited
visitRequired t visited | t `S.member` visited = return visited
visitRequired t visited = do
  types <- dependingTypes [] t 
  foldrM visitRequired (S.insert t visited) types

-- | Groups of singleton SCCs and larger SCCs
data SCCGroup a = SCCSequence [a] -- ^ A list of singletons in topological order
                | SCCCyclic [a]   -- ^ A strongly-connected compoent

-- | Print an @SCCGroup Type@ as calls to either 'z3Constructors' or
-- 'z3MutualConstructors'
instance Show (SCCGroup Type) where
  show (SCCSequence ts) =
    "map (z3Constructors [| s_Bool |]) [ " ++
    intercalate "\n, " (map (\t -> "[t| " ++ haskellTypeName t ++ " |]") ts) ++
    " ] ++"
  show (SCCCyclic ts) =
    "[z3MutualConstructors [| s_Bool |] [ " ++
    intercalate "\n, " (map (\t -> "[t| " ++ haskellTypeName t ++ " |]") ts) ++
    " ]] ++"


-- | Convert SCCs (singletons and cycles) into sequences and cycles
groupSCC :: [SCC a] -> [SCCGroup a]
groupSCC [] = []
groupSCC ((CyclicSCC as) : ss) = SCCCyclic as : groupSCC ss
groupSCC ss = SCCSequence (map (\(AcyclicSCC t) -> t) acyclic) : groupSCC rest
  where
    (acyclic, rest) = span (\case (AcyclicSCC _) -> True
                                  (CyclicSCC _) -> False) ss

-- | Enumerate all the types that depend on the given type.
-- Uses 'visitRequired' and 'stronglyConnComp' from "Data.Graph'
requiredTypes :: [Q Type] -> Q Type -> Q Exp
requiredTypes leaves ty = do
  typ <- ty
  leaves' <- sequence leaves
  typs <- visitRequired typ (S.fromList leaves')
  let typs' = typs S.\\ S.fromList leaves'
      types = S.toList typs'
  typSuccessors <- mapM (dependingTypes []) types
  let graph = map (\t -> (t, t, [])) leaves' ++
              zipWith (\t s -> (t,t,s)) types typSuccessors
      sccs = stronglyConnComp graph
      proofEnv = ListE $ map (LitE . StringL . haskellTypeName) $ S.toList typs'
      initialEnv = ListE $ map (LitE . StringL . show) (groupSCC sccs)
  return $ TupE [proofEnv, initialEnv]



{-| Generate an instance of proveEquiv for a particular type

-}
genProveEquiv :: Q Type -- ^ The type for which to generated the proveEquiv instances
              -> Q [Dec]
genProveEquiv typ' = do
  typ <- typ'
  (_, stringConstructors) <- monoType [] typ
  Just proveEquivN <- lookupValueName "proveEquiv"
  Just proveEquivClass <- lookupTypeName "ProveEquiv"
  Just bindN <- lookupValueName ">>="
--  Just z3dconN <- lookupValueName "c_C_Int"
  Just sequenceN <- lookupValueName "sequence"
  Just proveEquivAlgN <- lookupValueName "proveEquivAlgebraic"
  let bindE = VarE bindN
      sequenceE = VarE sequenceN
      proveEquivAlgE = VarE proveEquivAlgN
      proveEquivE = VarE proveEquivN

  let genClause dconName z3dcon ctorArgs comment =
        Clause [ConP dconName (map (VarP . fst) ctorArgs)
               ,ConP dconName (map (VarP . snd) ctorArgs)]
               (NormalB (UInfixE (AppE sequenceE equivs) bindE
                         (foldl1 AppE [proveEquivAlgE
                                      ,z3dcon
                                      ,LitE (StringL comment)])))
               []
        where
          equivs = ListE $ map (\(a, b) -> foldl1 AppE [proveEquivE
                                                       ,VarE a
                                                       ,VarE b]) ctorArgs
      toClause (dconName, z3dcon, fields) =
        genClause dconName (VarE (mkName (constructorPrefix ++ z3dcon))) fields' z3dcon
        where
          fields' = zipWith (\_ n -> (mkName ("a" ++ show n)
                                     ,mkName ("b" ++ show n))) fields [(1::Int)..]
               
  
  let clauses = map toClause stringConstructors

  {- [genClause (mkName "A.Int"
                           ,VarE z3dconN
                           ,[(mkName "a1", mkName "b1"),
                             (mkName "a2", mkName "b2")]
                           ,"Int")
                ] -}
  let decs = [FunD proveEquivN clauses]
  return $ [InstanceD Nothing [] (AppT (ConT proveEquivClass) typ) $ decs]
