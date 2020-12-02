{-

Template Haskell code for generating various Z3-type-related boilerplate

-}

module Z3TypeGenerator where

import Language.Haskell.TH

initProofEnv :: [Q Stmt] -> Q Exp -> Q Exp
initProofEnv stmts finalExpr = do
  stmts' <- sequence stmts
  finalExpr' <- finalExpr
  return $ DoE $
    stmts' ++ [NoBindS $ AppE (VarE $ mkName "return") finalExpr']
