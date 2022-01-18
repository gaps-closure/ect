{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
module LLMap where
import GHC.Generics ( Generic )
import Data.Aeson ( FromJSON, ToJSON ) 
import qualified Data.Map as M
import TypeCheck
    ( LLWrapper,
      Global(..),
      BasicBlock(BasicBlock),
      Instruction(Instruction),
      Terminator(Terminator),
      LLIndex(..),
      zipWithIdx,
      nameFromString,
      IndexedPair ((:&)), type (&) )
import Prelude hiding (return)

data Assignment = Assignment {
    enclave :: String,
    label :: String
} deriving (Generic, Show, Eq, Ord)

data BasicBlockDesc = BasicBlockDesc {
    instructions :: [Maybe Assignment],
    terminator :: Assignment 
} deriving (Generic, Show, Eq, Ord)  

data GlobalDesc = GlobalDesc {
    assignment :: Assignment,
    blocks :: Maybe (M.Map String BasicBlockDesc)
} deriving (Generic, Show, Eq, Ord)

instance FromJSON Assignment where
instance ToJSON Assignment
instance FromJSON BasicBlockDesc
instance ToJSON BasicBlockDesc
instance FromJSON GlobalDesc 
instance ToJSON GlobalDesc

data IndexedAssignment (i :: LLIndex) where 
    AssignedTerminator :: Assignment -> IndexedAssignment 'Term
    AssignedInstruction :: Maybe Assignment -> IndexedAssignment 'Inst
    UnassignedBasicBlock :: IndexedAssignment 'BB
    AssignedGlobal :: Assignment -> IndexedAssignment 'Glob

instance Show (IndexedAssignment i) where
    show (AssignedTerminator a) = unwords ["(AssignedTerminator", show a, ")"]
    show (AssignedInstruction a) = unwords ["(AssignedInstruction", show a, ")"]
    show UnassignedBasicBlock = "UnassignedBasicBlock"
    show (AssignedGlobal a) = unwords ["(AssignedGlobal", show a, ")"]

consBB :: String -> BasicBlockDesc -> BasicBlock IndexedAssignment    
consBB name (BasicBlockDesc instrs term) = 
    BasicBlock (nameFromString name) (toInstructions instrs) (Terminator $ AssignedTerminator term) UnassignedBasicBlock    
    where
        toInstructions = fmap (Instruction . AssignedInstruction) 

fromBBMap :: M.Map String BasicBlockDesc -> [BasicBlock IndexedAssignment]
fromBBMap = fmap (uncurry consBB) . M.toList

wrapGlobalDesc :: GlobalDesc -> Global IndexedAssignment
wrapGlobalDesc GlobalDesc { assignment, blocks = Just bl, .. } = Function (fromBBMap bl) (AssignedGlobal assignment)
wrapGlobalDesc GlobalDesc { assignment } = Global (AssignedGlobal assignment)    

zipGlobal :: Global LLWrapper -> Global IndexedAssignment -> Maybe (Global (LLWrapper & IndexedAssignment))
zipGlobal = zipWithIdx (:&)  
