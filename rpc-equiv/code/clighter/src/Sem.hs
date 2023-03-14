module Sem (mkSemantics) where

import CLighter

import Data.Int
import Data.Map as M
import Data.DefaultMap as DM

------------
-- VALUES --
------------

data Val =
    VUndef
  | VInt Int32
  | VLong Int64
  | VFloat Double
  | VSingle Float
  | VPtr Block Ptrofs

boolVal :: Val -> CType -> Mem -> Bool
boolVal (VInt n) (TInt _ _) m      = n /= (0   :: Int32)
boolVal (VFloat d) (TFloat F64) m  = d /= (0.0 :: Double)
boolVal (VSingle f) (TFloat F32) m = f /= (0.0 :: Float)
boolVal (VLong l) (TLong _) m      = l /= (0   :: Int64)
boolVal (VPtr loc ofs) (TPointer _) m = weakValidPtr m loc ofs
boolVal _ _ _ = error "boolVal: type cannot be converted to boolean"

------------
-- MEMORY --
------------

-- Architecture information
ptr64 :: Bool
ptr64 = True -- Not parameterized for now, assume 64-bit arch

-- Positive integer
type Block = Int

data Permission =
    Freeable  -- Can be freed, written, read, compared
  | Writeable -- Can be written, read, compared
  | Readable  -- Can be read, compared
  | Nonempty  -- Can be compared

-- Every memory position has a PermMax and a PermCur permission.
-- PermMax is set on memory allocation, can only be lowered.
-- PermCur can be lowered or raised, but never above PermMax for that memory.
data PermType = PermMax | PermCur

-- In-memory values
data Quantity = Q32 | Q64
data Memval =
    Undef
  | Byte Int8
  | Fragment Val Quantity Int

data MemoryChunk =
    MInt8Signed
  | MInt8Unsigned
  | MInt16Signed
  | MInt16Unsigned
  | MInt32
  | MInt64
  | MFloat32
  | MFloat64
  | Many32
  | Many64

mptr :: MemoryChunk
mptr = if ptr64 then MInt64 else MInt32

type Mem =
  ( DM.Map (Block, Ptrofs) Memval -- Memory Contents
  , DM.Map Block (Ptrofs -> PermType -> Maybe Permission) -- Access permission
  , Block -- Next block
  )

emptyMem :: Mem
emptyMem = (DM.empty Undef, DM.empty (\_ _ -> Nothing), 1)

-- Omitted: readonly, volatile
permGlobVar :: GlobVar -> Permission
permGlobVar _ = Writeable

idataSize :: InitData -> Int
idataSize (InitInt8  _) = 1
idataSize (InitInt16 _) = 2
idataSize (InitInt32 _) = 4
idataSize (InitInt64 _) = 8
idataSize (InitFloat32 _) = 4
idataSize (InitFloat64 _) = 8
idataSize (InitAddrOf _ _) = if ptr64 then 8 else 4
idataSize (InitSpace n) = max n 0

idataSizes :: [InitData] -> Int
idataSizes idata = foldl (+) 0 $ map idataSize idata

storeIdata :: GEnv -> Block -> (Mem, Int) -> InitData -> Mem
storeIdata ge b (m, p) idata =
  case idata of
    InitInt8    n -> (store MInt8Unsigned  m b p (VInt n),    p')
    InitInt16   n -> (store MInt16Unsigned m b p (VInt n),    p')
    InitInt32   n -> (store MInt32         m b p (VInt n),    p')
    InitInt64   n -> (store MInt64         m b p (VLong n),   p')
    InitFloat32 n -> (store MFloat32       m b p (VSingle n), p')
    InitFloat64 n -> (store MFloat64       m b p (VFloat n),  p')
    InitSpace   _ -> (m, p')
    InitAddrOf ident ptrofs ->
      (store mptr m b p (VPtr (findSymbol ge ident) ptrofs), p')
    where
      p' = p + idataSize idata

storeIdatas :: GEnv -> Mem -> Block -> Int -> [InitData] -> Mem
storeIdatas ge m b p idata = foldl (storeIdata ge b) (m, p) idata

storeZeros :: Mem -> Block -> Int -> Int -> Mem
storeZeros m b p n =
  foldl 
    (\m' p' -> store MInt8Unsigned m' b p' $ VInt (0 :: Int32))
    m (map (\x -> p + x) [0..(n-1)])

allocGlobal :: GEnv -> Mem -> (Ident, GlobalDefinition) -> Mem
allocGlobal ge m (i, GFun f) =
  dropPerm m' b 0 1 Nonempty
  where
    (m', b) = alloc m 0 1
allocGlobal ge m (i, GVar v@(ty, idata)) =
  dropPerm m''' b 0 sz permGlobVar v
  where
    sz = idataSizes idata
    (m', b) = alloc m 0 sz
    m'' = storeZeros m' b 0 sz
    m''' = storeIdatas ge m'' b 0 idata

initMem :: GEnv -> Program -> Mem
initMem ge (defs, _, _, _) = foldl (allocGlobal ge) emptyMem defs

permImplies :: (Maybe Permission) -> Permission
permImplies (Just Nonempty) Nonempty = True
permImplies (Just Readable) Readable = True
permImplies (Just Readable) Nonempty = True
permImplies (Just Writeable) Writeable = True
permImplies (Just Writeable) Readable = True
permImplies (Just Writeable) Nonempty = True
permImplies (Just Freeable) Freeable = True
permImplies (Just Freeable) Writeable = True
permImplies (Just Freeable) Readable = True
permImplies (Just Freeable) Nonempty = True
permImplies _ _ = False

-- Every addr in [(b, lo), (b, hi)] has permission at least P
rangePerm :: Mem -> Block -> Int -> Int -> PermType -> Permission -> Bool
rangePerm (_, access, _) b lo hi ty p =
  all ((flip bperms) ty) [lo..(hi-1)]
  where
    bPerms = DM.lookup b access
    hasPerm ofs = permImplies (bPerms ofs ty) p

getPerms :: Mem -> Block -> Ptrofs -> PermType -> Maybe Permission
getPerms (_, access, _) b ofs ty = (DM.lookup b access) ofs ty

free :: Mem -> (Block, Int, Int) -> Mem
free m (b, lo, hi) =
  if   rangePerm m b lo hi PermCur Freeable 
  then uncheckedFree m
  else error "free: invalid permissions"
  where
    uncheckedFree (contents, access, nxt) =
      (contents, access', nxt)
      where
        access' = 
          M.insert b 
            (\ofs ty -> if lo <= ofs && ofs < hi then Nothing else getPerms m b ofs ty)
            access

freeList :: Mem -> [(Block, Int, Int)] -> Mem
freeList m bs = foldl free m bs

------------------
-- ENVIRONMENTS --
------------------

-- Omitted: List of public symbols (all symbols are public)
type GlobalEnv =
  ( M.Map Ident Block            -- Map from symbol to memory block
  , M.Map Block GlobalDefinition -- Map from memory block to definition
  , Block                        -- Next symbol pointer
  )

unsafeLookup :: (a, b) => a -> M.Map a b -> b
unsafeLookup k m = 
  case M.lookup of
    Just v -> v
    _ -> error "unsafeLookup: failed"

emptyGlobalEnv :: GlobalEnv
emptyGlobalEnv = (M.Empty, M.Empty, 1)

mkGlobalEnv :: Program -> GlobalEnv
mkGlobalEnv (defs, _, _, _) =
  foldl addGlobal emptyGlobalEnv defs
  where
    addGlobal (st, bt, next) (i, def) = 
        (M.insert i next st, M.insert next def bt, next + 1)

type GEnv = (GlobalEnv, CompositeEnv)  -- Maps for global vars/funs and composites
type LEnv = M.Map Ident (Block, CType) -- Maps local variables to block, type
type TEnv = M.Map Ident Val            -- Maps temporary variables to value directly

mkGEnv :: Program -> GEnv
mkGEnv p@(_, _, _, cenv) = (mkGlobalEnv p, cenv)

---------------------------------
-- PROGRAM EVALUATION AND STEP --
---------------------------------

evalExpr :: GEnv -> LEnv -> TEnv -> Mem -> Expr -> Val
evalExpr _ _ _ _ (EConstInt i _) = VInt i
evalExpr _ _ _ _ (EConstFloat d _) = VFloat d
evalExpr _ _ _ _ (EConstSingle f _) = VSingle f
evalExpr _ _ _ _ (EConstLong l _) = VLong l
evalExpr _ _ t _ (ETempVar ident _) = unsafeLookup ident t
evalExpr ge le _  m (EAddrOf expr _) =
  VPtr loc ofs
  where
    (loc, ofs) = evalLValue ge le m expr
evalExpr ge le te m (EUnOp op expr _) =
  evalUnaryOp op v (typeof expr) m
  where
    v = evalExpr ge le te m expr
evalExpr ge le te m (EBinOp op e1 e2 _)
  evalBinaryOp ge op v1 (typeof e1) v2 (typeof e2) m
  where
    v1 = evalExpr ge le te m e1
    v2 = evalExpr ge le te m e2
evalExpr ge le te m (ECast expr ty) =
  evalCast v (typeof expr) ty m
  where
    v = evalExpr ge le te m expr
evalExpr ge le _ m e = -- EVar, EDeref, EField handled by evalLValue
  deref (typeof e) m loc ofs
  where
    (loc, ofs) = evalLValue ge le m e

evalLValue :: GEnv -> LEnv -> Mem -> Expr -> (Block, Ptrofs)
evalLValue ge le m (EVar ident t) =
  (0, 0) -- TODO: first check local, then global
evalLValue ge le m (EDeref expr t) =
  (0, 0) -- TODO
evalLValue ge le m (EField expr ident t) =
  (0, 0) -- TODO
evalLValue _ _ _ _ = error "evalLValue: expression is not an lvalue"

evalExprList :: GEnv -> LEnv -> TEnv -> Mem -> [Expr] -> [CType] -> [Val]
evalExprList _ _ _ _ [] [] = []
evalExprList ge le te m (e:es) (t:ts) =
  v_cast:(evalExprList es ts)
  where
    v = evalExpr ge le te m e
    v_cast = evalCast v (typeof e) t
evalExprList _ = error "evalExprList: list length mismatch"

-- Omitted: loops, switch
data Continuation =
    KStop
  | KSeq Statement Continuation
  | KCall (Maybe Ident) Function LEnv TEnv Continuation

callCont :: Continuation -> Continuation
callCont (KSeq s k) = callCont k
callCont k = k

data State =
    State Function Statement Continuation LEnv TEnv Mem
  | CallState Function [Val] Continuation Mem
  | ReturnState Val Continuation Mem

initialState :: Program -> State
initialState p@(_, main, _, _) =
  let
    ge = mkGEnv p
    m = initMem ge p
    f = findFunctionPtr ge $ findSymbol ge main
  in
    CallState f [] KStop m

finalState :: State -> Maybe Int32
finalState (ReturnState (VInt r) KStop _) = Just r
finalState _ = Nothing

-- Omitted: observable event trace
step :: GEnv -> State -> State
step ge (State f (SSkip) k le te m) =
  case k of
    KSeq st' k' -> State f st' k' le te m
    k' -> ReturnState VUndef k' (freeList m $ blocksOfEnv le)
step ge (State f (SAssign ex1 ex2) k le te m) =
  State f SSkip k le te m'
  where
    (loc, ofs) = evalLValue ge le m ex1
    v = evalExpr ge le te m ex2
    v' = evalCast v (typeof ex2) (typeof ex1) m
    m' = assign ge (typeof ex1) m loc ofs v'
step ge (State f (SSet ident ex) k le te m) =
  State f SSkip k le (M.insert ident (evalExpr ge le te m ex) te) m
step ge (State f (SCall ident ex args) k le te m) =
  Callstate fd vargs (Kcall ident f le te k) m
  where
    (tyargs, _) = classifyFun (typeof ex)
    vf = evalExpr ge le te m ex
    fd = findFunction ge vf
    vargs = evalExprList ge le te m args tyargs
step ge (State f (SSequence st1 st2) k le te m) =
  State f st1 (KSeq st2 k) le te m
step ge (State f (SIfThenElse ex st1 st2) k le te m) =
  State f (if boolVal v (typeof ex) m then st1 else st2) k le te m
  where
    v = evalExpr ge le te m ex
step ge (State (rty, _, _, _, _) (SReturn m_ex) k le te m) =
  case m_ex of
    Just ex -> mkReturn $ evalCast (evalExpr ge le te m ex) (typeof ex) rty m
    Nothing -> mkReturn VUndef
    where
      mkReturn v = ReturnState v (callCont k) (freeList m $ blocksOfEnv le)
step ge (CallState f@(_, _, _, _, body) args k m) =
  State f body k le te m'
  where
    (le, te, m') = functionEntry ge f args m
step ge (ReturnState v k m) =
  case k of
    KCall optid f le te k' -> State f SSkip k' le (setOptTmp optid v te) m
    _ -> error "step: malformed program, ReturnState with no KCall"
    where
      setOptTmp (Just ident) v te = M.insert ident v te
      setOptTmp Nothing _ te = te

type Semantics =
  ( GEnv -> State -> State -- Step function
  , State                  -- Initial state
  , State -> Maybe Int32   -- Final state
  , GEnv                   -- Global env
  )

mkSemantics :: Program -> Semantics
mkSemantics p = (step, initialState p, finalState, mkGEnv p)

-- TODO:

-- weakValidPtr
-- blocksOfEnv
-- evalLValue
-- deref
-- dropPerm
-- assign
-- store
-- alloc

-- findSymbol
-- findFunction
-- findFunctionPtr
-- classifyFun
-- functionEntry

-- evalUnaryOp
-- evalBinaryOp
-- evalCast