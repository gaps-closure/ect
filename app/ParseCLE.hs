{-# LANGUAGE DeriveGeneric #-}

module ParseCLE where

import Data.Aeson
import GHC.Generics

data Person = Person {
  name :: String
, age :: Int
} deriving (Generic, Show)

instance ToJSON Person where
instance FromJSON Person where

main :: IO ()
main = do
  print $ encode (Person {name = "Joe", age = 12})
