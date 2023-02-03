module Interpreter (rpcImpRun, display) where

import Data.Map as M
import RpcImp

-- Rpc-IMP interpreter error messages --

iteTypeError :: Expr -> State
iteTypeError e = 
  error $
    "type error: if-then-else condition '" 
      ++ show e ++ "' is not a boolean expression"

compTypeError :: Expr -> Expr -> Val
compTypeError e1 e2 = 
  error $
    "type error: invalid types for comparision between expressions '"
     ++ show e1 ++ "' and '" ++ show e2 ++ "'"

assignTypeError :: Expr -> String -> State
assignTypeError v a = 
  error $ 
    "type error: mismatched types for assignment of '" 
      ++ show v ++ "' to '" ++ a ++ "'"

addTypeError :: Expr -> Expr -> Val
addTypeError e1 e2 =
  error $
    "type error: invalid types for addition between expressions '"
      ++ show e1 ++ "' and '" ++ show e2 ++ "'"

negTypeError :: Expr -> Val
negTypeError e =
  error $
    "type error: negated term '"
      ++ show e ++ "' is not a boolean expression"

useDefError :: String -> Val
useDefError n =
  error $
    "undef error: identifier '"
      ++ n ++ "' is used before it is defined and given a value"

assignUndefError :: String -> State
assignUndefError n =
  error $
    "undef error: identifier '"
      ++ n ++ "' is assigned to before it is defined"

-- Interpreter for an Rpc-IMP program --

evalExpr :: State -> Expr -> Val
evalExpr _ (RVal v)     = v
evalExpr s (RVar name)  =
  case M.lookup name s of
    Just (_, Just v) -> v
    Just (_, Nothing) -> useDefError name
    Nothing -> useDefError name
evalExpr s (RNot e1)    =
  case (evalExpr s e1) of
    RBool b -> RBool $ not b
    _ -> negTypeError e1
evalExpr s (REq e1 e2)  = RBool $ evalExpr s e1 == evalExpr s e2
evalExpr s (RLT e1 e2)  =
  case (evalExpr s e1, evalExpr s e2) of
    (RInt i1, RInt i2) -> RBool $ i1 < i2
    (RFloat f1, RFloat f2) -> RBool $ f1 < f2
    (RInt i, RFloat f) -> RBool $ (fromIntegral i :: Float) < f
    (RFloat f, RInt i) -> RBool $ f < (fromIntegral i :: Float)
    _ -> compTypeError e1 e2
evalExpr s (RGT e1 e2)  =
  case (evalExpr s e1, evalExpr s e2) of
    (RInt i1, RInt i2) -> RBool $ i1 > i2
    (RFloat f1, RFloat f2) -> RBool $ f1 > f2
    (RInt i, RFloat f) -> RBool $ (fromIntegral i :: Float) > f
    (RFloat f, RInt i) -> RBool $ f > (fromIntegral i :: Float)
    _ -> compTypeError e1 e2
evalExpr s (RAdd e1 e2) =
  case (evalExpr s e1, evalExpr s e2) of
    (RInt i1, RInt i2) -> RInt $ i1 + i2
    (RFloat f1, RFloat f2) -> RFloat $ f1 + f2
    (RInt i, RFloat f) -> RFloat $ (fromIntegral i :: Float) + f
    (RFloat f, RInt i) -> RFloat $ f + (fromIntegral i :: Float)
    _ -> addTypeError e1 e2

evalCmd :: State -> Cmd -> State
evalCmd s  RSkip         = s
evalCmd s (RDeclare t a) = M.insert a (t, Nothing) s
evalCmd s (RAssign a v)  = 
  case M.lookup a s of
    Just (sort, _) ->
      case (sort, evalExpr s v) of
        (RBoolSort, b@(RBool _))   -> M.insert a (sort, Just b) s
        (RIntSort, i@(RInt _))     -> M.insert a (sort, Just i) s
        (RFloatSort, f@(RFloat _)) -> M.insert a (sort, Just f) s
        _ -> assignTypeError v a
    Nothing -> assignUndefError a
evalCmd s (RSeq c1 c2)   = evalCmd (evalCmd s c1) c2
evalCmd s (RIte b c1 c2) =
  case evalExpr s b of
    RBool True  -> evalCmd s c1
    RBool False -> evalCmd s c2
    _ -> iteTypeError b

rpcImpRun :: Cmd -> State
rpcImpRun = evalCmd M.empty

display :: State -> String
display st =
  M.foldrWithKey acc "" st
  where 
    showT (RBoolSort) = "BOOL"
    showT (RIntSort) = "INT"
    showT (RFloatSort) = "FLOAT"
    showV (RBool b)  = show b
    showV (RInt i)   = show i
    showV (RFloat f) = show f
    acc key v s = 
      case v of 
        (t, Just val) ->
          s ++ showT t ++ " " ++ key ++ " <- " ++ showV val ++ "\n"
        (t, Nothing) ->
          s ++ showT t ++ " " ++ key ++ "\n"