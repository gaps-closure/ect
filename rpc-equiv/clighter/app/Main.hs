import CLighter
import Sem
import Gen

import System.Environment
import Data.Int

simStep :: (State -> State) -> State -> (State -> Maybe Int32) -> Int32
simStep stp cur isFinal =
  case isFinal next of
    Just r -> r
    Nothing -> simStep stp next isFinal
    where
      next = stp cur

simulate :: Program -> Int32
simulate p =
  simStep (stp ge) start isFinal
  where
    (stp, start, isFinal, ge) = mkSemantics p

usage :: IO ()
usage = putStrLn "usage: ./clighter fxn_name [arg_type]+ ret_type"

main :: IO ()
main = do
  args <- getArgs
  case args of
    []  -> usage
    [_] -> usage
    (n:pms) -> do
      writeFile "gen_xdcomms.c" prog_text
      -- Run verification condition check
      where
        sig = (n, init pms, last pms)
        prog_text = genC sig
        -- p = parse prog_text
        -- sim = simulate p
        -- vc = genVC p