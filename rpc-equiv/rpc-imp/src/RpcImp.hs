module RpcImp where

-- Syntax of an Rpc-IMP program --

type Name = String

data Sort =
    RBoolSort
  | RIntSort
  | RFloatSort
  | RStructSort Name
  | RArraySort Sort Int
  deriving (Eq, Show)

data Val =
    RBool Bool
  | RInt Int
  | RFloat Float
  | RStruct Name [(Name, Maybe Val)]
  | RArray Sort Int [Maybe Val]
  deriving (Eq, Show)

data NameExpr =
    RName Name
  | RStructMember NameExpr Name
  | RArrayElement NameExpr Expr
  deriving (Show)

data Expr =
    RVal Val
  | RVar NameExpr
  | RAdd Expr Expr
  | RSub Expr Expr
  | RAnd Expr Expr
  | ROr Expr Expr
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
  | RAssign NameExpr Expr
  | RIte Expr Cmd Cmd
  | RReturn Expr
  deriving (Show)

data Definition =
    RSortDef Name [(Name, Sort)]
  | RGlobDef Name (Maybe Val) Sort
  | RFuncDef Name [(Name, Sort)] Sort Cmd

data Program = Program [Definition] Name