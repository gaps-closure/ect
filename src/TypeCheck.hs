{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

module TypeCheck where

import Control.Monad.Trans.Class
import Control.Monad.Trans.Except (Except, ExceptT, runExcept, throwE)
import Control.Monad.Trans.Reader (Reader, ReaderT (ReaderT, runReaderT), ask, local)
import Data.List (find, sortBy)
import Data.Map (Map)
import qualified Data.Map as M
import Data.Set (Set)
import qualified Data.Set as S
import qualified LLVM.AST as LL
import qualified LLVM.AST.Constant as LC
import LLVM.AST.Global (basicBlocks, parameters)
import qualified LLVM.AST.Global as LL
import Text.Read (readMaybe)
import Debug.Trace

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

nameFromString :: String -> LL.Name
nameFromString s =
  case readMaybe s of
    Just i -> LL.UnName i
    Nothing -> LL.mkName s

nameOf :: Global LLWrapper -> LL.Name
nameOf (Global (WrapGlobal LL.GlobalVariable {name, ..})) = name
nameOf (Global (WrapGlobal LL.GlobalAlias {name, ..})) = name
nameOf (Global (WrapGlobal LL.Function {name, ..})) = name
nameOf (Function _ (WrapGlobal LL.GlobalVariable {name, ..})) = name
nameOf (Function _ (WrapGlobal LL.GlobalAlias {name, ..})) = name
nameOf (Function _ (WrapGlobal LL.Function {name, ..})) = name

data IndexedPair f g (i :: LLIndex) = (f i) :& (g i)
  deriving (Show)

type (&) = IndexedPair

type Enclave = String

type RemoteEnclaves = Set Enclave

type Taint = Set RemoteEnclaves

data Flow = Flow
    { remoteEnclave :: Enclave,
      args :: [Taint],
      body :: Taint,
      ret :: Taint
    }
    deriving (Show, Eq)

data CLEType
    = VarType Enclave RemoteEnclaves
    | FunctionType Enclave [Flow]
    deriving (Show, Eq)

data Annotated (i :: LLIndex) where
    AnnotatedTerm :: CLEType -> Annotated 'Term
    AnnotatedInstr :: CLEType -> Annotated 'Inst
    UnAnnotatedBasicBlock :: Annotated 'BB
    AnnotatedGlobal :: CLEType -> Annotated 'Glob

instance Show (Annotated i) where
    show (AnnotatedTerm d) = show d
    show (AnnotatedInstr c) = show c
    show UnAnnotatedBasicBlock = "UnAnnotatedBasicBlock"
    show (AnnotatedGlobal g) = show g

-- newtype IndexedMaybe f (i :: LLIndex) = IndexedMaybe (Maybe (f i))

data Err
    = TypeMismatch CLEType CLEType -- actual, expected
    | ExpectedVarType CLEType
    | ExpectedFunType CLEType
    | ExpectedFun LL.Global
    | ExpectedVar LL.Global
    | NoTaintFound RemoteEnclaves Taint
    | NoTaintFoundArgs [RemoteEnclaves] [Taint]
    | NoTaintMatch Taint Taint
    | WrongFuncArgs Int Int
    | LookupFailure LL.Name
    | MissingRemoteEnclave Enclave
    | EnclaveMismatch Enclave Enclave -- actual, expected
    | UnsupportedInstruction LL.Instruction
    | UnsupportedVarArgs
    | UnsupportedInlineASM
    | UnsupportedMetadataCall
    | UnsupportedMetadataOp
    | UnsupportedLocalFunction
    deriving (Show)

-- Map from names to type
-- for basic blocks the type refers to the return type
type Context = Map LL.Name CLEType

type Tc = ReaderT Context (Except Err)

throw :: Err -> Tc a
throw = lift . throwE

assert :: Err -> Bool -> Tc ()
assert _ True = pure ()
assert e _ = throw e

lookup' :: LL.Name -> Tc CLEType
lookup' name = do
    ctx <- ask
    case M.lookup name ctx of
        Just t -> return t
        _ -> throw $ LookupFailure name

runTc :: Context -> Tc a -> Either Err a
runTc ctx tc = runExcept $ runReaderT tc ctx

checkGlobal :: Global (LLWrapper & Annotated) -> Tc ()
checkGlobal (Global (_ :& AnnotatedGlobal (VarType _ _))) = return ()
checkGlobal (Global (_ :& AnnotatedGlobal ty@(FunctionType _ _))) = throw $ ExpectedVarType ty
checkGlobal (Function _ (_ :& AnnotatedGlobal ty@(VarType _ _))) = throw $ ExpectedFunType ty
checkGlobal (Function bbs (WrapGlobal LL.Function {parameters} :& AnnotatedGlobal (FunctionType enc flows))) = do
  assert UnsupportedVarArgs (not $ snd parameters)
  mapM_ checkBasicBlocks flows
  where
    checkBasicBlocks flow = mapM_ (checkBasicBlock enc flow) bbs
checkGlobal (Function _ (WrapGlobal ll :& _)) = throw $ ExpectedFun ll

checkBasicBlock :: Enclave -> Flow -> BasicBlock (LLWrapper & Annotated) -> Tc Context 
checkBasicBlock enc flow (BasicBlock _ instrs term _) = do
  ctx <- checkInstrs
  local (M.union ctx) (checkTerm enc flow term)
  M.union ctx <$> ask
  where
    checkInstrs = foldl fold ask instrs
    fold tcctx instr = do
      ctx <- tcctx  
      local (M.union ctx) (checkInstr enc flow instr) 

nameOfOperand :: LL.Operand -> Tc LL.Name
nameOfOperand (LL.LocalReference _ n) = return n 
nameOfOperand (LL.ConstantOperand (LC.GlobalReference _ n)) = return n 
nameOfOperand (LL.ConstantOperand _) = error "not implemented" 
nameOfOperand (LL.MetadataOperand _) = throw UnsupportedMetadataOp

remoteEnclavesFromTy :: CLEType -> RemoteEnclaves
remoteEnclavesFromTy (VarType _ r) = r
remoteEnclavesFromTy (FunctionType _ flows) = S.fromList $ remoteEnclave <$> flows 

checkInstr :: Enclave -> Flow -> Instruction (LLWrapper & Annotated) -> Tc Context
checkInstr enc (Flow _ _ body _) (Instruction (WrapInstruction ll :& AnnotatedInstr ty@(VarType enc' rencs))) = do
  assert (EnclaveMismatch enc' enc) (enc' == enc)
  assert (NoTaintFound rencs body) (S.member rencs body)
  case ll of
    name LL.:= instr -> do
      checkInstr' instr
      return (M.singleton name ty) 
    LL.Do instr -> do
      checkInstr' instr
      return M.empty 

  where
    checkInstr' (LL.Add _ _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.Sub _ _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.Mul _ _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.UDiv _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.SDiv _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.FAdd _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.FSub _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.FMul _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.FDiv _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.URem op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.SRem op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.FRem _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.Shl _ _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.LShr _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.AShr _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.And op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.Or op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.Xor op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.Alloca _ (Just op) _ _) = checkOp op
    checkInstr' LL.Alloca {} = return ()
    checkInstr' (LL.Load _ op _ _ _) = checkOp op 
    checkInstr' (LL.Store _ op0 op1 _ _ _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.GetElementPtr _ op ops _) = mapM_ checkOp (op : ops)
    checkInstr' (LL.CmpXchg _ op0 op1 op2 _ _ _) = mapM_ checkOp [op0, op1, op2]
    checkInstr' (LL.AtomicRMW _ _ op0 op1 _ _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.Trunc op0 _ _) = checkOp op0 
    checkInstr' (LL.ZExt op0 _ _) = checkOp op0 
    checkInstr' (LL.SExt op0 _ _) = checkOp op0 
    checkInstr' (LL.FPToUI op0 _ _) = checkOp op0 
    checkInstr' (LL.FPToSI op0 _ _) = checkOp op0 
    checkInstr' (LL.UIToFP op0 _ _) = checkOp op0 
    checkInstr' (LL.SIToFP op0 _ _) = checkOp op0 
    checkInstr' (LL.FPTrunc op0 _ _) = checkOp op0 
    checkInstr' (LL.FPExt op0 _ _) = checkOp op0 
    checkInstr' (LL.PtrToInt op0 _ _) = checkOp op0 
    checkInstr' (LL.IntToPtr op0 _ _) = checkOp op0 
    checkInstr' (LL.BitCast op0 _ _) = checkOp op0 
    checkInstr' (LL.AddrSpaceCast op0 _ _) = checkOp op0 
    checkInstr' (LL.ICmp _ op0 op1 _) = mapM_ checkOp [op0, op1]
    checkInstr' (LL.Select op0 op1 op2 _) = mapM_ checkOp [op0, op1, op2]  
    checkInstr' (LL.ExtractElement op0 op1 _) = mapM_ checkOp [op0, op1]  
    checkInstr' (LL.InsertElement op0 op1 op2 _) = mapM_ checkOp [op0, op1, op2]  
    checkInstr' (LL.ShuffleVector op0 op1 c _) = do
      mapM_ checkOp [op0, op1]  
      checkConst c 
    checkInstr' (LL.ExtractValue op _ _) = checkOp op
    checkInstr' (LL.InsertValue op0 op1 _ _) = mapM_ checkOp [op0, op1]
    checkInstr' LL.Call {function, arguments} = do
      name <- nameOfCallable function
      funTy <- lookup' name 
      case funTy of  
        FunctionType _ flows -> do
          argNames <- mapM nameOfOperand (fst <$> arguments)
          argTys <- mapM lookup' argNames  
          (Flow _ args' _ ret') <- 
            case find ((== enc) . remoteEnclave) flows of
              Just f -> return f 
              Nothing -> throw $ MissingRemoteEnclave enc  
          let rencs' = remoteEnclavesFromTy <$> argTys
          assert (NoTaintFoundArgs rencs' args') (and $ zipWith S.member rencs' args')
          assert (NoTaintMatch body ret') (S.size (S.intersection body ret') > 0)
        _ -> throw $ ExpectedFunType funTy
        
    checkInstr' i = throw $ UnsupportedInstruction i

    checkOp (LL.ConstantOperand c) = checkConst c
    checkOp _ = return ()

    checkConst (LC.GlobalReference _ name) = do
      ty' <- lookup' name
      case ty' of
        VarType enc'' rencs'' -> do
          assert (EnclaveMismatch enc'' enc) (enc'' == enc)
          assert (NoTaintFound rencs'' body) (S.member rencs'' body)
        _ -> throw $ ExpectedVarType ty'
    checkConst (LC.Struct _ _ members) = mapM_ checkConst members
    checkConst (LC.Array _ members) = mapM_ checkConst members
    checkConst (LC.Vector members) = mapM_ checkConst members
    checkConst (LC.Add _ _ c c') = mapM_ checkConst [c, c']
    checkConst (LC.Sub _ _ c c') = mapM_ checkConst [c, c']
    checkConst (LC.Mul _ _ c c') = mapM_ checkConst [c, c']
    checkConst (LC.UDiv _ c c') = mapM_ checkConst [c, c']
    checkConst (LC.SDiv _ c c') = mapM_ checkConst [c, c']
    checkConst (LC.FAdd c c') = mapM_ checkConst [c, c']
    checkConst (LC.FSub c c') = mapM_ checkConst [c, c']
    checkConst (LC.FMul c c') = mapM_ checkConst [c, c']
    checkConst (LC.FDiv c c') = mapM_ checkConst [c, c']
    checkConst (LC.URem c c') = mapM_ checkConst [c, c']
    checkConst (LC.SRem c c') = mapM_ checkConst [c, c']
    checkConst (LC.FRem c c') = mapM_ checkConst [c, c']
    checkConst (LC.Shl _ _ c c') = mapM_ checkConst [c, c']
    checkConst (LC.LShr _ c c') = mapM_ checkConst [c, c']
    checkConst (LC.AShr _ c c') = mapM_ checkConst [c, c']
    checkConst (LC.And c c') = mapM_ checkConst [c, c']
    checkConst (LC.Or c c') = mapM_ checkConst [c, c']
    checkConst (LC.Xor c c') = mapM_ checkConst [c, c']
    checkConst (LC.GetElementPtr _ c cs) = mapM_ checkConst (c : cs)
    checkConst (LC.Trunc c _) = checkConst c
    checkConst (LC.ZExt c _) = checkConst c
    checkConst (LC.SExt c _) = checkConst c
    checkConst (LC.FPToUI c _) = checkConst c
    checkConst (LC.FPToSI c _) = checkConst c
    checkConst (LC.UIToFP c _) = checkConst c
    checkConst (LC.SIToFP c _) = checkConst c
    checkConst (LC.FPTrunc c _) = checkConst c
    checkConst (LC.PtrToInt c _) = checkConst c
    checkConst (LC.IntToPtr c _) = checkConst c
    checkConst (LC.BitCast c _) = checkConst c
    checkConst (LC.AddrSpaceCast c _) = checkConst c
    checkConst (LC.ICmp _ c c') = mapM_ checkConst [c, c']
    checkConst (LC.FCmp _ c c') = mapM_ checkConst [c, c']
    checkConst (LC.Select c c' c'') = mapM_ checkConst [c, c', c'']
    checkConst (LC.ExtractElement c c') = mapM_ checkConst [c, c']
    checkConst (LC.InsertElement c c' c'') = mapM_ checkConst [c, c', c'']
    checkConst (LC.ShuffleVector c c' c'') = mapM_ checkConst [c, c', c'']
    checkConst (LC.ExtractValue c _) = checkConst c
    checkConst (LC.InsertValue c c' _) = mapM_ checkConst [c, c']
    checkConst _ = return ()

    nameOfCallable (Right (LL.ConstantOperand (LC.GlobalReference _ n))) = return n 
    nameOfCallable (Right (LL.LocalReference _ _)) = throw UnsupportedLocalFunction  
    nameOfCallable (Right _) = throw UnsupportedMetadataCall  
    nameOfCallable (Left _) = throw UnsupportedInlineASM
checkInstr _ _ (Instruction (_ :& AnnotatedInstr ty)) = throw $ ExpectedVarType ty

checkTerm :: Enclave -> Flow -> Terminator (LLWrapper & Annotated) -> Tc ()
checkTerm _ (Flow _ _ _ ret) (Terminator ((WrapTerminator term) :& (AnnotatedTerm ty))) = 
  case term of
    LL.Do (LL.Ret (Just op) _) -> do
      name <- nameOfOperand op
      ty' <- lookup' name
      let renc = remoteEnclavesFromTy ty'
      assert (NoTaintFound renc ret) (S.member renc ret) 
      assert (TypeMismatch ty' ty) (ty' == ty)
    _ -> pure ()