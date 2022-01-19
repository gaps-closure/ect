{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE NamedFieldPuns #-}

{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# LANGUAGE TupleSections #-}

module TypeCheck where

import Control.Monad.Trans.Class
import Control.Monad.Trans.Except (Except, ExceptT, runExcept, throwE)
import Control.Monad.Trans.Reader (Reader, ReaderT (ReaderT, runReaderT), ask, local, asks)
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
import Data.Maybe (mapMaybe, catMaybes)
import Debug.Trace
import Control.Monad (void, zipWithM_)
import Control.Applicative ((<|>))

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

type family LLWrapperArg f where
  LLWrapperArg Terminator = LL.Named LL.Terminator
  LLWrapperArg Instruction = LL.Named LL.Instruction
  LLWrapperArg BasicBlock = LL.BasicBlock
  LLWrapperArg Global = LL.Global

class Wrap f where
  wrap :: LLWrapperArg f -> f LLWrapper

instance Wrap Terminator where
  wrap = Terminator . WrapTerminator

instance Wrap Instruction where
  wrap = Instruction . WrapInstruction

instance Wrap BasicBlock where
  wrap bb@(LL.BasicBlock n instrs term) = BasicBlock n (fmap wrap instrs) (wrap term) (WrapBasicBlock bb)

instance Wrap Global where
  wrap global@LL.GlobalVariable {..} = Global $ WrapGlobal global
  wrap global@LL.GlobalAlias {..} = Global $ WrapGlobal global
  wrap global@LL.Function {basicBlocks, ..} = Function (wrap <$> sortBBs basicBlocks) (WrapGlobal global)
    where
      sortBBs = sortBy compBB
      compBB (LL.BasicBlock n _ _) (LL.BasicBlock n' _ _) = compare n n'

type family ZipWithResult m where
  ZipWithResult (BasicBlock h) = Maybe (BasicBlock h)
  ZipWithResult (Global h) = Maybe (Global h)
  ZipWithResult m = m

class ZipWithLLIndex m where
  zipWithIdx :: (forall (i :: LLIndex). f i -> g i -> h i) -> m f -> m g -> ZipWithResult (m h)

instance ZipWithLLIndex Terminator where
  zipWithIdx f (Terminator fi) (Terminator gi) = Terminator $ f fi gi

instance ZipWithLLIndex Instruction where
  zipWithIdx f (Instruction fi) (Instruction gi) = Instruction $ f fi gi

instance ZipWithLLIndex BasicBlock where
  zipWithIdx f (BasicBlock n instrs term fbb) (BasicBlock n' instrs' term' gbb)
    | n == n' = Just $ BasicBlock n (zipWith (zipWithIdx f) instrs instrs') (zipWithIdx f term term') (f fbb gbb)
    | otherwise = Nothing

instance ZipWithLLIndex Global where
  zipWithIdx f (Global fg) (Global gg) = Just $ Global (f fg gg)
  zipWithIdx f (Function bbs fg) (Function bbs' gg) =
    Just $ Function (concatMap toList $ zipWith (zipWithIdx f) (sort' bbs) (sort' bbs')) (f fg gg)
    where
      toList (Just x) = [x]
      toList Nothing = []
      sort' = sortBy (\b b' -> compare (name b) (name b'))
      name (BasicBlock n _ _ _) = n
  zipWithIdx _ _ _ = Nothing

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

type Level = String

type RemoteLevels = Set Level

data Flow = (:<:) RemoteLevels RemoteLevels
  deriving (Show, Eq)
infix 5 :<:

data CLEType
    = VarType Level RemoteLevels
    | FunctionType {
      level :: Level,
      flows :: [Flow],
      callableFrom :: RemoteLevels,
      args :: [RemoteLevels],
      ret :: RemoteLevels
    }
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


data Err
    = ShareabilityViolation RemoteLevels RemoteLevels
    | LookupFailure LL.Name
    | ExpectedVarType CLEType
    | ExpectedFunType CLEType
    | ExpectedFun LL.Global
    | MissingRemote Level RemoteLevels
    | LevelMismatch Level Level -- expected, actual
    | UnsupportedInstruction LL.Instruction
    | UnsupportedVarArgs
    | UnsupportedInlineASM
    | UnsupportedMetadataCall
    | UnsupportedMetadataOp
    | UnsupportedLocalFunction
    | NoBasicBlocks
    | UnsupportedTerminator (LL.Named LL.Terminator)
    deriving (Show)

-- Map from names to type
-- for basic blocks the type refers to the return type
data Context 
  = Context {
    locals :: Map LL.Name RemoteLevels,   
    globals :: Map LL.Name CLEType,
    universe :: Set Level  
  }

type SeenBasicBlocks = Set LL.Name 
type BBMap = Map LL.Name (BasicBlock (LLWrapper & Annotated))

type Tc = ReaderT Context (Except Err)

throw :: Err -> Tc a
throw = lift . throwE

assert :: Err -> Bool -> Tc ()
assert _ True = pure ()
assert e _ = throw e

lookupGlobal :: LL.Name -> Tc CLEType
lookupGlobal name = do
  ctx <- asks globals 
  case M.lookup name ctx of
      Just t -> return t
      _ -> throw $ LookupFailure name

lookupLocal :: LL.Name -> Tc RemoteLevels
lookupLocal name = do
  ctx <- asks locals 
  case M.lookup name ctx of
      Just t -> return t
      _ -> throw $ LookupFailure name 

runTc :: Context -> Tc a -> Either Err a
runTc ctx tc = runExcept $ runReaderT tc ctx

intersectAll :: [RemoteLevels] -> Tc RemoteLevels
intersectAll levels = do
  uni <- asks universe 
  pure $ foldl S.intersection uni levels

withLocals :: Map LL.Name RemoteLevels -> Tc a -> Tc a 
withLocals lcls tc = do
  local combineCtx tc
  where
    combineCtx ctx = ctx { locals = lcls } 

combineContexts :: Context -> Context -> Context 
combineContexts 
  (Context locals globals universe) 
  (Context locals' globals' universe')
  = Context (M.union locals locals') (M.union globals globals') (S.union universe universe')

nameOfCallable :: LL.CallableOperand -> Tc LL.Name 
nameOfCallable (Right (LL.ConstantOperand (LC.GlobalReference _ n))) = return n
nameOfCallable (Right (LL.LocalReference _ _)) = throw UnsupportedLocalFunction
nameOfCallable (Right _) = throw UnsupportedMetadataCall
nameOfCallable (Left _) = throw UnsupportedInlineASM

checkGlobal :: Global (LLWrapper & Annotated) -> Tc ()
checkGlobal (Global (_ :& AnnotatedGlobal (VarType _ _))) = return ()
checkGlobal (Global (_ :& AnnotatedGlobal ty@FunctionType {})) = throw $ ExpectedVarType ty
checkGlobal (Function _ (_ :& AnnotatedGlobal ty@(VarType _ _))) = throw $ ExpectedFunType ty
checkGlobal (Function bbs (WrapGlobal LL.Function {parameters} :& AnnotatedGlobal FunctionType {level, args, ret})) = do
  assert UnsupportedVarArgs (not $ snd parameters)
  firstBB <- firstBasicBlock
  uni <- asks universe 
  actualRet <- withLocals argMap $ checkBasicBlock level uni bbMap S.empty firstBB
  let expectedRet = ret
  assert (ShareabilityViolation actualRet expectedRet) (actualRet `S.isSubsetOf` expectedRet) 
  where
    argMap = M.fromList $ zip (nameOfParameter <$> fst parameters) args
    nameOfParameter (LL.Parameter _ n _) = n
    firstBasicBlock = case bbs of 
      [] -> throw NoBasicBlocks 
      (bb : _) -> pure bb
    bbMap = M.fromList $ zip (bbName <$> bbs) bbs
    bbName (BasicBlock n _ _ _) = n 
  
checkGlobal (Function _ (WrapGlobal ll :& _)) = throw $ ExpectedFun ll

checkBasicBlock ::
  Level
  -> RemoteLevels  
  -> BBMap 
  -> SeenBasicBlocks 
  -> BasicBlock (LLWrapper & Annotated)
  -> Tc RemoteLevels
checkBasicBlock level constr bbMap seen (BasicBlock n instrs term _) = do
  locals' <- checkInstrs
  withLocals locals' (checkTerm level constr bbMap (S.insert n seen) term)
  where
    checkInstrs = foldl checkOver (asks locals) instrs
    checkOver tclocals instr = do
      lcls <- tclocals
      lcls' <- withLocals lcls (checkInstr level constr instr)
      pure $ M.union lcls lcls'

checkConst :: Level -> LC.Constant -> Tc RemoteLevels
checkConst level (LC.GlobalReference _ name) = do
  ty <- lookupGlobal name 
  case ty of
    VarType glevel gremotes -> do
      assert (LevelMismatch level glevel) (level == glevel)  
      pure gremotes
    _ -> throw $ ExpectedVarType ty 
checkConst level (LC.Struct _ _ members) = intersectAll =<< mapM (checkConst level) members      
checkConst level (LC.Array _ members) = intersectAll =<< mapM (checkConst level) members
checkConst level (LC.Vector members) = intersectAll =<< mapM (checkConst level) members
checkConst level (LC.Add _ _ c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.Sub _ _ c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.Mul _ _ c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.UDiv _ c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.SDiv _ c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.FAdd c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.FSub c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.FMul c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.FDiv c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.URem c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.SRem c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.FRem c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.Shl _ _ c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.LShr _ c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.AShr _ c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.And c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.Or c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.Xor c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.GetElementPtr _ c cs) = intersectAll =<< mapM (checkConst level) (c : cs)
checkConst level (LC.Trunc c _) = checkConst level c
checkConst level (LC.ZExt c _) = checkConst level c
checkConst level (LC.SExt c _) = checkConst level c
checkConst level (LC.FPToUI c _) = checkConst level c
checkConst level (LC.FPToSI c _) = checkConst level c
checkConst level (LC.UIToFP c _) = checkConst level c
checkConst level (LC.SIToFP c _) = checkConst level c
checkConst level (LC.FPTrunc c _) = checkConst level c
checkConst level (LC.PtrToInt c _) = checkConst level c
checkConst level (LC.IntToPtr c _) = checkConst level c
checkConst level (LC.BitCast c _) = checkConst level c
checkConst level (LC.AddrSpaceCast c _) = checkConst level c
checkConst level (LC.ICmp _ c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.FCmp _ c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.Select c c' c'') = intersectAll =<< mapM (checkConst level) [c, c', c'']
checkConst level (LC.ExtractElement c c') = intersectAll =<< mapM (checkConst level) [c, c']
checkConst level (LC.InsertElement c c' c'') = intersectAll =<< mapM (checkConst level) [c, c', c'']
checkConst level (LC.ShuffleVector c c' c'') = intersectAll =<< mapM (checkConst level) [c, c', c'']
checkConst level (LC.ExtractValue c _) = checkConst level c
checkConst level (LC.InsertValue c c' _) = intersectAll =<< mapM (checkConst level) [c, c']
checkConst _ _ = asks universe


checkOp :: Level -> LL.Operand -> Tc RemoteLevels
checkOp l (LL.ConstantOperand c) = checkConst l c
checkOp _ (LL.LocalReference _ name) = lookupLocal name  
checkOp _ _ = asks universe 

checkInstr ::
  Level
  -> RemoteLevels -- constraining type, provides upper bound on shareability
  -> Instruction (LLWrapper & Annotated)
  -> Tc (Map LL.Name RemoteLevels)  
checkInstr level constr (Instruction (WrapInstruction ll :& AnnotatedInstr (VarType level' remotes))) = do
  assert (LevelMismatch level level') (level == level')
  case ll of
    name LL.:= instr -> do
      remotes' <- checkInstr' instr
      assert (ShareabilityViolation remotes remotes') (remotes `S.isSubsetOf` remotes') 
      assert (ShareabilityViolation remotes constr) (remotes `S.isSubsetOf` constr) 
      return (M.singleton name remotes) 
    LL.Do instr -> do
      remotes' <- checkInstr' instr
      assert (ShareabilityViolation remotes remotes') (remotes `S.isSubsetOf` remotes') 
      assert (ShareabilityViolation remotes constr) (remotes `S.isSubsetOf` constr) 
      return M.empty 
  where
    checkOp' = checkOp level
    checkInstr' (LL.Add _ _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.Sub _ _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.Mul _ _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.UDiv _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.SDiv _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.FAdd _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.FSub _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.FMul _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.FDiv _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.URem op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.SRem op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.FRem _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.Shl _ _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.LShr _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.AShr _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.And op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.Or op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.Xor op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.Alloca _ (Just op) _ _) = checkOp' op
    checkInstr' LL.Alloca {} = asks universe 
    checkInstr' (LL.Load _ op _ _ _) = checkOp' op
    checkInstr' (LL.Store _ op0 op1 _ _ _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.GetElementPtr _ op ops _) = intersectAll =<< mapM checkOp' (op : ops)
    checkInstr' (LL.CmpXchg _ op0 op1 op2 _ _ _) = intersectAll =<< mapM checkOp' [op0, op1, op2]
    checkInstr' (LL.AtomicRMW _ _ op0 op1 _ _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.Trunc op0 _ _) = checkOp' op0
    checkInstr' (LL.ZExt op0 _ _) = checkOp' op0
    checkInstr' (LL.SExt op0 _ _) = checkOp' op0
    checkInstr' (LL.FPToUI op0 _ _) = checkOp' op0
    checkInstr' (LL.FPToSI op0 _ _) = checkOp' op0
    checkInstr' (LL.UIToFP op0 _ _) = checkOp' op0
    checkInstr' (LL.SIToFP op0 _ _) = checkOp' op0
    checkInstr' (LL.FPTrunc op0 _ _) = checkOp' op0
    checkInstr' (LL.FPExt op0 _ _) = checkOp' op0
    checkInstr' (LL.PtrToInt op0 _ _) = checkOp' op0
    checkInstr' (LL.IntToPtr op0 _ _) = checkOp' op0
    checkInstr' (LL.BitCast op0 _ _) = checkOp' op0
    checkInstr' (LL.AddrSpaceCast op0 _ _) = checkOp' op0
    checkInstr' (LL.ICmp _ op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.Select op0 op1 op2 _) = intersectAll =<< mapM checkOp' [op0, op1, op2]
    checkInstr' (LL.ExtractElement op0 op1 _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' (LL.InsertElement op0 op1 op2 _) = intersectAll =<< mapM checkOp' [op0, op1, op2]
    checkInstr' (LL.ShuffleVector op0 op1 c _) = do
      mty <- intersectAll =<< mapM checkOp' [op0, op1]
      mty' <- checkConst level c
      intersectAll [mty, mty']
    checkInstr' (LL.ExtractValue op _ _) = checkOp' op
    checkInstr' (LL.InsertValue op0 op1 _ _) = intersectAll =<< mapM checkOp' [op0, op1]
    checkInstr' LL.Call {function, arguments} = do
      name <- nameOfCallable function
      funTy <- lookupGlobal name
      case funTy of
        FunctionType {callableFrom = remotes', args = args', ret = ret'} -> do
          assert (MissingRemote level remotes') (S.member level remotes')
          actualArgTys <- mapM checkOp' (fst <$> arguments)
          let expectedArgTys = args'
          zipWithM_ (\expected actual ->  
            assert (ShareabilityViolation expected actual) (expected `S.isSubsetOf` actual)) expectedArgTys actualArgTys  
          pure ret'
        _ -> throw $ ExpectedFunType funTy
    checkInstr' i = throw $ UnsupportedInstruction i

checkTerm ::
  Level
  -> RemoteLevels
  -> BBMap 
  -> SeenBasicBlocks 
  -> Terminator (LLWrapper & Annotated)
  -> Tc RemoteLevels
checkTerm level constr bbMap seen (Terminator ((WrapTerminator term) :& (AnnotatedTerm (VarType level' remotes)))) = do
  assert (LevelMismatch level level') (level == level')
  case term of
    LL.Do (LL.Ret (Just op) _) -> do
      remotes' <- checkOp level op
      assert (ShareabilityViolation remotes remotes') (remotes `S.isSubsetOf` remotes')   
      pure remotes
    LL.Do LL.CondBr {condition, trueDest, falseDest} -> do
      opRemotes <- checkOp level condition
      bbTrue <- lookupBB trueDest  
      bbFalse <- lookupBB falseDest 
      constr' <- intersectAll [opRemotes, constr] 
      trueRemotes <- checkBB constr' bbTrue
      falseRemotes <- checkBB constr' bbFalse
      remotes' <- intersectAll [trueRemotes, falseRemotes]
      assert (ShareabilityViolation remotes remotes') (remotes `S.isSubsetOf` remotes')   
      pure remotes
    LL.Do LL.Br {dest} -> do
      bb <- lookupBB dest   
      remotes' <- checkBB constr bb   
      assert (ShareabilityViolation remotes remotes') (remotes `S.isSubsetOf` remotes')   
      pure remotes
    _ -> throw $ UnsupportedTerminator term
    where
      lookupBB n = 
        case M.lookup n bbMap of
          Just bb -> pure bb
          Nothing -> throw $ LookupFailure n
      checkBB constr' bb = 
        if S.member (bbName bb) seen then
          asks universe
        else 
          checkBasicBlock level constr' bbMap seen bb
      bbName (BasicBlock n _ _ _) = n
