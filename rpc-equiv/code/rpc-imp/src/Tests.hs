module Tests where

import Parser
import RpcImp

interpreterTests :: [(Program, String)]
interpreterTests = [itest1]

itest1 :: (Program, String)
itest1 =
  let
    (int, bool, float) = (mkIntSort, mkBoolSort, mkFloatSort)
    (tup, tupDef) = mkStructSort "tup" [("fst", int), ("snd", float)]
    (q, qDef) = declGlob "q" int
    dbl =
      let
        (num, num2) = ("num", "num2")
      in
        mkFunc "dbl" [(num, int)] int [
          declare' num2 int
        , num2 ^<- (num ^+ num)
        , return' num2
        ]
    gen_main = 
      let
        (x, y, z) = ("x", "y", "z")
      in
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