import Interpreter
import Parser
import RpcImp
import Transpiler

import System.Environment

type Signature = (Name, [Sort], Sort)

strToSort :: String -> Sort
strToSort "int" = mkIntSort
strToSort "bool" = mkBoolSort
strToSort "float" = mkFloatSort
strToSort s = error $ "argument '" ++ s ++ "' is not a type"
-- TODO: support "linked" struct types of the form 
-- "structname(a:int,b:bool,s:innerstruct(z:int,x:float))"

genProgram :: Signature -> Program
genProgram (n, args, ret) = 
  let
    wrapper_n = "_rpc_"     ++ n
    handler_n = "_handler_" ++ n
    argnames = map (\i -> "arg" ++ show i) [0..(length args - 1)]
    named_args = zip argnames args

    (int, bool) = (mkIntSort, mkBoolSort)

    (trailer, def_trailer) = mkStructSort "trailer" [("err", bool), ("seq", int)]
    (m_args, def_m_args)   = mkStructSort "m_args" $ named_args ++ [("t", trailer)]
    (m_ret, def_m_ret)     = mkStructSort "m_ret" [("res", ret), ("t", trailer)]

    marshal_args =
      let
        m = "argmarshal"
        struct_assigns = map (\a -> (m ^. a) ^.<- a) argnames
      in
        mkFunc "marshal_args" named_args m_args $ [
          declare' m m_args
        ] ++ struct_assigns ++ [
          -- TODO: support nested struct assign
          -- set trailer err to false
          -- set trailer seq to 1
          return' m
        ]
    marshal_ret =
      let
        m = "retmarshal"
        res = "res"
      in
        mkFunc "marshal_ret" [(res, ret)] m_ret $ [
          declare' m m_ret
        , (m ^. res) ^.<- res
        , 
          -- TODO: support nested struct assign
          -- set trailer err to false
          -- set trailer seq to 1
          return' m
        ]
    handler =
      let
        m = "argmarshal"
        m2 = "retmarshal"
        res = "res"
        arg_decls = map (\(a, srt) -> declare' a srt) named_args
        arg_assigns = map (\a -> a ^<- (m ^. a)) argnames
      in
        mkFunc handler_n [(m, m_args)] m_ret $
          arg_decls ++ 
          arg_assigns ++ [
          declare' res ret
        , res ^<- (invokeLinked n argnames)
        , declare' m2 m_ret
        , m2 ^<- (invoke' marshal_ret [res])
        , return' m2
        ]
    wrapper =
      let
        m = "argmarshal"
        m2 = "retmarshal"
        res = "res"
      in
        mkFunc wrapper_n named_args ret [
          declare' m m_args
        , m ^<- (invoke' marshal_args argnames)
        , declare' m2 m_ret
        , m2 ^<- (invoke' handler [m])
        , declare' res ret
        , res ^<- (m2 ^. res)
        , return' res
        ]
  in
    Program
      [ def_trailer, def_m_args, def_m_ret
      , marshal_args, marshal_ret
      , handler, wrapper ] ""

runProgram :: Program -> IO ()
runProgram prog = putStrLn $ display $ rpcImpRun prog

usage :: IO ()
usage = putStrLn "usage: ./rpc-imp fxn_name [arg_type]+ ret_type"

main :: IO ()
main = do
  args <- getArgs
  case args of
    []  -> usage
    [_] -> usage
    (n:params) ->
      writeFile "transpiled.c" $ transpile $ genProgram sig
      where 
        sig = (n, map strToSort $ init params, strToSort $ last params)

-- sample :: Program
-- sample =
--   let 
--     (int, bool, float) = (mkIntSort, mkBoolSort, mkFloatSort)
--     (tup, tupDef) = mkStructSort "tup" [("fst", int), ("snd", float)]
--     (q, qDef) = declGlob "q" int
--     dbl =
--       let
--         (num, num2) = ("num", "num2")
--       in
--         mkFunc "dbl" [(num, int)] int [
--           declare' num2 int
--         , num2 ^<- (num ^+ num)
--         , return' num2
--         ]
--     gen_main = 
--       let
--         (x, y, z) = ("x", "y", "z")
--       in
--         mkFunc "main" [] bool [
--           declare' x int
--         , declare' y tup
--         , declare' z bool
--         , q ^<- (5 :: Int)
--         , x ^<- (invoke' dbl [q])
--         , (y ^. "fst") ^.<- (x ^+ q)
--         , ite' ((y ^. "fst") ^> (14 :: Int)) (z ^<- True) (z ^<- False)
--         , return' z
--         ]
--   in
--     Program [tupDef, qDef, dbl, gen_main] "main"