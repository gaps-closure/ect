module RpcImp where

import Data.Map as M

-- TODO:
-- add struct definition command, add struct definitions to state
-- support struct assignment operation, support struct usage in expressions
-- support function definitions, add functions to state
-- support function invocations, returns, scoping, global variables, main function

-- Syntax of an Rpc-IMP program --

type Var = String

data Sort =
    RBoolSort
  | RIntSort
  | RFloatSort
  deriving (Show)

data Val =
    RBool Bool
  | RInt Int
  | RFloat Float
  deriving (Eq, Show)

data Expr =
    RVal Val
  | RVar Var
  | RAdd Expr Expr
  | RNot Expr
  | REq Expr Expr
  | RLT Expr Expr
  | RGT Expr Expr
  deriving (Show)

data Cmd =
    RSkip
  | RDeclare Sort Var
  | RAssign Var Expr
  | RSeq Cmd Cmd
  | RIte Expr Cmd Cmd
  deriving (Show)

type State = M.Map Var (Sort, Maybe Val)