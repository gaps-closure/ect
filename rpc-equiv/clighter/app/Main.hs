import CLighter
import Sem

import Data.Int
import Data.Map as M

test :: Program
test = ([], "main", [], M.empty) -- TODO

simStep :: (State -> State) -> State -> (State -> Maybe Int32) -> Int32
simStep stp cur isFinal =
  case isFinal next of
    Just r -> r
    Nothing -> simStep stp next isFinal
    where
      next = stp cur

simulateProgram :: Program -> Int32
simulateProgram p =
  simStep (stp ge) start isFinal
  where
    (stp, start, isFinal, ge) = mkSemantics p

main :: IO ()
main = do
  putStrLn $ show $ simulateProgram test