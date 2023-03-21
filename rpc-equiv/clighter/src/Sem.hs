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
boolVal (VInt n) (TInt _ _) _      = n /= (0   :: Int32)
boolVal (VFloat d) (TFloat F64) _  = d /= (0.0 :: Double)
boolVal (VSingle f) (TFloat F32) _ = f /= (0.0 :: Float)
boolVal (VLong l) (TLong _) _      = l /= (0   :: Int64)
boolVal (VPtr loc ofs) (TPointer _) m = weakValidPtr m loc ofs
boolVal _ _ _ = error "boolVal: type cannot be converted to boolean"

------------
-- MEMORY --
------------

-- Architecture information
-- Not parameterized for now, assume x86 in 64-bit mode
ptr64 :: Bool
ptr64 = True 

alignInt64 :: Int
alignInt64 = 8

alignFloat64 :: Int
alignFloat64 = 8

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

-- Encoding permission ordering
permImplies :: (Maybe Permission) -> Permission -> Bool
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

data Mode =
    ByValue MemoryChunk
  | ByReference
  | ByCopy
  | ByNothing

mptr :: MemoryChunk
mptr = if ptr64 then MInt64 else MInt32

accessMode :: CType -> Mode
accessMode TVoid               = ByNothing
accessMode (TInt I8 Signed)    = ByValue MInt8Signed
accessMode (TInt I8 Unsigned)  = ByValue MInt8Unsigned
accessMode (TInt I16 Signed)   = ByValue MInt16Signed
accessMode (TInt I16 Unsigned) = ByValue MInt16Unsigned
accessMode (TInt I32 _)        = ByValue MInt32
accessMode (TInt IBool _)      = ByValue MInt8Unsigned
accessMode (TLong _)           = ByValue MInt64
accessMode (TFloat F32)        = ByValue MFloat32
accessMode (TFloat F64)        = ByValue MFloat64
accessMode (TPointer _)        = ByValue mptr
accessMode (TArray _ _)        = ByReference
accessMode (TFunction _ _)     = ByReference
accessMode (TStruct _)         = ByCopy

type Mem =
  ( DM.Map Block (Ptrofs -> Memval) -- Memory Contents
  , DM.Map Block (Ptrofs -> PermType -> Maybe Permission) -- Access permission
  , Block -- Next block
  )

emptyMem :: Mem
emptyMem = (DM.empty (\_ -> Undef), DM.empty (\_ _ -> Nothing), 1)

validPtr :: Mem -> Block -> Int -> Bool
validPtr (_, access, _) b ofs =
  permImplies ((DM.lookup b access) ofs PermCur) Nonempty

weakValidPtr :: Mem -> Block -> Int -> Bool
weakValidPtr m b ofs = validPtr m b ofs || validPtr m b (ofs - 1)

alloc :: Mem -> Int -> Int -> (Mem, Block)
alloc (contents, access, nb) lo hi = 
  ((contents', access', nb + 1), nb)
  where
    contents' = DM.insert nb (\_ -> Undef) contents
    access' = DM.insert nb perms access
    perms ofs _ = if (lo <= ofs && ofs < hi) then (Just Freeable) else Nothing

store :: MemoryChunk -> Mem -> Block -> Ptrofs -> Val -> Mem
store chunk m b p v = 0 -- TODO: Memory.v/store

storeVal :: MemoryChunk -> Mem -> Val -> Mem
storeVal chunk m (VPtr loc ofs) = store chunk m loc ofs

load :: MemoryChunk -> Mem -> Block -> Ptrofs -> Val
load chunk m loc ofs = 0 -- TODO: Memory.v/load

-- Omitted: ofs should be unsigned
loadVal :: MemoryChunk -> Mem -> Val -> Val
loadVal chunk m (VPtr loc ofs) = load chunk m loc ofs
loadVal _ _ _ = error "loadVal: address is not a pointer"

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

storeIdata :: GEnv -> Block -> (Mem, Int) -> InitData -> (Mem, Int)
storeIdata ge b (m, p) idata =
  case idata of
    InitInt8    n -> (store MInt8Unsigned  m b ofs (VInt n),    p')
    InitInt16   n -> (store MInt16Unsigned m b ofs (VInt n),    p')
    InitInt32   n -> (store MInt32         m b ofs (VInt n),    p')
    InitInt64   n -> (store MInt64         m b ofs (VLong n),   p')
    InitFloat32 n -> (store MFloat32       m b ofs (VSingle n), p')
    InitFloat64 n -> (store MFloat64       m b ofs (VFloat n),  p')
    InitSpace   _ -> (m, p')
    InitAddrOf ident ptrofs ->
      (store mptr m b ofs (VPtr (findSymbol ge ident) ptrofs), p')
    where
      ofs = ((fromIntegral p) :: Ptrofs)
      p' = p + idataSize idata

storeIdatas :: GEnv -> Mem -> Block -> Int -> [InitData] -> Mem
storeIdatas ge m b p idata = foldl (storeIdata ge b) (m, p) idata

storeZeros :: Mem -> Block -> Int -> Int -> Mem
storeZeros m b p n =
  foldl 
    (\m' p' -> store MInt8Unsigned m' b ((fromIntegral p') :: Ptrofs) $ VInt (0 :: Int32))
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

-- Every addr in [(b, lo), (b, hi)] has permission at least P
rangePerm :: Mem -> Block -> Int -> Int -> PermType -> Permission -> Bool
rangePerm (_, access, _) b lo hi ty p =
  all ((flip bperms) ty) [lo..(hi-1)]
  where
    bPerms = DM.lookup b access
    hasPerm ofs = permImplies (bPerms ofs ty) p

getPerms :: Mem -> Block -> Ptrofs -> PermType -> Maybe Permission
getPerms (_, access, _) b ofs ty = (DM.lookup b access) ofs ty

dropPerm :: Mem -> Block -> Int -> Int -> Permission -> Mem
dropPerm m b lo hi perm = 0 -- TODO: Memory.v/drop_perm

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

findSymbol :: GEnv -> Ident -> Block
findSymbol ((genv_sym, _, _), _) i =
  case M.lookup i genv_sym of
    Just b -> b
    _ -> error "findSymbol: no such symbol"

findDef :: GEnv -> Block -> (Maybe GlobalDefinition)
findDef ((_, defs, _), _) b = M.lookup b defs

findFunctionPtr :: GEnv -> Block -> Function
findFunctionPtr ge b =
  case findDef ge b of
    Just (GFun f) -> f
    _ -> error "findFunctionPtr: Block does not contain a function definition"

findFunction :: GEnv -> Value -> Function
findFunction ge (VPtr b (0 :: Int32)) = findFunctionPtr ge b
findFunction _ _ = error "findFunction: value is not a function pointer"

coSizeOf :: GEnv -> CompositeDefinition -> Int
coSizeOf ge (StructDef _ ms) = 
  ((foldl (\(cur, m) -> cur + nextField ge cur m) 0 ms) + 7) `div` 8

sizeOf :: GEnv -> CType -> Int
sizeOf _ TVoid = 1
sizeOf _ (TInt I8 _) = 1
sizeOf _ (TInt I16 _) = 2
sizeOf _ (TInt I32 _) = 4
sizeOf _ (TInt IBool _) = 1
sizeOf _ (TLong _) = 8
sizeOf _ (TFloat F32) = 4
sizeOf _ (TFloat F64) = 8
sizeOf _ (TPointer _) = if ptr64 then 8 else 4
sizeOf _ (TFunction _ _) = 1
sizeOf ge (TArray t n) = sizeOf ge t * (max 0 n)
sizeOf ge (_, cenv) (TStruct ident) = coSizeOf ge $ unsafeLookup cenv ident

-- Omitted: member_is_padding check, since we don't support bitfields
coAlignOf :: GEnv -> CompositeDefinition -> Int
coAlignOf ge (StructDef _ ms) =
  maximum $ map (\(MemberPlain _ ty) -> alignOf ge ty) ms

-- Omitted: align_as attribute handling
alignOf :: GEnv -> CType -> Int
alignOf _ TVoid = 1
alignOf _ (TInt I8 _) = 1
alignOf _ (TInt I16 _) = 2
alignOf _ (TInt I32 _) = 4
alignOf _ (TInt IBool _) = 1
alignOf _ (TLong _) = alignInt64
alignOf _ (TFloat F32) = 4
alignOf _ (TFloat F64) = AlignFloat64
alignOf _ (TPointer _) = if ptr64 then 8 else 4
alignOf _ (TFunction _ _) = 1
alignOf ge (TArray t n) = alignOf ge t
alignOf ge@(_, cenv) (TStruct ident) = coAlignOf ge $ unsafeLookup cenv ident

align :: Int -> Int -> Int
align n amount = ((n + amount - 1) `div` amount) * amount

bitSizeOf :: GEnv -> CType -> Int
bitSizeOf ge ty = sizeOf ge ty * 8

bitAlignOf :: GEnv -> CType -> Int
bitAlignOf ge ty = alignOf ge ty * 8

nextField :: GEnv -> Int -> Member -> Int
nextField ge pos (MemberPlain _ ty) = align pos (bitAlignOf ge ty) + bitSizeOf ge ty

layoutField :: GEnv -> Int -> Member -> Int
layoutField ge pos (MemberPlain _ ty) = align pos (bitAlignOf ge ty) `div` 8

fieldOffset :: GEnv -> Ident -> [Member] -> Int -> Int
fieldOffset _ _ [] _ = error $ "fieldOffset: no member named: " ++ i
fieldOffset ge i (m@(MemberPlain mi ty)::ms) pos =
  if   mi == i
  then layoutField ge pos m
  else fieldOffset ge i ms (nextField ge pos m)

blockOfBinding :: GEnv -> (Ident, (Block, CType)) -> (Block, Int, Int)
blockOfBinding ge (ident, (b, ty)) = (b, 0, sizeOf ge ty)

blocksOfEnv :: GEnv -> LEnv -> [(Block, Int, Int)]
blocksOfEnv ge le = map (blockOfBinding ge) $ M.toList le

---------------------------------
-- PROGRAM EVALUATION AND STEP --
---------------------------------

deref :: CType -> Mem -> Block -> Ptrofs -> Val
deref ty m loc ofs =
  case accessMode ty of
    ByValue chunk -> loadVal chunk m (VPtr loc ofs)
    _ -> (VPtr loc ofs)

evalUnaryOp :: UnaryOp -> Val -> CType -> Mem -> Val
evalUnaryOp op v ty m = 0 -- TODO: Cop.v/sem_unary_operation

evalBinaryOp :: GEnv -> BinaryOp -> Val -> CType -> Val -> CType -> Mem -> Val
evalBinaryOp ge op v1 ty1 v2 ty2 m = 0 -- TODO: Cop.v/sem_binary_operation

evalCast :: Val -> CType -> CType -> Mem -> Val
evalCast v ty1 ty2 m = 0 -- TODO: Cop.v/sem_cast

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
evalLValue ge le m (EVar ident _) =
  case M.lookup ident le of
    Just (loc, _) -> (loc, 0 :: Int32)
    _ -> (findSymbol ge ident, 0 :: Int32)
evalLValue ge le m (EDeref expr _) =
  case evalExpr ge le m expr of
    (VPtr loc ofs) -> (loc, ofs)
    _ -> error "evalLValue: dereferenced expression is not a pointer"
evalLValue ge@(_, cenv) le m (EField expr ident _) =
  (loc, ofs + ((fromIntegral delta) :: Int32))
  where
    (loc, ofs) = 
      case evalExpr ge le m expr of
        (VPtr l o) -> (l, o)
        _ -> error "evalLValue: dereferenced expression is not a pointer"
    struct_ident =
      case typeof expr of
        TStruct i -> i
        _ -> error "evalLValue: expression with field is not a struct"
    (StructDef _ members) = unsafeLookup struct_ident cenv
    delta = fieldOffset ge ident members 0
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

-- Using function_entry1 from CLight semantics: parameters as local variables
functionEntry :: GEnv -> Function -> [Val] -> Mem -> (LEnv, TEnv, Mem)
functionEntry ge f vargs m = (_, _, _) -- TODO: Clight.v/function_entry

assign :: GEnv -> CType -> Mem -> Block -> Ptrofs -> Val -> Mem
assign ge ty m loc ofs v =
  case accessMode ty of
    ByValue chunk -> storeVal chunk m (VPtr loc ofs) v
    ByCopy -> (_, _, _) -- TODO: what is this??? clight.v/assign_loc
    _ -> error "Cannot assign to a variable with a reference type"

-- Omitted: observable event trace
step :: GEnv -> State -> State
step ge (State f (SSkip) k le te m) =
  case k of
    KSeq st' k' -> State f st' k' le te m
    k' -> ReturnState VUndef k' (freeList m $ blocksOfEnv ge le)
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
      mkReturn v = ReturnState v (callCont k) (freeList m $ blocksOfEnv ge le)
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