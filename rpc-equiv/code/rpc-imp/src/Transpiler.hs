module Transpiler (transpile) where

import Data.List
import RpcImp

transpileSort :: Sort -> String
transpileSort RBoolSort = "bool"
transpileSort RIntSort = "int"
transpileSort RFloatSort = "double"
transpileSort (RStructSort n) = n

transpileVal :: Val -> String
transpileVal (RBool True) = "true"
transpileVal (RBool False) = "false"
transpileVal (RInt i) = show i
transpileVal (RFloat f) = show f
transpileVal (RStruct _ _) = error "struct value transpile unsupported"

transpileTyped :: (Name, Sort) -> String
transpileTyped (n, s) = transpileSort s ++ " " ++ n

transpileDecl :: (Name, Sort) -> String
transpileDecl (n, s) =  transpileTyped (n, s) ++ ";"

transpileExpr :: Expr -> String
transpileExpr e = "EXPR"

transpileBody :: Cmd -> String
transpileBody RSkip = ""
transpileBody (RSeq c1 c2) = transpileBody c1 ++ "\n    " ++ transpileBody c2 ++ "\n    "
transpileBody (RDeclare n s) = transpileDecl (n, s)
transpileBody (RAssign n e) = n ++ " = " ++ transpileExpr e ++ ";"
transpileBody (RMemberAssign n1 n2 e) = n1 ++ "." ++ n2 ++ " = " ++ transpileExpr e ++ ";"
transpileBody (RIte e c1 c2) = 
    "if (" ++ transpileExpr e ++ ") {\n    " ++ transpileBody c1 ++ "\n} else {\n    " ++ transpileBody c2 ++ "\n}"
transpileBody (RReturn e) = "return " ++ transpileExpr e ++ ";"

transpileDef :: Definition -> String
transpileDef (RSortDef n fields) =
  "typedef struct " ++ n ++ " {\n    " ++ intercalate "\n    " (map transpileDecl fields) ++ "\n} " ++ n ++ ";"
transpileDef (RGlobDef n v srt) =
  case v of
    Just v' -> transpileSort srt ++ " " ++ n ++ " = " ++ transpileVal v' ++ ";"
    Nothing -> transpileDecl (n, srt)
transpileDef (RFuncDef n args ret body) = 
    transpileSort ret ++ " " ++ n ++ " (" ++ intercalate ", " (map transpileTyped args) ++ ") {\n" ++ transpileBody body ++ "\n}"

transpile :: Program -> String
transpile (Program defs _) = "#include <stdbool.h>" ++ "\n\n" ++ (intercalate "\n\n" $ map transpileDef defs)