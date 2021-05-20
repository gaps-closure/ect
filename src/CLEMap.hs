{-# LANGUAGE DeriveGeneric #-}

module CLEMap where

import Data.Aeson hiding (json)
import GHC.Generics
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

cleColors :: [String]
cleColors = ["green", "orange"]

cleOps :: [String]
cleOps = ["allow", "deny", "redact"]

cleDirs :: [String]
cleDirs = ["ingress", "egress"]
