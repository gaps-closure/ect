module Tests (interpreterTests) where

import Parser
import RpcImp

interpreterTests :: [(Program, String)]
interpreterTests = [itest1]

int, bool, float :: Sort
(int, bool, float) = (mkIntSort, mkBoolSort, mkFloatSort)

x, y, z :: String
(x, y, z) = ("x", "y", "z")

itest1 :: (Program, String)
itest1 =
  let
    (tup, tupDef) = mkStructSort "tup" [("fst", int), ("snd", float)]
    (q, qDef) = declGlob "q" int
    dbl =
        mkFunc "dbl" [(x, int)] int [
          declare' y int
        , y ^<- (x ^+ x)
        , return' y
        ]
    gen_main =
        mkFunc "main" [] bool [
          declare' x int
        , declare' y tup
        , declare' z bool
        , q ^<- (5 :: Int)
        , x ^<- (invoke' dbl [q])
        , (y ^. "fst") ^<- (x ^+ q)
        , ite' ((y ^. "fst") ^> (14 :: Int)) (z ^<- True) (z ^<- False)
        , return' z
        ]
  in
    (Program [tupDef, qDef, dbl, gen_main] "main", "True")