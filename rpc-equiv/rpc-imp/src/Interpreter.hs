module Interpreter (rpcImpRun, display) where

import Data.Map as M hiding (map, foldr)
import Data.List
import RpcImp

-- Rpc-IMP interpreter error messages --

showSort :: Sort -> String
showSort (RBoolSort)      = "BOOL"
showSort (RIntSort)       = "INT"
showSort (RFloatSort)     = "FLOAT"
showSort (RStructSort n)  = "STRUCT " ++ n
showSort (RArraySort s i) = "ARRAY[" ++ show i ++ "] OF " ++ showSort s

showVal :: Val -> String
showVal (RBool b)  = show b
showVal (RInt i)   = show i
showVal (RFloat f) = show f
showVal (RStruct n fields) =
  "struct " ++ n ++ " { " ++ intercalate ", " (map showField fields) ++ " }"
  where 
    showField (n', v) =
      case v of
        Just v' -> n' ++ " <- " ++ showVal v'
        Nothing -> n'
showVal (RArray _ _ vs) =
  "[" ++ intercalate ", " (map showElement vs) ++ "]"
  where
    showElement (Just v) = showVal v
    showElement _ = "_"

iteTypeError :: Expr -> a
iteTypeError e = 
  error $
    "type error: if-then-else condition '" 
      ++ show e ++ "' is not a boolean expression"

compTypeError :: Expr -> Expr -> a
compTypeError e1 e2 = 
  error $
    "type error: invalid types for comparision between expressions '"
     ++ show e1 ++ "' and '" ++ show e2 ++ "'"

assignTypeError :: Val -> Sort -> a
assignTypeError v s = 
  error $ 
    "type error: mismatched types for assignment of '" 
      ++ showVal v ++ "' to a variable of type '" ++ show s ++ "'"

arithTypeError :: String -> Expr -> Expr -> a
arithTypeError s e1 e2 =
  error $
    "type error: invalid types for " ++ s ++ " between expressions '"
      ++ show e1 ++ "' and '" ++ show e2 ++ "'"

negTypeError :: Expr -> a
negTypeError e =
  error $
    "type error: negated term '"
      ++ show e ++ "' is not a boolean expression"

useDefError :: Name -> a
useDefError n =
  error $
    "undef error: identifier '"
      ++ n ++ "' is used before it is defined and given a value"

assignUndefError :: String -> a
assignUndefError n =
  error $
    "undef error: identifier '"
      ++ n ++ "' is assigned to before it is defined"

arrayIndexError :: Val -> a
arrayIndexError v =
  error $
    "type error: array index '" ++ showVal v ++ "' is not an integer"

notStructError :: Val -> a
notStructError v =
  error $
    "type error: member access on '" ++ showVal v ++ "' which is not a struct"

notArrayError :: Val -> a
notArrayError v =
  error $
    "type error: non-array value '" ++ showVal v ++ "' cannot be indexed"

-- Interpreter for an Rpc-IMP program --

type SortTable = M.Map Name [(Name, Sort)]
type VarTable  = M.Map Name (Sort, Maybe Val)
type FuncTable = M.Map Name ([(Name, Sort)], Sort, Cmd)

type State = (SortTable, FuncTable, VarTable, VarTable)
type IdentifierChain = [Either Name Int]

sortOf :: Val -> Sort
sortOf (RBool _)      = RBoolSort
sortOf (RInt _)       = RIntSort
sortOf (RFloat _)     = RFloatSort
sortOf (RStruct n _)  = RStructSort n
sortOf (RArray s i _) = RArraySort s i

defaultVal :: SortTable -> Sort -> Maybe Val
defaultVal ss (RStructSort n) =
  let
    emptyfields = 
      case M.lookup n ss of
        Just fields -> map (\(fn, srt) -> (fn, defaultVal ss srt)) fields 
        _ -> error $ "Struct type '" ++ n ++ "' is not defined"
  in
    Just $ RStruct n emptyfields
defaultVal _ (RArraySort arr_srt i) =
  Just $ RArray arr_srt i $ replicate i Nothing
defaultVal _ _ = Nothing

lookupChainIn :: Maybe Val -> VarTable -> IdentifierChain -> Maybe Val
lookupChainIn v _ [] = v
lookupChainIn v vs ((Left n):chain) =
  case v of
    Nothing ->
      case M.lookup n vs of
        Just (_, Just v')  -> lookupChainIn (Just v') vs chain
        Just (_, Nothing) -> useDefError n
        _ -> Nothing
    Just (RStruct sn fields) ->
      case find (\(field, _) -> field == n) fields of
        Just (_, Just v') -> lookupChainIn (Just v') vs chain
        Just _  -> useDefError n
        Nothing -> error $ "Struct '" ++ sn ++ "' has no field '" ++ n ++ "'"
    Just v' -> notStructError v'
lookupChainIn v vs ((Right i):chain) =
  case v of
    Nothing -> error "bad identifier chain: resolveNameExpr has a bug"
    Just av@(RArray _ _ eles) ->
      case eles !! i of
        Nothing ->
          error $ "Array '" ++ showVal av ++ "' is not defined at " ++ show i
        Just v' -> lookupChainIn (Just v') vs chain
    Just v' -> notArrayError v'

assignChain :: IdentifierChain -> Maybe Val -> Val -> Val
assignChain [] v newval =
  -- TODO: type-check even in nothing case
  case v of
    Just v' | sortOf v' /= sortOf newval -> error $ assignTypeError newval (sortOf v')
    _ -> newval
assignChain ((Left n):chain) (Just (RStruct sn fields)) newval =
  let
      -- TODO: type-check, validate the fieldname exists
      updateRec (fn, fv) = 
        (fn, if fn == n then (Just $ assignChain chain fv newval) else fv)
      fields' = map updateRec fields
  in
    RStruct sn fields'
assignChain ((Right i):chain) (Just (RArray asrt len eles)) newval =
  let
    -- TODO: check i not out of bounds
    updateEle (j, ele) =
      (if j == i then (Just $ assignChain chain ele newval) else ele)
    eles' = map updateEle $ zip [0..] eles
  in
    RArray asrt len eles'
assignChain _ (Just v) newval = assignTypeError newval (sortOf v)
assignChain _ _ nv = 
  error $ "Undefined value encountered when resolving NameExpr to assign '" 
    ++ showVal nv ++ "'"

assignChainIn :: VarTable -> IdentifierChain -> Val -> Maybe VarTable
assignChainIn vs ((Left n):chain) newval = 
  case M.lookup n vs of
    Just (srt, v) -> Just $ M.insert n (srt, Just $ assignChain chain v newval) vs
    _ -> Nothing
assignChainIn _ _ _ = error "bad identifier chain: resolveNameExpr has a bug"

resolveNameExpr :: State -> NameExpr -> (IdentifierChain, State)
resolveNameExpr st (RName n) = ([Left n], st)
resolveNameExpr st (RStructMember ne n) =
  let
    (chain, st') = resolveNameExpr st ne
  in
    (chain ++ [Left n], st')
resolveNameExpr st (RArrayElement ne e) =
  let
    (chain, st') = resolveNameExpr st ne
    (v, st'') = evalExpr st' e
  in
    case v of
      RInt i -> (chain ++ [Right i], st'')
      _ -> arrayIndexError v

lookupNameExpr :: State -> NameExpr -> (Val, State)
lookupNameExpr st@(_, _, gs, ls) ne =
  let
    (chain, st') = resolveNameExpr st ne
  in
    case lookupChainIn Nothing ls chain of
      Just v -> (v, st')
      _ ->
        case lookupChainIn Nothing gs chain of
          Just v -> (v, st')
          _ -> error $ "undefined: " ++ show ne

evalExpr :: State -> Expr -> (Val, State)
evalExpr st (RVal v) = (v, st)
evalExpr st (RVar ne) = lookupNameExpr st ne
evalExpr st (RNot e1) =
  let 
    (v, st') = evalExpr st e1
  in
    case v of
      RBool b -> (RBool $ not b, st')
      _ -> negTypeError e1
evalExpr st (REq e1 e2) = 
  let
    (v,  st' ) = evalExpr st  e1
    (v', st'') = evalExpr st' e2
  in
    (RBool $ v == v', st'')
evalExpr st (RLT e1 e2) =
  let
    (v,  st' ) = evalExpr st  e1
    (v', st'') = evalExpr st' e2
  in
    case (v, v') of
      (RInt i1, RInt i2) -> (RBool $ i1 < i2, st'')
      (RFloat f1, RFloat f2) -> (RBool $ f1 < f2, st'')
      (RInt i, RFloat f) -> (RBool $ (fromIntegral i :: Float) < f, st'')
      (RFloat f, RInt i) -> (RBool $ f < (fromIntegral i :: Float), st'')
      _ -> compTypeError e1 e2
evalExpr st (RGT e1 e2) =
  let
    (v,  st' ) = evalExpr st  e1
    (v', st'') = evalExpr st' e2
  in
    case (v, v') of
      (RInt i1, RInt i2) -> (RBool $ i1 > i2, st'')
      (RFloat f1, RFloat f2) -> (RBool $ f1 > f2, st'')
      (RInt i, RFloat f) -> (RBool $ (fromIntegral i :: Float) > f, st'')
      (RFloat f, RInt i) -> (RBool $ f > (fromIntegral i :: Float), st'')
      _ -> compTypeError e1 e2
evalExpr st (RAdd e1 e2) =
  let
    (v,  st' ) = evalExpr st  e1
    (v', st'') = evalExpr st' e2
  in
    case (v, v') of
      (RInt i1, RInt i2) -> (RInt $ i1 + i2, st'')
      (RFloat f1, RFloat f2) -> (RFloat $ f1 + f2, st'')
      (RInt i, RFloat f) -> (RFloat $ (fromIntegral i :: Float) + f, st'')
      (RFloat f, RInt i) -> (RFloat $ f + (fromIntegral i :: Float), st'')
      _ -> arithTypeError "addition" e1 e2
evalExpr st (RSub e1 e2) =
  let
    (v,  st' ) = evalExpr st  e1
    (v', st'') = evalExpr st' e2
  in
    case (v, v') of
      (RInt i1, RInt i2) -> (RInt $ i1 - i2, st'')
      (RFloat f1, RFloat f2) -> (RFloat $ f1 - f2, st'')
      (RInt i, RFloat f) -> (RFloat $ (fromIntegral i :: Float) - f, st'')
      (RFloat f, RInt i) -> (RFloat $ f - (fromIntegral i :: Float), st'')
      _ -> arithTypeError "subtraction" e1 e2
evalExpr st (RInvoke n arg_exprs) =
  let
    evalExpr' (_, st') = evalExpr st'
    argscan = scanl evalExpr' (RBool False, st) arg_exprs
    argvals = tail $ map fst argscan
    final_st = snd $ last argscan
  in
    evalFunc final_st n argvals

evalCmd :: State -> Cmd -> (Maybe Val, State)
evalCmd st RSkip = (Nothing, st)
evalCmd (ss, fs, gs, ls) (RDeclare a srt) =
  (Nothing, (ss, fs, gs, M.insert a (srt, defaultVal ss srt) ls))
evalCmd st (RReturn e) = (Just ret, final_st)
  where (ret, final_st) = evalExpr st e
evalCmd st (RSeq c1 c2) =
  case (evalCmd st c1) of
    r@(Just _, _) -> r
    _             -> evalCmd (snd $ evalCmd st c1) c2
evalCmd st (RIte b c1 c2) =
  let
    (v, new_st) = evalExpr st b
  in
    case v of
      RBool True  -> evalCmd new_st c1
      RBool False -> evalCmd new_st c2
      _ -> iteTypeError b
evalCmd st (RAssign ne expr) =
  let
    (v, st') = evalExpr st expr
    (chain, (ss, fs, gs, ls)) = resolveNameExpr st' ne
  in
    case assignChainIn ls chain v of
      Just ls' -> (Nothing, (ss, fs, gs, ls'))
      Nothing ->
        case assignChainIn gs chain v of
          Just gs' -> (Nothing, (ss, fs, gs', ls))
          Nothing -> assignUndefError $ show ne

evalFunc :: State -> Name -> [Val] -> (Val, State)
evalFunc (ss, fs, gs, ls) n args =
  case M.lookup n fs of
    Just (argsorts, ret, body) | length argsorts == length args ->
      let
        assignArgs v (arg_n, srt)
          | srt == sortOf v = (arg_n, (srt, Just v))
          | otherwise       = error $ "Argument type mismatch in invocation of '" ++ n ++ "'"
        init_ls = M.fromList $ zipWith assignArgs args argsorts
        (result, (ss', fs', gs', _)) = 
          case evalCmd (ss, fs, gs, init_ls) body of
            (Just x1, x2) -> (x1, x2)
            _ -> error $ "Function '" ++ n ++ "' returned nothing"
      in
        if sortOf result == ret then (result, (ss', fs', gs', ls))
        else (error $ "Return value from '" ++ n ++ "' does not match return type")
    Just _ -> error $ "Number of arguments passed to '" ++ n ++ "' does not match signature"
    Nothing -> error $ "Invocation of undefined function '" ++ n ++ "'"

evalProgram :: State -> Program -> (Val, State)
evalProgram st (Program defs entry) =
  let
    addDefinition (RSortDef n fields) (ss, fs, gs, ls) =
      (M.insert n fields ss, fs, gs, ls)
    addDefinition (RGlobDef n v s) (ss, fs, gs, ls) =
      case v of
        Just v' -> (ss, fs, M.insert n (s, Just v')         gs, ls)
        Nothing -> (ss, fs, M.insert n (s, defaultVal ss s) gs, ls)
    addDefinition (RFuncDef n args ret body) (ss, fs, gs, ls) =
      (ss, M.insert n (args, ret, body) fs, gs, ls)
    init_st@(_, fs', _, _) = foldr addDefinition st defs
  in
    case M.lookup entry fs' of
      Just (_, _, body) ->
        case evalCmd init_st body of
          (Just x1, x2) -> (x1, x2)
          _ -> error $ "Entry function returned nothing"
      Nothing -> error $ "Entry function '" ++ entry ++ "' not defined"

rpcImpRun :: Program -> (Val, State)
rpcImpRun = evalProgram (M.empty, M.empty, M.empty, M.empty)

dumpState :: State -> String
dumpState (ss, fs, gs, _) =
  "Sorts:\n" ++ dumpSorts ++ "Functions:\n" ++ dumpFuncs ++ "Globals:\n" ++ dumpGlobals
  where
    dumpSorts   = M.foldrWithKey ss_acc "" ss
    dumpFuncs   = M.foldrWithKey fs_acc "" fs
    dumpGlobals = M.foldrWithKey gs_acc "" gs
    fieldType (n, t) = n ++ " : " ++ showSort t
    ss_acc key v s = 
      s ++ "  STRUCT " ++ key ++ " { " ++ intercalate ", " (map fieldType v) ++ " }\n"
    fs_acc key (args, ret, _) s =
      s ++ "  " ++ key ++ "(" ++ intercalate ", " (map fieldType args) ++ ") : " ++ showSort ret ++ "\n"
    gs_acc key v s =
      case v of 
        (t, Just val) ->
          s ++ "  " ++ showSort t ++ " " ++ key ++ " <- " ++ showVal val ++ "\n"
        (t, Nothing) ->
          s ++ "  " ++ showSort t ++ " " ++ key ++ "\n"

display :: (Val, State) -> String
display (ret, st) = "Output:   " ++ showVal ret ++ "\n" ++ dumpState st