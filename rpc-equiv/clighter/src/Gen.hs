module Gen (genC) where

import Data.List

type Name = String
type TypeName = String 
type Signature = (Name, [TypeName], TypeName)
type Typed = (Name, TypeName)

mkTyped :: Typed -> String
mkTyped (n, s) = s ++ " " ++ n

mkDecl :: Typed -> String
mkDecl d = mkTyped d ++ ";"

funToC :: (Name, [Typed], TypeName, [String]) -> String
funToC (n, args, ret, body) =
  mkTyped (n, ret) ++ "("
    ++ intercalate ", " (map mkTyped args) ++ ") {\n    "
    ++ intercalate "\n    " body ++ "\n}"

structToC :: (Name, [Typed]) -> String
structToC (n, fields) =
  "typedef struct " ++ n ++ " {\n    "
    ++ intercalate "\n    " (map mkDecl fields) ++ "\n} " ++ n ++ ";"

genC :: Signature -> String
genC (n, args, ret) =
  let
    wrapper_n = "_wrapper_" ++ n
    handler_n = "_handler_" ++ n
    argnames = map (\i -> "arg" ++ show i) [0..(length args - 1)]
    named_args = zip argnames args

    def_trailer = ("trailer", [("err", "bool"), ("seq", "int")])
    def_m_args  = ("m_args", named_args ++ [("t", "trailer")])
    def_m_ret   = ("m_ret", [("res", ret), ("t", "trailer")])

    marshal_args_body = 
      [
        mkDecl ("argmarshal", "m_args")
      ] ++ (map (\a -> "argmarshal." ++ a ++ " = " ++ a ++ ";") argnames) ++ [
        "argmarshal.t.err = false;"
      , "argmarshal.t.seq = 1;"
      , "return argmarshal;"
      ]
    marshal_args = ("marshal_args", named_args, "m_args", marshal_args_body)

    marshal_ret_body = 
      [
        mkDecl ("retmarshal", "m_ret")
      , "retmarshal.res = res;"
      , "retmarshal.t.err = false;"
      , "retmarshal.t.seq = 1;"
      , "return retmarshal;"
      ]
    marshal_ret = ("marshal_ret", [("res", ret)], "m_ret", marshal_ret_body)

    handler_body =
      (map mkDecl named_args) ++
      (map (\a -> a ++ " = argmarshal." ++ a ++ ";") argnames) ++ 
      [
        mkDecl ("res", ret)
      , "res = " ++ n ++ "(" ++ intercalate ", " argnames ++ ");"
      , mkDecl ("retmarshal", "m_ret")
      , "return marshal_ret(res);"
      ]
    handler = (handler_n, [("argmarshal", "m_args")], "m_ret", handler_body)

    wrapper_body = 
      [
        mkDecl ("argmarshal", "m_args")
      , "argmarshal = marshal_args(" ++ intercalate ", " argnames ++ ");"
      , mkDecl ("retmarshal", "m_ret")
      , "retmarshal = " ++ handler_n ++ "(argmarshal);"
      , "return retmarshal.res;"
      ]
    wrapper = (wrapper_n, named_args, ret, wrapper_body)

    structs = [ def_trailer, def_m_args, def_m_ret ]
    funs = [ marshal_args, marshal_ret, handler, wrapper ]
    header = "#include <stdbool.h>\n#include <stdio.h>\n\n"
  in
    header ++ (intercalate "\n\n" $ map structToC structs ++ map funToC funs)