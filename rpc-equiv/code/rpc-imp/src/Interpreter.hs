module Interpreter (rpcImpRun, display) where

import Data.Map as M hiding (map, foldr)
import Data.List
import RpcImp

-- Rpc-IMP interpreter error messages --

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

assignTypeError :: Val -> String -> Sort -> a
assignTypeError v a s = 
  error $ 
    "type error: mismatched types for assignment of '" 
      ++ show v ++ "' to '" ++ a ++ "' which has type '" ++ show s ++ "'"

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

useDefError :: String -> a
useDefError n =
  error $
    "undef error: identifier '"
      ++ n ++ "' is used before it is defined and given a value"

assignUndefError :: String -> a
assignUndefError n =
  error $
    "undef error: identifier '"
      ++ n ++ "' is assigned to before it is defined"

-- Interpreter for an Rpc-IMP program --

type SortTable = M.Map Name [(Name, Sort)]
type VarTable  = M.Map Name (Sort, Maybe Val)
type FuncTable = M.Map Name ([(Name, Sort)], Sort, Cmd)

type State = (SortTable, FuncTable, VarTable, VarTable)

sortOf :: Val -> Sort
sortOf (RBool _)      = RBoolSort
sortOf (RInt _)       = RIntSort
sortOf (RFloat _)     = RFloatSort
sortOf (RStruct n _)  = RStructSort n
sortOf (RArray s i _) = RArraySort s i

lookupVar :: State -> Name -> Val
lookupVar (_, _, gs, ls) n =
  case M.lookup n ls of
    Just (_, Just v) -> v
    Just (_, Nothing) -> useDefError n
    Nothing ->
      case M.lookup n gs of
        Just (_, Just v) -> v
        _ -> useDefError n

evalExpr :: State -> Expr -> (Val, State)
evalExpr st (RVal v) = (v, st)
evalExpr st (RVar name) = (lookupVar st name, st) -- TODO: name is a NameExpr now, resolve
evalExpr st (RAccess name field) = -- TODO: RAccess DNE, bundle functionality into the above case
  case lookupVar st name of
    RStruct _ fields ->
      case find (\(n, _) -> n == field) fields of
        Just (_, Just v) -> (v, st)
        Just _ -> (useDefError field, st)
        Nothing -> error $ "Struct '" ++ name ++ "' has no field '" ++ field ++ "'"
    _ -> error $ "Member access on '" ++ name ++ "' which is not a struct"
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
  let
    newvar =
      case srt of
        RStructSort n ->
          (srt, Just $ RStruct n emptyfields)
          where
            emptyfields = 
              case M.lookup n ss of
                Just fields -> map (\(fn, _) -> (fn, Nothing)) fields 
                _ -> error $ "Struct type '" ++ n ++ "' is not defined"
        _ -> (srt, Nothing)
  in
    (Nothing, (ss, fs, gs, M.insert a newvar ls))
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
evalCmd st (RAssign a expr) =
  let
    (v, (ss, fs, gs, ls)) = evalExpr st expr
  in
    -- TODO: a is a NameExpr now, resolve the name before assigning to map
    case M.lookup a ls of
      Just (srt, _) | sortOf v == srt -> (Nothing, (ss, fs, gs, M.insert a (srt, Just v) ls))
      Just (srt, _) -> assignTypeError v a srt
      Nothing ->
        case M.lookup a gs of
          Just (srt, _) | sortOf v == srt -> (Nothing, (ss, fs, M.insert a (srt, Just v) gs, ls))
          Just (srt, _) -> assignTypeError v a srt
          Nothing -> assignUndefError a
evalCmd st (RMemberAssign n field expr) = -- TODO: RMemberAssign DNE, bundle functionality into above case
  let
    (v, (ss, fs, gs, ls)) = evalExpr st expr
    updateVarTable tb srt sv =
      case sv of
        Just (RStruct sn fields) ->
          let
            -- TODO: type-check this assignment
            -- And validate that the field name actually exists
            fields' = map (\(fn, fv) -> (fn, if fn == field then (Just v) else fv)) fields
            sv' = Just $ RStruct sn fields'
          in
            M.insert n (srt, sv') tb
        _ -> error $ "Variable '" ++ n ++ "' is not a struct"
    st' =
      case M.lookup n ls of
        Just (srt, sv) -> (ss, fs, gs, updateVarTable ls srt sv)
        Nothing ->
          case M.lookup n gs of
            Just (srt, sv) -> (ss, fs, updateVarTable gs srt sv, ls)
            Nothing -> assignUndefError n
  in
    (Nothing, st')

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
      (ss, fs, M.insert n (s, v) gs, ls)
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
showVal (RArray vs) =
  "[" ++ intercalate ", " (map showElement vs) ++ "]"
  where
    showElement (Just v) = showVal v
    showElement _ = "_"

dumpState :: State -> String
dumpState (ss, fs, gs, _) =
  "Sorts:\n" ++ dumpSorts ++ "\nFunctions:\n" ++ dumpFuncs ++ "\nGlobals:\n" ++ dumpGlobals
  where
    dumpSorts   = M.foldrWithKey ss_acc "" ss
    dumpFuncs   = M.foldrWithKey fs_acc "" fs
    dumpGlobals = M.foldrWithKey gs_acc "" gs
    fieldType (n, t) = n ++ " : " ++ showSort t
    ss_acc key v s = 
      s ++ "STRUCT " ++ key ++ " { " ++ intercalate ", " (map fieldType v) ++ " }\n"
    fs_acc key (args, ret, _) s =
      s ++ key ++ "(" ++ intercalate ", " (map fieldType args) ++ ") : " ++ showSort ret ++ "\n"
    gs_acc key v s =
      case v of 
        (t, Just val) ->
          s ++ showSort t ++ " " ++ key ++ " <- " ++ showVal val ++ "\n"
        (t, Nothing) ->
          s ++ showSort t ++ " " ++ key ++ "\n"

display :: (Val, State) -> String
display (ret, st) = "\nOutput:\n" ++ showVal ret ++ "\n\n" ++ dumpState st