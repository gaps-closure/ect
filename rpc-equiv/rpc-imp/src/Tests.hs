module Tests (allTests) where

import Parser
import RpcImp

int, bool, float :: Sort
(int, bool, float) = (mkIntSort, mkBoolSort, mkFloatSort)

x, y, z :: String
(x, y, z) = ("x", "y", "z")

allTests :: [(Int, (Program, String))]
allTests = 
  zip [0..] [test0, test1, test2]

test0 :: (Program, String)
test0 =
  let
    (tup, tup_d) = mkStructSort "tup" [("fst", int), ("snd", float)]
    (q, q_d) = declGlob "q" int
    dbl =
      mkFunc "dbl" [(x, int)] int [
        declare' y int
      , y ^<- (x ^+ x)
      , return' y
      ]
    main =
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
    (Program [tup_d, q_d, dbl, main] "main", "True")

test1 :: (Program, String)
test1 =
  let
    int_arr = mkArraySort int 5
    (s1, s1_d) = mkStructSort "s1" [("f1", bool), ("f2", int_arr)]
    (s2, s2_d) = mkStructSort "s2" [("f1", s1), ("f2", int)]
    main =
      mkFunc "main" [] int [
        declare' x s1
      , declare' y s2
      , declare' z int_arr
      , z ^@ (3 :: Int) ^<- (200 :: Int)
      , z ^@ (0 :: Int) ^<- (-1 :: Int)
      , x ^. "f1" ^<- True
      , x ^. "f2" ^@ (0 :: Int) ^<- (z ^@ (0 :: Int))
      , x ^. "f2" ^@ (3 :: Int) ^<- (z ^@ (3 :: Int))
      , y ^. "f1" ^<- x
      , y ^. "f2" ^<- (((x ^. "f2") ^@ ((z ^@ (0 :: Int)) ^+ (4 :: Int))) ^- (((y ^. "f1") ^. "f2") ^@ (0 :: Int)))
      , return' (y ^. "f2")
      ]
  in
    (Program [s1_d, s2_d, main] "main", "201")

test2 :: (Program, String)
test2 =
  let
    int_arr = mkArraySort int 5
    (s1, s1_d) = mkStructSort "s1" [("f1", bool), ("f2", int_arr)]
    (s2, s2_d) = mkStructSort "s2" [("f1", s1), ("f2", int)]
    fetch =
      mkFunc "fetch" [(x, int_arr), (y, s1), (z, s2)] int [
        y ^. "f1" ^<- False
      , return' $ ((y ^. "f2") ^@ ((x ^@ (0 :: Int)) ^+ (4 :: Int))) ^- (((z ^. "f1") ^. "f2") ^@ (0 :: Int))
      ]
    main =
      mkFunc "main" [] int [
        declare' x s1
      , declare' y s2
      , declare' z int_arr
      , z ^@ (3 :: Int) ^<- (200 :: Int)
      , z ^@ (0 :: Int) ^<- (-1 :: Int)
      , x ^. "f1" ^<- True
      , x ^. "f2" ^@ (0 :: Int) ^<- (z ^@ (0 :: Int))
      , x ^. "f2" ^@ (3 :: Int) ^<- (z ^@ (3 :: Int))
      , y ^. "f1" ^<- x
      , y ^. "f2" ^<- (invoke' fetch [z, x, y])
      , declare' "ret" int
      , ite' (x ^. "f1" ^== True) ("ret" ^<- (y ^. "f2")) ("ret" ^<- (0 :: Int))
      , return' "ret"
      ]
  in
    (Program [s1_d, s2_d, fetch, main] "main", "201")