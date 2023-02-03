import Interpreter
import Parser

runProgram :: Prog -> IO ()
runProgram cs = putStrLn $ display $ rpcImpRun $ parse cs

sample1 :: Prog
sample1 =
  [ decl "INT" "x"
  , decl "INT" "y"
  , decl "INT" "z"
  , decl "BOOL" "a"
  , "x" ^<- (5 :: Int)
  , "y" ^<- (10 :: Int)
  , "z" ^<- ("x" ^+ "y")
  , if' ("z" ^> (16 :: Int)) ("a" ^<- True)
  ]

main :: IO ()
main = runProgram sample1