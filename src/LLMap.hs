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
      globalZipWith,
      convertName )
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
    parameters :: Maybe [Assignment],
    body :: Maybe Assignment,
    return :: Maybe Assignment,
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
    AssignedGlobalWithExtra :: Assignment -> [Assignment] -> Assignment -> Assignment -> IndexedAssignment 'Glob

instance Show (IndexedAssignment i) where
    show (AssignedTerminator a) = unwords ["(AssignedTerminator", show a, ")"]
    show (AssignedInstruction a) = unwords ["(AssignedInstruction", show a, ")"]
    show UnassignedBasicBlock = "UnassignedBasicBlock"
    show (AssignedGlobal a) = unwords ["(AssignedGlobal", show a, ")"]
    show (AssignedGlobalWithExtra a ps bdy ret) = unwords ["(AssignedGlobalWithExtra", show a, show ps, show bdy, show ret, ")"]

wrapGlobalDesc :: GlobalDesc -> Global IndexedAssignment
wrapGlobalDesc GlobalDesc { assignment, parameters = Just prms, body = Just bdy, return = Just ret, blocks = Just bl, .. } =
    Function (nameBlocks bl) (AssignedGlobalWithExtra assignment prms bdy ret)     
        where
            nameBlocks b = toBB <$> M.toList b
            toBB (name, BasicBlockDesc instrs term) = 
                BasicBlock (convertName name) (wrapInstrs instrs) (Terminator $ AssignedTerminator term) UnassignedBasicBlock
            wrapInstrs = fmap (Instruction . AssignedInstruction)
wrapGlobalDesc GlobalDesc { assignment, blocks = Just bl, .. } = 
    Function (nameBlocks bl) (AssignedGlobal assignment)
        where
            nameBlocks b = toBB <$> M.toList b
            toBB (name, BasicBlockDesc instrs term) = 
                BasicBlock (convertName name) (wrapInstrs instrs) (Terminator $ AssignedTerminator term) UnassignedBasicBlock
            wrapInstrs = fmap (Instruction . AssignedInstruction)
wrapGlobalDesc GlobalDesc { assignment } = Global (AssignedGlobal assignment)    


data IndexedPair (i :: LLIndex) = IndexedPair (LLWrapper i) (IndexedAssignment i)
    deriving Show

zipGlobal :: Global LLWrapper -> Global IndexedAssignment -> Maybe (Global IndexedPair)
zipGlobal = globalZipWith IndexedPair  
