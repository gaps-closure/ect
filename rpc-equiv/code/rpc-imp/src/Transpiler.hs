module Transpiler (transpile) where

import Data.List
import RpcImp

transpileSort :: Sort -> String
transpileSort RBoolSort       = "bool"
transpileSort RIntSort        = "int"
transpileSort RFloatSort      = "double"
transpileSort (RStructSort n) = n
transpileSort (RArraySort s i) = transpileSort s ++ "[" ++ show i ++ "]"

transpileTyped :: (Name, Sort) -> String
transpileTyped (n, s) = transpileSort s ++ " " ++ n

transpileDecl :: (Name, Sort) -> String
transpileDecl (n, s) = transpileTyped (n, s) ++ ";"

transpileVal :: Val -> String
transpileVal (RBool True)   = "true"
transpileVal (RBool False)  = "false"
transpileVal (RInt i)       = show i
transpileVal (RFloat f)     = show f
transpileVal (RStruct _ _)  = error "struct value transpile unsupported"
transpileVal (RArray _ _ _) = error "array value transpile unsupported"

transpileNameExpr :: NameExpr -> String
transpileNameExpr (RName n) = n
transpileNameExpr (RStructMember ne n) = transpileNameExpr ne ++ "." ++ n
transpileNameExpr (RArrayElement ne e) = transpileNameExpr ne ++ "[" ++ transpileExpr e ++ "]"

transpileExpr :: Expr -> String
transpileExpr (RVal v)         = transpileVal v
transpileExpr (RVar ne)        = transpileNameExpr ne
transpileExpr (RAdd e1 e2)     = "("  ++ transpileExpr e1 ++ " + "  ++ transpileExpr e2 ++ ")"
transpileExpr (RSub e1 e2)     = "("  ++ transpileExpr e1 ++ " - "  ++ transpileExpr e2 ++ ")"
transpileExpr (RNot e1)        = "!(" ++ transpileExpr e1 ++ ")"
transpileExpr (REq e1 e2)      = "("  ++ transpileExpr e1 ++ " == " ++ transpileExpr e2 ++ ")"
transpileExpr (RLT e1 e2)      = "("  ++ transpileExpr e1 ++ " < "  ++ transpileExpr e2 ++ ")"
transpileExpr (RGT e1 e2)      = "("  ++ transpileExpr e1 ++ " > "  ++ transpileExpr e2 ++ ")"
transpileExpr (RInvoke n args) = n ++ "(" ++ intercalate ", " (map transpileExpr args) ++ ")"

indent :: Int -> String
indent n = replicate n ' '

transpileBody :: Int -> Cmd -> String
transpileBody _ RSkip = ""
transpileBody i (RSeq c1 c2) = transpileBody i c1 ++ "\n" ++ transpileBody i c2
transpileBody i (RDeclare n s) =
  indent i 
    ++ transpileDecl (n, s)
transpileBody i (RAssign ne e) = 
  indent i
    ++ transpileNameExpr ne ++ " = " 
    ++ transpileExpr e ++ ";"
transpileBody i (RIte e c1 c2) =
  indent i
    ++ "if (" ++ transpileExpr e 
    ++ ") {\n" ++ transpileBody (i + 4) c1 
    ++ "\n" ++ indent i ++ "} else {\n" ++ transpileBody (i + 4) c2 
    ++ "\n" ++ indent i ++ "}"
transpileBody i (RReturn e) =
  indent i
    ++ "return "
    ++ transpileExpr e ++ ";"

transpileDef :: Definition -> String
transpileDef (RSortDef n fields) =
  "typedef struct " ++ n ++ " {\n    "
    ++ intercalate "\n    " (map transpileDecl fields) ++ "\n} " ++ n ++ ";"
transpileDef (RGlobDef n v srt) =
  case v of
    Just v' -> transpileTyped (n, srt) ++ " = " ++ transpileVal v' ++ ";"
    Nothing -> transpileDecl (n, srt)
transpileDef (RFuncDef n args ret body) =
  transpileTyped (n, ret) ++ "("
    ++ intercalate ", " (map transpileTyped args) ++ ") {\n"
    ++ transpileBody 4 body ++ "\n}"

transpile :: Program -> String
transpile (Program defs _) =
  "#include <stdbool.h>" ++ "\n\n" 
    ++ (intercalate "\n\n" $ map transpileDef defs)