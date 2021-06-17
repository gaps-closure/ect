{-# LANGUAGE DeriveGeneric #-}

module CLEMap where

import Data.Aeson hiding (json)
import GHC.Generics
import qualified Data.Map.Strict as M
import qualified Data.Set as S
import qualified Data.List as L

type CLEMap = [CLE]

data CLE = CLE {
  label :: String
, json :: CLEJSON
} deriving (Generic, Eq, Ord, Show)

data CLEJSON = CLEJSON {
  cdf :: Maybe [CDF]
, level :: String
} deriving (Generic, Eq, Ord, Show)

data CDF = CDF {
  remotelevel :: String
, direction :: String
, guarddirective :: GD
, argtaints :: Maybe [[String]]
, codtaints :: Maybe [String]
, rettaints :: Maybe [String]
} deriving (Generic, Eq, Ord, Show)

data GD = GD {
  operation :: String
, gapstag :: Maybe [Int]
, oneway :: Maybe Bool
} deriving (Generic, Eq, Ord, Show)

type StringTable = (M.Map String Int)
type ColorSet = [String]
type Error = String

instance FromJSON CLE where
  parseJSON = genericParseJSON o
    where
      f = M.fromList [("label", "cle-label"), ("json", "cle-json")]
      o = defaultOptions { fieldLabelModifier = \s -> M.findWithDefault s s f }

instance FromJSON CLEJSON where
instance FromJSON CDF where
instance FromJSON GD where

firstError :: [Maybe Error] -> Maybe Error
firstError [] = Nothing
firstError (x:xs) = case x of
  Nothing -> firstError xs
  e -> e

errorOrColors :: [Either Error ColorSet] -> Either Error ColorSet
errorOrColors checks = foldl checkErr (Right []) checks
  where
    checkErr (Left e) _ = Left e
    checkErr _ (Left e) = Left e
    checkErr (Right cs) (Right cs') = Right $ cs ++ cs'

gdValidate :: StringTable -> GD -> Maybe Error
gdValidate _ (GD op _ _) =
  if op `elem` cleOps
  then Nothing
  else Just $ "unknown operation: '" ++ op ++ "'"

taintsValidate :: StringTable -> Maybe [[String]] -> Maybe Error
taintsValidate _ Nothing = Nothing
taintsValidate tbl (Just tss) = firstError $ map (taintValidate tbl) tss
  where
    taintValidate _ _ = Nothing
    -- taintValidate _ [] = Nothing
    -- taintValidate tbl' (t:ts) =
    --   if M.member t tbl'
    --   then taintValidate tbl' ts
    --   else Just $ "taint label does not exist: '" ++ t ++ "'"

cdfValidate :: StringTable -> CDF -> Either Error ColorSet
cdfValidate tbl (CDF lvl dir gd argt _ _) = case firstError all_errs of
  Nothing -> Right [lvl]
  Just e -> Left e
  where
    all_errs = [dir_err, gd_err, argt_err, codt_err, rett_err]
    gd_err = gdValidate tbl gd
    argt_err = taintsValidate tbl argt
    codt_err = Nothing -- taintsValidate tbl codt
    rett_err = Nothing -- taintsValidate tbl rett
    dir_err =
      if dir `elem` cleDirs
      then Nothing
      else Just $ "unknown direction: '" ++ dir ++ "'"

jsonValidate :: StringTable -> CLEJSON -> Either Error ColorSet
jsonValidate tbl (CLEJSON cdfs lvl) = case cdfs of
    Just cdfs' -> case errorOrColors (map (cdfValidate tbl) cdfs') of
      Left e -> Left e
      Right cs -> Right (lvl:cs)
    _ -> Right [lvl]

cleValidate :: StringTable -> CLE -> Either Error ColorSet
cleValidate tbl (CLE l js) = case jsonValidate tbl js of
  Left e -> Left $ "in CLE '" ++ l ++ "': " ++ e
  Right cs -> Right cs

clemapValidate :: CLEMap -> Either Error ColorSet
clemapValidate cles =
  if (length $ L.nub lbls) == length lbls
  then (case errorOrColors (map (cleValidate tbl) cles) of
    Left e -> Left e
    Right cs -> Right cs)
  else (Left "duplicate cle-label")
  where
    lbls = map label cles
    tbl = M.fromList $ zip lbls [0..]

tagsMatch :: S.Set CLE -> S.Set CLE -> Maybe Error
tagsMatch ltags rtags = firstError $ map tagError matches
  where
    [ltags', rtags'] = map S.toList [ltags, rtags]
    matches = [(x, y) | x <- ltags', y <- rtags', label x == label y]
    tColor = level . json
    tCdf = cdf . json
    lc = tColor . head $ ltags'
    rc = tColor . head $ rtags'
    tagError (l, r) =
      if   (tColor l == lc)
        && (tColor r == rc)
        && (tColor l /= tColor r)
        && (tCdf l == tCdf r)
      then Nothing
      else Just $ "Tag in partitioned CLEmaps is inconsistent: " ++ label l

clemapsAgree :: CLEMap -> CLEMap -> CLEMap -> Maybe Error
clemapsAgree left right ref = firstError all_errs
  where
    all_errs = [subsetOfLeft, subsetOfRight, sameTags, tagsMatch ltags rtags]
    lset = S.fromList left
    rset = S.fromList right
    refset = S.fromList ref
    ltags = S.difference lset refset
    rtags = S.difference rset refset
    subsetOfLeft = checkSubset refset lset
    subsetOfRight = checkSubset refset rset
    checkSubset s s' =
      if s `S.isSubsetOf` s'
      then Nothing
      else Just $ "Refactored CLEmap is not a subset of each partitioned CLEmap"
    sameTags =
      if (S.map label ltags) == (S.map label rtags)
      then Nothing
      else Just $ "Partitioned CLEmaps do not use the same set of tag labels"

cleOps :: [String]
cleOps = ["allow", "deny", "redact"]

cleDirs :: [String]
cleDirs = ["ingress", "egress", "bidirectional"]
