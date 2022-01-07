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

import Control.Monad.Trans.Except ( throwE, ExceptT, Except, runExcept )
import Control.Monad.Trans.Reader ( Reader, local, ReaderT (ReaderT, runReaderT), ask )
import Data.List (sortBy, find)
import Data.Set (Set)
import qualified LLVM.AST as LL
import qualified LLVM.AST.Global as LL
import LLVM.AST.Global (basicBlocks, parameters)
import Text.Read (readMaybe)
import Data.Map ( Map )
import qualified Data.Map as M
import Control.Monad.Trans.Class
import qualified Data.Set as S
import qualified LLVM.AST.Constant as LC

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
  deriving (Show, Eq)


data CLEType
  = VarType Enclave RemoteEnclaves
  | FunctionType Enclave [Flow]
  deriving (Show, Eq)

data Annotated (i :: LLIndex) where
  AnnotatedTerm :: CLEType -> CLEType -> Annotated 'Term
  AnnotatedInstr :: CLEType -> Annotated 'Inst
  UnAnnotatedBasicBlock :: Annotated 'BB
  AnnotatedGlobal :: CLEType -> Annotated 'Glob

instance Show (Annotated i) where
  show (AnnotatedTerm c d) = show c ++ " " ++ show d
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
  | WrongFuncArgs Int Int
  | UnsupportedVarArgs
  | LookupFailure LL.Name
  | MissingRemoteEnclave Enclave 
  | EnclaveMismatch Enclave Enclave -- actual, expected
  | UnsupportedInstruction LL.Instruction
  | UnsupportedInlineASM
  | UnsupportedLocalFunction
  | ArgumentTypeMismatch [CLEType] [CLEType]
  deriving Show

-- Map from names to type
-- for basic blocks the type refers to the return type
type Context = Map LL.Name CLEType

type Tc = ReaderT Context (Except Err)

assert :: Err -> Bool -> Tc ()
assert _ True = pure ()
assert e _ = lift $ throwE e

(<:) :: CLEType -> CLEType -> Bool  
VarType enc renc <: VarType enc' renc' = enc == enc' && S.isSubsetOf renc renc'  
FunctionType enc _flows <: VarType enc' _flows' = enc == enc' && False -- TODO: rest of subtype impl  
_ <: _ = False 

look :: LL.Name -> Tc CLEType
look name = do
  ctx <- ask
  case M.lookup name ctx of
    Just t -> return t
    _ -> lift $ throwE $ LookupFailure name

fromOperand :: LL.Operand -> CLEType -> Tc CLEType 
fromOperand (LL.LocalReference _ name) = const $ look name
fromOperand (LL.ConstantOperand (LC.GlobalReference _ name)) = const $ look name
-- TODO: recurse on constant operand variants       
fromOperand _ = return


fromOperands :: [LL.Operand] -> CLEType -> Tc CLEType 
fromOperands ops vty@(VarType l _) = do
  tys <- mapM (`fromOperand` vty) ops
  rencs <- go tys 
  return (VarType l rencs)
  where
    go [] = return S.empty 
    go ((VarType l' renc) : tys) = do  
      assert (EnclaveMismatch l' l) (l' == l) 
      rencs <- go tys 
      return $ renc `S.union` rencs
    go (ty : _) = lift $ throwE $ ExpectedVarType ty
fromOperands _ ty = lift $ throwE $ ExpectedVarType ty



-- LL.Name is the name of the basic block to which the terminator belongs 
checkTerminator :: 
  LL.Name -> 
  Terminator (LLWrapper & Annotated) -> 
  CLEType -> 
  CLEType -> 
  Tc ()
checkTerminator _ (Terminator (IndexedPair (WrapTerminator (LL.Do (LL.Ret op _))) (AnnotatedTerm _ assignedRetTy))) _ retTy = do
  inferredRetTy <- maybe (return retTy) (`fromOperand` retTy) op 
  assert (TypeMismatch inferredRetTy assignedRetTy) (inferredRetTy <: assignedRetTy) 
  assert (TypeMismatch assignedRetTy retTy) (assignedRetTy <: retTy) 

checkTerminator _ _ _ _ = error "not implemented"  

instrTy :: LL.Instruction -> CLEType -> Tc CLEType  
instrTy (LL.Add _ _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.FAdd _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.Sub _ _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.FSub _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.Mul _ _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.FMul _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.UDiv _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.SDiv _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.FDiv _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.URem op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.SRem op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.FRem _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.Shl _ _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.LShr _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.AShr _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.And op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.Or op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.Xor op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.Alloca _ (Just op) _ _) = fromOperand op
instrTy LL.Alloca {} = return
instrTy (LL.Load _ op _ _ _) = fromOperand op
instrTy (LL.Store _ op0 op1 _ _ _) =  fromOperands [op0, op1]
instrTy (LL.GetElementPtr _ op ops _) = fromOperands (op : ops)
instrTy (LL.CmpXchg _ op0 op1 op2 _ _ _) = fromOperands [op0, op1, op2]
instrTy (LL.AtomicRMW _ _ op0 op1 _ _) = fromOperands [op0, op1]
instrTy (LL.Trunc op0 _ _) = fromOperand op0
instrTy (LL.ZExt op0 _ _) = fromOperand op0
instrTy (LL.SExt op0 _ _) = fromOperand op0
instrTy (LL.FPToUI op0 _ _) = fromOperand op0
instrTy (LL.FPToSI op0 _ _) = fromOperand op0
instrTy (LL.UIToFP op0 _ _) = fromOperand op0
instrTy (LL.SIToFP op0 _ _) = fromOperand op0
instrTy (LL.FPTrunc op0 _ _) = fromOperand op0
instrTy (LL.FPExt op0 _ _) = fromOperand op0
instrTy (LL.PtrToInt op0 _ _) = fromOperand op0
instrTy (LL.IntToPtr op0 _ _) = fromOperand op0
instrTy (LL.BitCast op0 _ _) = fromOperand op0
instrTy (LL.AddrSpaceCast op0 _ _) = fromOperand op0
instrTy (LL.ICmp _ op0 op1 _) = fromOperands [op0, op1]
instrTy (LL.FCmp _ op0 op1 _) = fromOperands [op0, op1]
instrTy LL.Call {function, arguments} = \vty -> do
  (enc, _) <- varTyComps vty 
  (renc, flows) <- funTyComps  
  case find (\Flow {remoteEnclave} -> remoteEnclave == renc) flows of
    Just Flow {args, ret} -> do 
      argTys <- mapM (flip fromOperand vty . fst) arguments
      let expTys = VarType enc <$> args
      assert (ArgumentTypeMismatch argTys expTys) (and $ zipWith (<:) expTys argTys)
      return (VarType enc ret)   
    Nothing -> lift $ throwE $ MissingRemoteEnclave renc   
  where
    varTyComps ty =
      case ty of
        VarType e renc -> return (e, renc) 
        _ -> lift $ throwE $ ExpectedVarType ty
    lookupFunTy = 
      case function of 
        Right (LL.ConstantOperand (LC.GlobalReference _ name)) -> look name
        Right LL.LocalReference {} -> lift $ throwE UnsupportedLocalFunction
        Right _ -> error "not implemented" 
        Left _ -> lift $ throwE UnsupportedInlineASM 
    funTyComps = do  
      ty <- lookupFunTy
      case ty of
        VarType _ _ -> lift $ throwE $ ExpectedFunType ty 
        FunctionType e f -> return (e, f) 


instrTy _ = error "not implemented" 

checkInstruction :: Instruction (LLWrapper & Annotated) -> CLEType -> Tc Context
checkInstruction (Instruction (IndexedPair (WrapInstruction (LL.Do instr)) (AnnotatedInstr assignedTy))) bodyTy = do
  inferredTy <- instrTy instr bodyTy
  assert (TypeMismatch inferredTy assignedTy) $ inferredTy <: assignedTy 
  assert (TypeMismatch assignedTy bodyTy) $ assignedTy <: bodyTy 
  pure M.empty
checkInstruction (Instruction (IndexedPair (WrapInstruction (name LL.:= instr)) (AnnotatedInstr assignedTy))) bodyTy = do
  inferredTy <- instrTy instr bodyTy
  assert (TypeMismatch inferredTy assignedTy) $ inferredTy <: assignedTy 
  assert (TypeMismatch assignedTy bodyTy) $ assignedTy <: bodyTy 
  pure $ M.singleton name inferredTy 

-- checkInstruction (Instruction (WrapInstruction (LL.Do instr))) expTy = do

--   checkLLInstruction instr expTy
--   pure M.empty
--   checkLLInstruction instr expTy
--   return $ M.singleton name expTy
checkBasicBlock :: 
  BasicBlock (LLWrapper & Annotated) -> 
  CLEType -> -- body type   
  CLEType -> -- ret type
  Tc Context 
checkBasicBlock (BasicBlock name instrs term _) bodyTy retTy = do
  -- Check all instruction types.
  -- Instructions return a new context which may include
  -- newly bounded variables
  ctx' <- foldl (folder bodyTy) ask instrs
  -- check terminator using new context   
  local (const ctx') $ checkTerminator name term bodyTy retTy
  return ctx'
  where
    folder ty tcctx instr = do
      ctx <- tcctx
      ctx' <- local (M.union ctx) $ checkInstruction instr ty
      return $ ctx `M.union` ctx'

checkBasicBlocks :: 
  [BasicBlock (LLWrapper & Annotated)] -> 
  CLEType -> -- body type   
  CLEType -> -- ret type
  Tc ()
checkBasicBlocks bbs bodyTy retTy = do
  _ <- foldl folder ask bbs 
  return ()
  where
    folder tcctx bb = do
      ctx <- tcctx 
      local (const ctx) $ checkBasicBlock bb bodyTy retTy

checkGlobal :: Global (LLWrapper & Annotated) -> Tc Context
checkGlobal (Global (IndexedPair (WrapGlobal gb@LL.GlobalVariable {}) (AnnotatedGlobal ty@(VarType _ _)))) = do
  ctx <- ask
  return $ ctx `M.union` M.singleton (LL.name gb) ty
checkGlobal (Global (IndexedPair (WrapGlobal gb@LL.GlobalAlias {}) (AnnotatedGlobal ty@(VarType _ _)))) = do
  ctx <- ask
  return $ ctx `M.union` M.singleton (LL.name gb) ty
checkGlobal (Function bbs (IndexedPair (WrapGlobal LL.Function {parameters, ..}) (AnnotatedGlobal (FunctionType enc flows)))) = do 
  -- check for unsupported variable arguments
  assert UnsupportedVarArgs (not $ snd parameters)
  -- check to make sure # of arguments in type match up 
  -- with # of arguments in function 
  mapM_ (checkArgLengths . args) flows
  let paramNames = name' <$> fst parameters
  let flowArgs = fmap (zip paramNames . fmap argTys . args) flows
  let expectedBodyTys = fmap (VarType enc . body) flows
  let expectedRetTys = fmap (VarType enc . ret) flows
  let expectedTys = zip expectedBodyTys expectedRetTys
  -- Note: basic blocks are assumed to be in depth first order
  -- i.e., no variables bound in kth basic block can appear in any blocks earlier 
  mapM_ (\((body, ret), args) -> withArgs args $ checkBasicBlocks bbs body ret) (zip expectedTys flowArgs)
  ask
  where
    name' (LL.Parameter _ n _) = n

    withArgs args tca = 
      local (\ctx -> M.fromList args `M.union` ctx) tca

    argTys args = VarType enc args
    checkArgLengths args =
        let lp = length $ fst parameters
            la = length args in
        assert (WrongFuncArgs lp la) $ lp == la

checkGlobal _ = error "invalid input"  -- TODO: write error cases
-- checkGlobal (Global _) (VarType _enc _renc) = error "not implemented"
-- checkGlobal (Global _) t@(FunctionType _ _) = lift $ throwE $ ExpectedVarType t
-- checkGlobal (Function _ _) t@(VarType _ _) = lift $ throwE $ ExpectedFunType t
-- checkGlobal (Function bbs (WrapGlobal LL.Function {parameters, ..})) (FunctionType enc flows) = do

-- checkGlobal (Function _ (WrapGlobal global)) _ = lift $ throwE $ ExpectedFun global

runTc :: Context -> Tc a -> Either Err a 
runTc ctx tc = runExcept $ runReaderT tc ctx  