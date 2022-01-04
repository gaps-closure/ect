module MergeClemaps where

import System.Environment ( getArgs )
import System.IO

import qualified Data.ByteString.Lazy.UTF8 as BSL
import Data.Aeson ( decode, encode )

import CLEMap

readCLE :: String -> IO CLEMap
readCLE f = do
  h <- openFile f ReadMode
  contents <- hGetContents h
  let cle = (decode $ BSL.fromString contents) :: Maybe CLEMap
  case cle of
    Nothing   -> error $ "Error: " ++ f ++ " is not a CLEmap json"
    Just cle' -> return cle'

writeCLE :: String -> CLEMap -> IO ()
writeCLE n clemap = do
  let s = (BSL.toString $ encode clemap)
  putStrLn s
  h <- openFile n WriteMode
  hPutStrLn h s
  hClose h

main :: IO ()
main = do
  fnames <- getArgs
  clemaps <- mapM readCLE fnames
  writeCLE "merged.json" $ mergeClemaps clemaps
  
