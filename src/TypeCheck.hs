{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

module TypeCheck where

import Control.Monad.Trans.Except ( throwE, ExceptT )
import Control.Monad.Trans.Reader ( Reader )
import Data.List (sortBy)
import Data.Set (Set)
import qualified LLVM.AST as LL
import LLVM.AST.Global (basicBlocks, parameters)
import Text.Read (readMaybe)
import Data.Map ( Map )

data LLIndex = Term | Inst | BB | Glob deriving (Show)

{- Wrapper data structure for LLVM AST used for typechecking.
The parameter f is used for zipping together lljson and the ll.
It is also parameterized by type a which will be CLEType during
type checking
-}
newtype Terminator f = Terminator (f 'Term)

newtype Instruction f = Instruction (f 'Inst)

data BasicBlock f = BasicBlock LL.Name [Instruction f] (Terminator f) (f 'BB)

data Global f
  = Function [BasicBlock f] (f 'Glob)
  | Global (f 'Glob)

instance Show (f 'Term) => Show (Terminator f) where
  show (Terminator f) = unwords ["(Terminator", show f, ")"]

instance Show (f 'Inst) => Show (Instruction f) where
  show (Instruction f) = unwords ["(Instruction", show f, ")"]

instance (Show (f 'Term), Show (f 'Inst), Show (f 'BB)) => Show (BasicBlock f) where
  show (BasicBlock n instrs term f) = unwords ["(BasicBlock ", show n, show instrs, show term, show f, ")"]

instance (Show (f 'Term), Show (f 'Inst), Show (f 'BB), Show (f 'Glob)) => Show (Global f) where
  show (Global f) = unwords ["(Global", show f, ")"]
  show (Function bb f) = unwords ["(Function", show bb, show f, ")"]

data LLWrapper (i :: LLIndex) where
  WrapTerminator :: LL.Named LL.Terminator -> LLWrapper 'Term
  WrapInstruction :: LL.Named LL.Instruction -> LLWrapper 'Inst
  WrapBasicBlock :: LL.BasicBlock -> LLWrapper 'BB
  WrapGlobal :: LL.Global -> LLWrapper 'Glob

instance Show (LLWrapper i) where
  show (WrapTerminator t) = show t
  show (WrapInstruction i) = show i
  show (WrapBasicBlock b) = show b
  show (WrapGlobal g) = show g

wrapTerminator :: LL.Named LL.Terminator -> Terminator LLWrapper
wrapTerminator = Terminator . WrapTerminator

wrapInstruction :: LL.Named LL.Instruction -> Instruction LLWrapper
wrapInstruction = Instruction . WrapInstruction

wrapBasicBlock :: LL.BasicBlock -> BasicBlock LLWrapper
wrapBasicBlock bb@(LL.BasicBlock n instrs term) = BasicBlock n (fmap wrapInstruction instrs) (wrapTerminator term) (WrapBasicBlock bb)

wrapGlobal :: LL.Global -> Global LLWrapper
wrapGlobal global@LL.GlobalVariable {..} = Global $ WrapGlobal global
wrapGlobal global@LL.GlobalAlias {..} = Global $ WrapGlobal global
wrapGlobal global@LL.Function {basicBlocks, ..} = Function (wrapBasicBlock <$> sortBBs basicBlocks) (WrapGlobal global)
  where
    sortBBs = sortBy compBB
    compBB (LL.BasicBlock n _ _) (LL.BasicBlock n' _ _) = compare n n'

terminatorZipWith :: (forall i. f i -> g i -> h i) -> Terminator f -> Terminator g -> Terminator h
terminatorZipWith f (Terminator fi) (Terminator gi) = Terminator $ f fi gi

instructionZipWith :: (forall i. f i -> g i -> h i) -> Instruction f -> Instruction g -> Instruction h
instructionZipWith f (Instruction fi) (Instruction gi) = Instruction $ f fi gi

basicBlockZipWith :: (forall i. f i -> g i -> h i) -> BasicBlock f -> BasicBlock g -> Maybe (BasicBlock h)
basicBlockZipWith f (BasicBlock n instrs term fbb) (BasicBlock n' instrs' term' gbb)
  | n == n' = Just $ BasicBlock n (zipWith (instructionZipWith f) instrs instrs') (terminatorZipWith f term term') (f fbb gbb)
  | otherwise = Nothing

globalZipWith :: (forall i. f i -> g i -> h i) -> Global f -> Global g -> Maybe (Global h)
globalZipWith f (Global fg) (Global gg) = Just $ Global (f fg gg)
globalZipWith f (Function bbs fg) (Function bbs' gg) = Just $ Function (concatMap toList $ zipWith (basicBlockZipWith f) bbs bbs') (f fg gg)
  where
    toList (Just x) = [x]
    toList Nothing = []
globalZipWith _ _ _ = Nothing

convertName :: String -> LL.Name
convertName s =
  case readMaybe s of
    Just i -> LL.UnName i
    Nothing -> LL.mkName s

data IndexedPair f g (i :: LLIndex) = IndexedPair (f i) (g i)
  deriving (Show)
type (&) = IndexedPair

(&) :: f i -> g i -> IndexedPair f g i
(&) = IndexedPair

type Enclave = String

type RemoteEnclaves = Set Enclave

data Flow
  = Flow {
      remoteEnclave :: Enclave,
      args :: [RemoteEnclaves],
      body :: RemoteEnclaves,
      ret :: RemoteEnclaves
    }


data CLEType
  = VarType Enclave RemoteEnclaves
  | FunctionType Enclave [Flow]

data Typed (i :: LLIndex) where
  TypedTerm :: CLEType -> CLEType -> Typed 'Term
  TypedInstr :: CLEType -> Typed 'Inst
  UntypedBasicBlock :: Typed 'BB 
  TypedGlobal :: CLEType -> Typed 'Glob

-- newtype IndexedMaybe f (i :: LLIndex) = IndexedMaybe (Maybe (f i))

data Err
  = TypeMismatch CLEType CLEType
  | ExpectedVarType CLEType
  | ExpectedFunType CLEType
  | ExpectedFun LL.Global
  | ExpectedVar LL.Global
  | WrongFuncArgs Int Int
  | UnsupportedVarArgs

type Context = Map LL.Name CLEType

type Tc = ExceptT Err (Reader Context)

assert :: Err -> Bool -> Tc ()
assert _ True = pure ()
assert e _ = throwE e

checkTerminator :: Instruction (LLWrapper & Typed) -> Tc (CLEType, CLEType)
checkTerminator = error "not implemented"
checkInstruction :: Instruction (LLWrapper & Typed) -> Tc CLEType
checkInstruction = error "not implemented"
checkBasicBlock :: BasicBlock (LLWrapper & Typed) -> Tc (CLEType, CLEType)
checkBasicBlock = error "not implemented"


checkGlobal :: Global (LLWrapper & Typed) -> Tc CLEType 
checkGlobal (Global (IndexedPair _ (TypedGlobal (VarType _enc _renc)))) = error "not implemented"
checkGlobal (Global (IndexedPair _ (TypedGlobal t@(FunctionType _ _)))) = throwE $ ExpectedVarType t
checkGlobal (Function _bbs (IndexedPair _ (TypedGlobal t@(VarType _ _)))) = throwE $ ExpectedFunType t
checkGlobal
  ( Function
      _bbs
      ( IndexedPair
          (WrapGlobal LL.Function {parameters, ..})
          (TypedGlobal (FunctionType enc flows))
        )
    ) = do
    assert UnsupportedVarArgs (not $ snd parameters)
    mapM_ (assertFunArgs . args) flows
    let paramNames = name <$> fst parameters 
    let _flowArgs = fmap (zip paramNames . fmap argTys . args) flows   
    -- let locals = fmap withArgs flowArgs
    -- let checks = fmap checkBasicBlock bbs  
    error "not implemented" 
    where
        name (LL.Parameter _ n _) = n
        -- withArgs :: [(LL.Name, CLEType)] -> Tc a -> Tc a  
        -- withArgs args tca = do
        --   lift $ local (\ctx -> M.fromList args `M.union` ctx) tca

        argTys args = VarType enc args  
        assertFunArgs args =
            let lp = length $ fst parameters
                la = length args in
            assert (WrongFuncArgs lp la) $ lp == la 

checkGlobal (Function bbs (IndexedPair (WrapGlobal global) _)) = throwE $ ExpectedFun global
