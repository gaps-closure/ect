{-# LANGUAGE DeriveGeneric #-}

module ParseCLE where

import Data.Aeson hiding (json)
import GHC.Generics
import System.IO
import System.Environment
import Data.ByteString.Lazy.UTF8 (fromString)
import Data.List
import qualified Data.Map.Strict as M

type CLEMap = [CLE]

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
, argtaints :: Taints
, codtaints :: Taints
, rettaints :: Taints
} deriving (Generic, Show)

type Taints = Maybe [[String]]

data GD = GD {
  operation :: String
, gapstag :: Maybe [Int]
, oneway :: Maybe Bool
} deriving (Generic, Show)

type StringTable = (M.Map String Int)
type Error = String

instance FromJSON CLE where
  parseJSON = genericParseJSON o
    where
      f = M.fromList [("label", "cle-label"), ("json", "cle-json")]
      o = defaultOptions { fieldLabelModifier = \s -> M.findWithDefault s s f }

instance FromJSON CLEJSON where
instance FromJSON CDF where
instance FromJSON GD where

colors :: [String]
colors = ["green", "orange"]

ops :: [String]
ops = ["allow", "deny", "redact"]

directions :: [String]
directions = ["ingress", "egress"]

firstError :: [Maybe Error] -> Maybe Error
firstError [] = Nothing
firstError (x:xs) = case x of
  Nothing -> firstError xs
  e -> e

gdValidate :: StringTable -> GD -> Maybe Error
gdValidate _ (GD op _ _) =
  if op `elem` ops
  then Nothing
  else Just $ "unknown operation: '" ++ op ++ "'"

taintsValidate :: StringTable -> Taints -> Maybe Error
taintsValidate _ Nothing = Nothing
taintsValidate tbl (Just tss) = firstError $ map (taintValidate tbl) tss
  where
    taintValidate _ [] = Nothing
    taintValidate tbl' (t:ts) =
      if M.member t tbl'
      then taintValidate tbl' ts
      else Just $ "taint label does not exist: '" ++ t ++ "'"

cdfValidate :: StringTable -> CDF -> Maybe Error
cdfValidate tbl (CDF lvl dir gd argt codt rett) = firstError all_errs
  where
    all_errs = [lvl_err, dir_err, gd_err, argt_err, codt_err, rett_err]
    gd_err = gdValidate tbl gd
    argt_err = taintsValidate tbl argt
    codt_err = taintsValidate tbl codt
    rett_err = taintsValidate tbl rett
    lvl_err =
      if lvl `elem` colors
      then Nothing
      else Just $ "unknown level: '" ++ lvl ++ "'"
    dir_err =
      if dir `elem` directions
      then Nothing
      else Just $ "unknown direction: '" ++ dir ++ "'"

jsonValidate :: StringTable -> CLEJSON -> Maybe Error
jsonValidate tbl (CLEJSON cdfs lvl) =
  if lvl `elem` colors
  then (case cdfs of
    Just cdfs' -> firstError $ map (cdfValidate tbl) cdfs'
    _ -> Nothing)
  else Just $ "unknown level: '" ++ lvl ++ "'"

cleValidate :: StringTable -> CLE -> Maybe Error
cleValidate tbl (CLE l js) = case jsonValidate tbl js of
  Just e -> Just $ "in CLE '" ++ l ++ "': " ++ e
  _ -> Nothing

clemapValidate :: [CLE] -> Either Error StringTable
clemapValidate cles =
  if (length $ nub lbls) == length lbls
  then (case firstError (map (cleValidate tbl) cles) of
    Just e -> Left e
    Nothing -> Right tbl)
  else (Left "duplicate cle-label")
  where
    lbls = map label cles
    tbl = M.fromList $ zip lbls [0..]

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
  let ex_args = "green_clemap.json orange_clemap.json refactored_clemap.json"
  args <- getArgs
  case args of
    fs@[_, _, _] -> do
      clemaps@[_, _, _] <- mapM readCLE fs
      mapM_ check $ zip clemaps fs
      -- TODO: inter-file validation
      where
        check (cles, fname) = case clemapValidate cles of
          Right _ -> putStrLn $ fname ++ " is a well-formed CLE map."
          Left e  -> putStrLn $ fname ++ ": error: " ++ e ++ "."
    _ -> putStrLn $ "usage: parseCLE " ++ ex_args
