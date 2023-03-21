{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

module Parser where

import RpcImp
import Data.List

-- Syntactic sugar for constructing RpcIMP programs --

class IsName a where
  asNameExpr :: a -> NameExpr
  (^.) :: a -> String -> NameExpr
  st ^. fld = RStructMember (asNameExpr st) fld

instance IsName String where
  asNameExpr s = RName s

instance IsName NameExpr where
  asNameExpr ne = ne

class Primitive a where
  asExpr :: a -> Expr
  return' :: a -> Cmd
  if' :: a -> Cmd -> Cmd
  ite' :: a -> Cmd -> Cmd -> Cmd
  invoke' :: Definition -> [a] -> Expr
  invokeLinked' :: String -> [a] -> Expr
  
  (^<-) :: (IsName b) => b -> a -> Cmd
  (^@)  :: (IsName b) => b -> a -> NameExpr
  (^==) :: (Primitive b) => a -> b -> Expr
  (^+)  :: (Primitive b) => a -> b -> Expr
  (^-)  :: (Primitive b) => a -> b -> Expr
  (^<)  :: (Primitive b) => a -> b -> Expr
  (^>)  :: (Primitive b) => a -> b -> Expr
  (^<=) :: (Primitive b) => a -> b -> Expr
  (^>=) :: (Primitive b) => a -> b -> Expr
  (^/=) :: (Primitive b) => a -> b -> Expr

  return' p = RReturn (asExpr p)
  if' b c = RIte (asExpr b) c RSkip
  ite' b = RIte (asExpr b)
  invoke' (RFuncDef n _ _ _) args = RInvoke n (map asExpr args)
  invoke' _ _ = error "parse error: non-function is invoked"
  invokeLinked' n args = RInvoke n (map asExpr args)

  ne ^<- p1 = RAssign (asNameExpr ne) $ asExpr p1
  arr ^@ i  = RArrayElement (asNameExpr arr) $ asExpr i
  p1 ^== p2 = REq  (asExpr p1) (asExpr p2)
  p1 ^+  p2 = RAdd (asExpr p1) (asExpr p2)
  p1 ^-  p2 = RSub (asExpr p1) (asExpr p2)
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
  asExpr s = RVar $ RName s

instance Primitive NameExpr where
  asExpr ne = RVar ne

instance Primitive Expr where
  asExpr e = e

declare' :: String -> Sort -> Cmd
declare' n srt = RDeclare n srt

mkBoolSort :: Sort
mkBoolSort = RBoolSort

mkIntSort :: Sort
mkIntSort = RIntSort

mkFloatSort :: Sort
mkFloatSort = RFloatSort

mkStructSort :: String -> [(String, Sort)] -> (Sort, Definition)
mkStructSort n fields = 
  let
    dups xs = length (nub xs) /= length xs
  in
    if dups (map fst fields) then
      (error $ "Duplicate field names in struct definition")
    else
      (RStructSort n, RSortDef n fields)

mkArraySort :: Sort -> Int -> Sort
mkArraySort s i = RArraySort s i

declGlob :: String -> Sort -> (String, Definition)
declGlob n srt = (n, RGlobDef n Nothing srt)

initGlob :: String -> Sort -> Val -> (String, Definition)
initGlob n srt v = (n, RGlobDef n (Just v) srt)

mkFunc :: String -> [(String, Sort)] -> Sort -> [Cmd] -> Definition
mkFunc n args ret cs = RFuncDef n args ret $ toSeq cs
  where
    toSeq [c@(RReturn _)] = c
    toSeq (c:cs') = RSeq c $ toSeq cs'
    toSeq _ = error $ "Function '" ++ n ++ "' must return a value"