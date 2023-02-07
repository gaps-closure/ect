module RpcImp where

-- Syntax of an Rpc-IMP program --

type Name = String

data Sort =
    RBoolSort
  | RIntSort
  | RFloatSort
  | RStructSort Name
  deriving (Eq, Show)

data Val =
    RBool Bool
  | RInt Int
  | RFloat Float
  | RStruct Name [(Name, Maybe Val)]
  deriving (Eq, Show)

data Expr =
    RVal Val
  | RVar Name
  | RAccess Name Name
  | RAdd Expr Expr
  | RSub Expr Expr
  | RNot Expr
  | REq Expr Expr
  | RLT Expr Expr
  | RGT Expr Expr
  | RInvoke Name [Expr]
  deriving (Show)

data Cmd =
    RSkip
  | RSeq Cmd Cmd
  | RDeclare Name Sort
  | RAssign Name Expr
  | RMemberAssign Name Name Expr
  | RIte Expr Cmd Cmd
  | RReturn Expr
  deriving (Show)

data Definition =
    RSortDef Name [(Name, Sort)]
  | RGlobDef Name (Maybe Val) Sort
  | RFuncDef Name [(Name, Sort)] Sort Cmd

data Program = Program [Definition] Name