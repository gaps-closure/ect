{-# LANGUAGE DeriveGeneric #-}

module ParseCLE where

import Data.Aeson
import GHC.Generics
import System.IO
import System.Environment
import Data.ByteString.Lazy.UTF8 (fromString)
import qualified Data.Map.Strict as M

data CLE = CLE {
  label :: String
, json :: CLEJSON
} deriving (Generic, Show)

data CLEJSON = CLEJSON {
  cdf :: Maybe [CDF]
, level :: String
} deriving (Generic, Show)

data CDF = CDF {
  remotelevel :: String
, direction :: String
, guarddirective :: GD
, argtaints :: Maybe [[String]]
, codtaints :: Maybe [[String]]
, rettaints :: Maybe [[String]]
} deriving (Generic, Show)

data GD = GD {
  operation :: String
, gapstag :: Maybe [Int]
, oneway :: Maybe Bool
} deriving (Generic, Show)

instance FromJSON CLE where
  parseJSON = genericParseJSON o
    where
      f = M.fromList [("label", "cle-label"), ("json", "cle-json")]
      o = defaultOptions { fieldLabelModifier = \s -> M.findWithDefault s s f }

instance FromJSON CLEJSON where
instance FromJSON CDF where
instance FromJSON GD where

validate :: [CLE] -> Maybe String
validate _ = Nothing

readCLE :: String -> IO [CLE]
readCLE f = do
  h <- openFile f ReadMode
  contents <- hGetContents h
  let cle = (decode $ fromString contents) :: Maybe [CLE]
  case cle of
    Nothing   -> error "input is not a valid CLE json"
    Just cle' -> return cle'

main :: IO ()
main = do
  args <- getArgs
  case length args of
    0 -> putStrLn "error: please provide a CLE json file to parse"
    _ -> do
      cle <- readCLE $ head args
      case validate cle of
        Nothing -> putStrLn $ "input CLE json is valid!"
        Just e  -> putStrLn $ "error: " ++ e
