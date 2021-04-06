{-# LANGUAGE TemplateHaskell #-}

{-

Generates most of the information about all the types
to seed the ProofEnv.hs and InitialEnv.hs declarations


-}

module PrintTypes where

import Z3TypeGenerator

import qualified LLVM.AST as A
import Data.ByteString.Short (ShortByteString)
import Data.ByteString (ByteString)
import Data.Word

reqTypes :: ([String], [String])
reqTypes = $(requiredTypes [ [t| A.InstructionMetadata |]
                           , [t| A.MetadataNodeID |]
                           , [t| A.MDNode |]
                           , [t| A.MDRef A.MDNode |]
                           , [t| [(ShortByteString, A.MDRef A.MDNode)] |]
                           , [t| Bool |]
                           , [t| Int |]
                           , [t| Double |]
                           , [t| Float |]
                           , [t| Integer |]
                           , [t| Word |]
                           , [t| Word16 |]
                           , [t| Word32 |]
                           , [t| Word64 |]                           
                           , [t| ShortByteString |]
                           , [t| ByteString |]
                           ]
              [t| A.Global |] )

main :: IO ()
main = do
  putStrLn "-- ProofEnv"
  let printType s = putStrLn $ "   , [t| " ++ s ++ " |]"
  mapM_ printType (fst reqTypes)
  putStrLn "-- InitialEnv"
  mapM_ putStrLn (snd reqTypes)
