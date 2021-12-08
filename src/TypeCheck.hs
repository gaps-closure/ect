{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE DataKinds #-}
module TypeCheck where
import GHC.Generics (Generic)
import qualified LLVM.AST as LL
import Data.Functor.Identity ( Identity(Identity) )
import LLVM.AST.Global ( basicBlocks, parameters )
import Data.List (sortBy)
import Text.Read (readMaybe)
import Data.ByteString.UTF8

{- Wrapper data structure for LLVM AST used for typechecking.
The parameter f is used for zipping together lljson and the ll.
It is also parameterized by type a which will be CLEType during
type checking
-}
data Terminator f a = Terminator (f (LL.Named LL.Terminator)) a
    deriving (Generic, Functor)
data Instruction f a = Instruction (f (LL.Named LL.Instruction)) a
    deriving (Generic, Functor)
data BasicBlock f a = BasicBlock LL.Name (f LL.BasicBlock) [Instruction f a] (Terminator f a) a a
    deriving (Generic, Functor)
data Global f a = Global (f LL.Global) [BasicBlock f a] a
    deriving (Generic, Functor)

data Ignore a = Ignore
    deriving Show

instance (Show a, Show (f (LL.Named LL.Terminator))) => Show (Terminator f a) where
    show (Terminator fterm a) = "(Terminator " ++ show fterm ++ " " ++ show a ++ ")"

instance (Show a, Show (f (LL.Named LL.Instruction))) => Show (Instruction f a) where
    show (Instruction finst a) = "(Instruction " ++ show finst ++ " " ++ show a ++ ")"

instance (Show a, Show (f LL.BasicBlock), Show (f (LL.Named LL.Instruction)), Show (f (LL.Named LL.Terminator))) => 
    Show (BasicBlock f a) where
    show (BasicBlock name fblock blocks term a a') = 
        "(BasicBlock " ++ show name ++ " " ++ show fblock ++ " " ++ show blocks ++ " " ++ show term ++ " " ++ show a ++ " " ++ show a' ++ ")"

instance (Show a, Show (f LL.BasicBlock), Show (f (LL.Named LL.Instruction)), Show (f (LL.Named LL.Terminator)), Show (f LL.Global)) => 
    Show (Global f a) where
    show (Global fglobal bbs a) = "(Global " ++ show fglobal ++ " " ++ show bbs ++ " " ++ show a ++ ")" 


class Convert a b | a -> b where
    convert :: a -> b

instance Convert (LL.Named LL.Terminator) (Terminator Identity ()) where
    convert term = Terminator (Identity term) ()  
instance Convert (LL.Named LL.Instruction) (Instruction Identity ()) where
    convert instr = Instruction (Identity instr) () 
instance Convert LL.BasicBlock (BasicBlock Identity ()) where 
    convert bb@(LL.BasicBlock n instrs term) = BasicBlock n (Identity bb) (fmap convert instrs) (convert term) () ()
instance Convert LL.Global (Global Identity ()) where
    convert global@LL.GlobalVariable {..} = Global (Identity global) [] ()  
    convert global@LL.GlobalAlias {..} = Global (Identity global) [] ()  
    convert global@LL.Function { basicBlocks, ..} = Global (Identity global) (sortBBs $ fmap convert basicBlocks) ()
        where
            sortBBs = sortBy compBB 
            compBB (BasicBlock n _ _ _ _ _) (BasicBlock n' _ _ _ _ _) = compare n n'

instance Convert String LL.Name where 
    convert s = 
        case readMaybe s of
            Just i -> LL.UnName i 
            Nothing -> LL.mkName s

terminatorZipWith :: (a -> b -> c) -> Terminator Identity a -> Terminator Ignore b -> Terminator Identity c
terminatorZipWith f (Terminator fi a) (Terminator _ a') = Terminator fi (f a a') 

instructionZipWith :: (a -> b -> c) -> Instruction Identity a -> Instruction Ignore b -> Instruction Identity c
instructionZipWith f (Instruction fi a) (Instruction _ a') = Instruction fi (f a a') 

basicBlocksZipWith :: (a -> b -> c) -> BasicBlock Identity a -> BasicBlock Ignore b -> Maybe (BasicBlock Identity c)
basicBlocksZipWith f (BasicBlock n bb instrs term a a') (BasicBlock n' _ instrs' term' b b') =
    if n == n' then 
        Just $ BasicBlock n bb (instructionZipWith f <$> instrs <*> instrs') (terminatorZipWith f term term') (f a b) (f a' b') 
    else Nothing

globalZipWith :: (a -> b -> c) -> Global Identity a -> Global Ignore b -> Global Identity c
globalZipWith f (Global global bbs a) (Global _ bbs' b) = 
    Global global (concatMap toList (basicBlocksZipWith f <$> bbs <*> bbs')) (f a b)
    where
        toList (Just x) = [x]
        toList Nothing = []
