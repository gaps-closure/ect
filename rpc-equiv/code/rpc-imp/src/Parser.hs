{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

module Parser where

import RpcImp

type Prog = [Cmd]

-- Syntactic sugar for constructing RpcIMP programs --

class Primitive a where
  asExpr :: a -> Expr
  (^<-) :: String -> a -> Cmd
  (^==) :: (Primitive b) => a -> b -> Expr
  (^+)  :: (Primitive b) => a -> b -> Expr
  (^<)  :: (Primitive b) => a -> b -> Expr
  (^>)  :: (Primitive b) => a -> b -> Expr
  (^<=) :: (Primitive b) => a -> b -> Expr
  (^>=) :: (Primitive b) => a -> b -> Expr
  (^/=) :: (Primitive b) => a -> b -> Expr

  s1 ^<- p1 = RAssign s1 $ asExpr p1
  p1 ^== p2 = REq  (asExpr p1) (asExpr p2)
  p1 ^+  p2 = RAdd (asExpr p1) (asExpr p2)
  p1 ^<  p2 = RLT  (asExpr p1) (asExpr p2)
  p1 ^>  p2 = RGT  (asExpr p1) (asExpr p2)
  p1 ^<= p2 = RNot $ p1 ^>  p2
  p1 ^>= p2 = RNot $ p1 ^<  p2
  p1 ^/= p2 = RNot $ p1 ^== p2

instance Primitive Bool where
  asExpr b = RVal $ RBool b

instance Primitive Int where
  asExpr i = RVal $ RInt i

instance Primitive Float where
  asExpr f = RVal $ RFloat f

instance Primitive String where
  asExpr s = RVar s

instance Primitive Expr where
  asExpr e = e

if' :: Expr -> Cmd -> Cmd
if' b c = RIte b c RSkip

ite' :: Expr -> Cmd -> Cmd -> Cmd
ite' = RIte

decl :: String -> String -> Cmd
decl "BOOL"  n = RDeclare RBoolSort n
decl "INT"   n = RDeclare RIntSort n
decl "FLOAT" n = RDeclare RFloatSort n
decl t n = 
    error $ "parse error: unknown sort '" ++ t ++ "' for variable '" ++ n ++ "'"

parse :: Prog -> Cmd
parse [] = RSkip
parse (c:cs) = RSeq c $ parse cs