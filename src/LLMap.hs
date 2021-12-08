{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE OverloadedStrings #-}
module LLMap where
import GHC.Generics ( Generic )
import Data.Aeson 
import qualified Data.Map as M
import TypeCheck
    ( Convert(..),
      Ignore(..),
      Global(..),
      BasicBlock(BasicBlock),
      Instruction(Instruction),
      Terminator(Terminator),
      globalZipWith )
import Data.Functor.Identity ( Identity )
import Prelude hiding (return)
-- import qualified Data.Text.Lazy.IO as T
-- import qualified Data.Text.Lazy.Encoding as T
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

data AugmentedAssignment
    = SomeAssignment Assignment   
    | AssignmentWithExtra Assignment [Assignment] Assignment Assignment -- assignment, params, body, ret
    deriving Show

-- Given Maybe since BasicBlocks and some Instructions don't have an assignment
instance Convert GlobalDesc (Global Ignore (Maybe AugmentedAssignment)) where
    convert GlobalDesc { assignment, parameters = Just prms, body = Just bdy, return = Just ret, blocks = Just bl, .. } =
        Global Ignore (nameBlocks bl) (Just $ AssignmentWithExtra assignment prms bdy ret)
        where
            nameBlocks b = toBB <$> M.toList b
            toBB (name, BasicBlockDesc instrs term) = 
                -- Assignment -> Instruction Ignore (Maybe AugmentedAssignment)
                BasicBlock (convert name) Ignore (convert' instrs) (Just . SomeAssignment <$> Terminator Ignore term) Nothing Nothing
            convert' = fmap (Instruction Ignore . fmap SomeAssignment)
    convert GlobalDesc { assignment,  .. } = 
        Global Ignore [] (Just $ SomeAssignment assignment)

zipGlobal :: Global Identity () -> Global Ignore (Maybe AugmentedAssignment) -> Global Identity (Maybe AugmentedAssignment)
zipGlobal = globalZipWith (\_ a -> a)
