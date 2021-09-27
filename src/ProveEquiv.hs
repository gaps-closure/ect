{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TemplateHaskell #-}

{-|

The ProveEquiv typeclass class, for proving the equivalence of pairs
of LLVM objects with the Z3 Theorem Prover

-}

module ProveEquiv where

import Data.ByteString.Short ( ShortByteString, fromShort, toShort )
import Data.Word ( Word16, Word32, Word64 )
import Data.List ( intercalate )
import qualified Data.ByteString.Char8 as C
import qualified Data.Foldable as F
import qualified Data.Map.Strict as M
import qualified Data.Set as S
import qualified GHC.Base as G

import Control.Monad ( unless, zipWithM )
import Control.Monad.IO.Class ( liftIO )
import Control.Monad.Trans.State.Strict ( get, gets, put, modify )
import Control.Monad.Trans.Class ( lift )

import qualified LLVM.AST as A hiding ( metadata
                                      , callingConvention
                                      , alignment
                                      , returnAttributes
                                      , functionAttributes
                                      , type' )
import qualified LLVM.AST.Global as A
import qualified LLVM.AST.Visibility as A
import qualified LLVM.AST.ThreadLocalStorage as A
import qualified LLVM.AST.Linkage as A
import qualified LLVM.AST.DLL as A
import qualified LLVM.AST.CallingConvention as A
import qualified LLVM.AST.ParameterAttribute as A
import qualified LLVM.AST.AddrSpace as A
import qualified LLVM.AST.InlineAssembly as A hiding ( type' )
import qualified LLVM.AST.Constant as A hiding ( type' )
import qualified LLVM.AST.IntegerPredicate as A
import qualified LLVM.AST.RMWOperation as A
import qualified LLVM.AST.Float as A
import qualified LLVM.AST.FunctionAttribute as FA
import qualified LLVM.AST.FloatingPointPredicate as FPA
import qualified LLVM.AST.Instruction as I hiding ( type' )

import Z3.Monad
import Z3TypeGenerator
import ProofM
import ProofEnv

-- | Typeclass for proving the equivalence of pairs of LLVM (Haskell)
-- objects.
class ProveEquiv a where
  -- | Prove the equivalence of two objects, first by checking in
  -- Haskell, then generating a proof in Z3
  proveEquiv :: a -> a -> ProofM Equiv

-- | Converts haskell equivalence into z3 equivalence for generic datatypes
proveEquivGeneral :: (ProofEnv -> Z3Constructor) -- ^ Constructor accessor
                  -> [Equiv]                     -- ^ Proven-equiv fields
                  -> String                      -- ^ Comment for inference
                  -> ProofM Equiv
proveEquivGeneral getCons fields comment = do
  let v1fields = map z3v1 fields
      v2fields = map z3v2 fields
      premiseIDs = map equivID fields

  (consf, cname, Z3Type{..}) <- fromEnv getCons

  -- Assemble the fields for the Equiv
  equivID <- getNextPID
  z3v1 <- mkPropConst equivID "x" sort
  z3v2 <- mkPropConst equivID "y" sort
  z3equiv <- mkApp equivFunc [z3v1, z3v2]

  assert =<< mkEq z3v1 =<< mkApp consf v1fields -- Build v1 from fields
  assert =<< mkEq z3v2 =<< mkApp consf v2fields -- Build v2 from fields

  let equiv = Equiv{..}
  logString $
    "Verifying " ++ cname ++ " " ++ unwords (map show premiseIDs)
  logInference premiseIDs (PropEquiv equiv) comment
  return equiv

-- | proveEquivGeneral with arguments in a different order
proveEquivAlgebraic :: (ProofEnv -> Z3Constructor) -- ^ Constructor accessor
                    -> String                      -- ^ Comment for inference
                    -> [Equiv]                     -- ^ Proven-equiv fields
                    -> ProofM Equiv
proveEquivAlgebraic ctor note equivs = proveEquivGeneral ctor equivs note

-- | Assert an equivalence rather than asking Z3 to establish it
assertEquiv :: (ProofEnv -> Z3Type) -> ProofM Equiv
assertEquiv getType = do
  Z3Type{..} <- fromEnv getType
  equivID <- getNextPID
  z3v1 <- mkPropConst equivID "x" sort
  z3v2 <- mkPropConst equivID "y" sort
  z3equiv <- mkApp equivFunc [z3v1, z3v2]
  assert z3equiv
  return Equiv{..}

-- | Runtime-friendly "ignore" for ProveEquiv instances. Don't use on A.Name
assertEquivDefault :: (ProveEquiv a) => a -> ProofM Equiv
assertEquivDefault x = proveEquiv x x

-- Tying nodes to ids to annotations to labels
type LabelPair = (Maybe ShortByteString, Maybe ShortByteString)

writeLocation :: (SourceLocation, SourceLocation) -> ProofM ()
writeLocation ls = do
  ((gP, bbP, _), (gR, bbR, _)) <- getMetaModuleField whereAmI
  let newloc = case ls of
        ((g1@(Just _), _, _), (g2@(Just _), _, _))   ->
          ((g1, Nothing, Nothing), (g2, Nothing, Nothing))
        ((_, bb1@(Just _), _), (_, bb2@(Just _), _)) ->
          ((gP, bb1, Nothing), (gR, bb2, Nothing))
        ((_, _, i1@(Just _)), (_, _, i2@(Just _)))   ->
          ((gP, bbP, i1), (gR, bbR, i2))
        _ -> error "writeLocation: Unreachable"
  putMetaModuleField (\mm a -> mm { whereAmI = a }) newloc

getGlobalLabels :: A.Global -> A.Global -> ProofM LabelPair
getGlobalLabels lG rG = do
  (pAnnos, rAnnos) <- getMetaModuleField annotations
  let pLabel = M.lookup (A.name lG) pAnnos
      rLabel = M.lookup (A.name rG) rAnnos
      toSbs  = toShort . C.pack
  liftIO $ putStrLn $
    ";;; ProveEquiv CLE LABEL (" ++ show pLabel ++ ") (" ++ show rLabel ++ ")"
  -- TODO: replace TAG_* labels with Nothing, since they aren't reflected in
  -- the refactored code
  return (fmap toSbs pLabel, fmap toSbs rLabel)

-----------------------------------------------
-- ProveEquiv instance for global definitions

instance ProveEquiv A.Global where
  proveEquiv v1@A.GlobalVariable{} v2@A.GlobalVariable{} = do
    liftIO $ putStrLn $
      ";;; ProveEquiv " ++ showName (A.name v1) ++ " " ++ showName (A.name v2)
    writeLocation ((Just v1, Nothing, Nothing), (Just v2, Nothing, Nothing))
    fields <- sequence [ assertEquiv t_Name
                       , proveField A.linkage
                       , proveField A.visibility
                       , proveField A.dllStorageClass
                       , proveField A.threadLocalMode
                       , proveField A.unnamedAddr
                       , proveField A.isConstant
                       , proveField A.type'
                       , proveField A.addrSpace
                       , proveField A.initializer
                       , proveField A.section
                       , proveField A.comdat
                       , proveField A.alignment
                       , assertEquivDefault True
                       ]
    _ <- (uncurry proveEquiv) =<< getGlobalLabels v1 v2
    proveEquivGeneral c_G_GlobalVariable fields $
      "global variables " ++ showName (A.name v1) ++ " and " ++
      showName (A.name v2) ++ " equivalent"
    where proveField record = proveEquiv (record v1) (record v2)

  proveEquiv a1@A.GlobalAlias{} a2@A.GlobalAlias{} = do
    liftIO $ putStrLn $
      ";;; ProveEquiv " ++ showName (A.name a1) ++ " " ++ showName (A.name a2)
    writeLocation ((Just a1, Nothing, Nothing), (Just a2, Nothing, Nothing))
    fields <- sequence [ assertEquiv t_Name
                       , proveField A.linkage
                       , proveField A.visibility
                       , proveField A.dllStorageClass
                       , proveField A.threadLocalMode
                       , proveField A.unnamedAddr
                       , proveField A.type'
                       , proveField A.addrSpace
                       , proveField A.aliasee
                       ]
    _ <- (uncurry proveEquiv) =<< getGlobalLabels a1 a2
    proveEquivGeneral c_G_GlobalAlias fields $
      "global aliases " ++ showName (A.name a1) ++ " and " ++
      showName (A.name a2) ++ " equivalent"
    where proveField record = proveEquiv (record a1) (record a2)

  proveEquiv f1@A.Function{} f2@A.Function{} = do
    liftIO $ putStrLn $
      ";;; ProveEquiv " ++ showName (A.name f1) ++ " " ++ showName (A.name f2)
    writeLocation ((Just f1, Nothing, Nothing), (Just f2, Nothing, Nothing))
    fields <- sequence [ proveField A.linkage
                       , proveField A.visibility
                       , proveField A.dllStorageClass
                       , proveField A.callingConvention
                       , proveField A.returnAttributes
                       , proveField A.returnType
                       , assertEquiv t_Name
                       , proveField A.parameters
                       , proveField A.functionAttributes
                       , proveField A.section
                       , proveField A.comdat
                       , proveField A.alignment
                       , proveField A.garbageCollectorName
                       , proveField A.prefix
                       , proveEquivCFG (A.basicBlocks f1) (A.basicBlocks f2)
                       , proveField A.personalityFunction
                       , assertEquivDefault True
                       ]
    _ <- (uncurry proveEquiv) =<< getGlobalLabels f1 f2
    proveEquivGeneral c_G_Function fields $
      "functions " ++ showName (A.name f1) ++ " and " ++
      showName (A.name f2) ++ " equivalent"
    where proveField record = proveEquiv (record f1) (record f2)

  proveEquiv _ _ = proofFail "Global"

----------------------------------------------------------
-- Alpha renaming and definition-hunting proof machinery

instance ProveEquiv A.Name where
  proveEquiv n1@(A.Name _) n2@(A.Name _) = do
    proveCongruence n1 n2
    e <- assertEquivDefault $ toShort (C.pack "a")
    proveEquivGeneral c_N_Name [e] "Name equivalent"
  proveEquiv n1@(A.UnName _) n2@(A.UnName _) = do
    assertMatch c_N_UnName n1 n2
    e <- assertEquivDefault (1 :: Word)
    proveEquivGeneral c_N_UnName [e] "UnName equivalent"
  proveEquiv _ _ = proofFail "Name != UnName"

-- | Return the object that may be named
unName :: A.Named a -> a
unName (A.Do x) = x
unName (_ A.:= x) = x

-- | Retrieve the current match state
getMatching :: ProofM MatchState
getMatching = do
  stack <- ProofM $ lift $ gets matching
  case stack of
    (top:_) -> return top
    _ -> error "Attempt to read empty matching stack"

-- | Update the current match state
putMatching :: MatchState -> ProofM ()
putMatching ms =
  ProofM $ lift $ modify $ \s -> s { matching = ms:(tail $ matching s) }

-- | Push a fresh state onto the matching stack, on entry to a new global
pushMatching :: ProofM ()
pushMatching = do
  ProofState{..} <- ProofM $ lift get
  (new_fwd, new_inv) <- freshMatchFunctions
  let match_state = ((M.empty, new_fwd), (M.empty, new_inv), S.empty)
  ProofM $ lift $ put $ ProofState { matching = match_state:matching, .. }
  where
    freshMatchFunctions = do
      (_, _, Z3Type{..}) <- fromEnv c_N_Name
      fwd_sym <- mkStringSymbol "fwd-match"
      inv_sym <- mkStringSymbol "inv-match"
      fwd <- mkFuncDecl fwd_sym [sort] sort
      inv <- mkFuncDecl inv_sym [sort] sort
      return (fwd, inv)

-- | Pop the current state from the matching stack, on exit from a global
popMatching :: ProofM ()
popMatching = ProofM $ lift $ modify $ \s -> s { matching = tail (matching s) }

-- | Add a match to the @matching@ and @inverse@ maps; fail if it contradicts
-- an existing one
addMatch :: A.Name -> A.Name -> ProofM ()
addMatch n1 n2 = do
  ((fwd_map, ffn), (inv_map, ifn), v) <- getMatching
  case M.lookup n1 fwd_map of
    Just n2' | n2' /= n2 -> proofFail $
      "tried to match %" ++ showName n1 ++ " = %" ++ showName n2 ++
      " but already have %" ++ showName n1 ++ " = %" ++ showName n2'
    _ -> return ()
  case M.lookup n2 inv_map of
    Just n1' | n1' /= n1 -> proofFail $
      "tried to match %" ++ showName n1 ++ " = %" ++ showName n2 ++
      " but already have %" ++ showName n1' ++ " = %" ++ showName n2
    _ -> return ()
  putMatching ((M.insert n1 n2 fwd_map, ffn), (M.insert n2 n1 inv_map, ifn), v)

-- | Add a match to the local matching state and assert it in the z3 solver
assertMatch :: (ProofEnv -> Z3Constructor) -> A.Name -> A.Name -> ProofM ()
assertMatch nameCons n1 n2 = do
  addMatch n1 n2
  (mkName, _, Z3Type{..}) <- fromEnv nameCons
  ((_, fwd), (_, inv), _) <- getMatching
  z3n1 <- mkApp mkName =<< field n1
  z3n2 <- mkApp mkName =<< field n2
  fn1 <- mkApp fwd [z3n1]
  fn2 <- mkApp inv [z3n2]
  assert =<< mkEq fn1 z3n2
  assert =<< mkEq fn2 z3n1
  where
    field n = case n of
      (A.Name s)   -> sequence [mkString $ C.unpack $ fromShort s]
      (A.UnName w) -> sequence [mkBitvector 32 $ toInteger w]

-- | Update the disjoint set of equivalent globals with a new pair globals
addCongruence :: A.Name -> A.Name -> ProofM Bool
addCongruence lName rName = do
  lSet <- findMemberSet lName
  rSet <- findMemberSet rName
  case (lSet, rSet) of
    (Just l, Nothing) -> update $ S.insert (S.insert rName l) . S.delete l
    (Nothing, Just r) -> update $ S.insert (S.insert lName r) . S.delete r
    (Nothing, Nothing) -> update $ S.insert (S.fromList [lName, rName])
    (Just l, Just r)
      | l /= r -> update $ S.insert (S.union l r) . S.delete l . S.delete r
      | otherwise -> return True
  where
    findMemberSet n = F.find (S.member n) <$> (ProofM $ lift $ gets congruence)
    update op = do
      ProofM $ lift $ modify $ \s -> s { congruence = op $ congruence s }
      return False

-- | Add a new equivalence to the congruence and recurse into both globals to
-- prove their equivalence.
proveCongruence :: A.Name -> A.Name -> ProofM ()
proveCongruence lName rName = do
  exists <- addCongruence lName rName
  if exists then return ()
  else do
    ProofState{..} <- ProofM $ lift get
    case M.lookup rName (globals refactored) of
      Just rGlobal -> case M.lookup lName (globals $ toEnclave partition) of
        Just lGlobal -> recurse lGlobal rGlobal
        Nothing -> do
          let next = if toEnclave partition == fst partition then snd else fst
          case M.lookup lName (globals $ next partition) of
            Just lGlobal -> do
              ProofM $ lift $ put $ ProofState { toEnclave = next, .. }
              liftIO $ putStrLn ";;; SWITCH ENCLAVE"
              recurse lGlobal rGlobal
              liftIO $ putStrLn ";;; SWITCH ENCLAVE"
              ProofM $ lift $ put $ ProofState { toEnclave = toEnclave, .. }
            Nothing -> err
      Nothing -> err
  where
    err = error "global definition not found in NameReferenceMap"
    recurse lg rg = do
      pushMatching
      locs <- getMetaModuleField whereAmI
      liftIO $ putStrLn ";;; Push"
      _ <- proveEquiv lg rg
      liftIO $ putStrLn ";;; Pop (globals proven equiv)"
      putMetaModuleField (\mm a -> mm { whereAmI = a }) locs
      popMatching

------------------------------------
-- CFG isomorphism proof machinery

-- | Convert a list of basic blocks to a map keyed to their names
makeBBMap :: [A.BasicBlock] -> M.Map A.Name A.BasicBlock
makeBBMap bbs = M.fromList $ map tokv bbs
  where tokv bb@(A.BasicBlock n _ _) = (n, bb)

-- | Return the list of named successor blocks for a block
bbSuccessors :: A.BasicBlock -> [A.Name]
bbSuccessors (A.BasicBlock _ _ term) = case unName term of
  A.Ret {..}        -> []
  A.CondBr {..}     -> [ trueDest, falseDest ]
  A.Br {..}         -> [ dest ]
  A.Switch {..}     -> defaultDest : map snd dests -- FIXME: assumes eq consts
  A.IndirectBr {..} -> possibleDests
  t                 -> error $ "unsupported terminator " ++ show t

-- | Check whether the given name is in the @visiting@ set
testVisiting :: A.Name -> ProofM Bool
testVisiting n = do
  (_, _, visiting) <- getMatching
  return $ S.member n visiting

-- | Add a given name to the @visiting@ set
setVisiting :: A.Name -> ProofM ()
setVisiting n = do
  (fwd, inv, visiting) <- getMatching
  putMatching (fwd, inv, S.insert n visiting)

-- | Prove two lists of basic blocks represent equivalent CFGs
proveEquivCFG :: [A.BasicBlock] -> [A.BasicBlock] -> ProofM Equiv
proveEquivCFG cfg1@(A.BasicBlock n1 _ _:_) cfg2@(A.BasicBlock n2 _ _:_) = do

  -- Try to establish an isomorphism among the basic blocks
  matchedPairs <- visit n1 n2

  -- Dump the matching information (both forward and back) into Z3-land
  -- and add assertions that say the back(forward n) = n for all n
  -- (enumerate them explicitly)
  logString $ "basic block matching " ++
    intercalate ", "
      (map (\(a,b) -> showName a ++ "-" ++ showName b) matchedPairs)

  -- A list of matched pairs of basic blocks
  let getBlock (l, r) = (,) <$> bblookup bbm1 l <*> bblookup bbm2 r
  bbs <- mapM getBlock matchedPairs

  pairedEquivs <- mapM proveEquivBB bbs
  blocksEquiv <- mkAnd (map z3equiv pairedEquivs)

  Z3Type{..} <- fromEnv t_List_BasicBlock

  equivID <- getNextPID
  z3v1 <- mkPropConst equivID "x" sort
  z3v2 <- mkPropConst equivID "y" sort
  bbEquiv <- mkApp equivFunc [z3v1, z3v2]

  z3equiv <- mkEq bbEquiv blocksEquiv

  assert z3equiv

  return Equiv{..}
  where
    bbm1 = makeBBMap cfg1
    bbm2 = makeBBMap cfg2
    bblookup m n = case M.lookup n m of
      Just b -> return b
      Nothing -> error $ "lookup of bb " ++ showName n ++ " failed"

    proveEquivBB (bb1, bb2) = do
      writeLocation ((Nothing, Just bb1, Nothing), (Nothing, Just bb2, Nothing))
      proveEquiv bb1 bb2

    visit nbb1 nbb2 = do
      addMatch nbb1 nbb2
      visited <- testVisiting nbb1
      if visited
        then return []
        else do
          setVisiting nbb1
          bb1 <- bblookup bbm1 nbb1
          bb2 <- bblookup bbm2 nbb2
          let successors1 = bbSuccessors bb1
              successors2 = bbSuccessors bb2
          unless (length successors1 == length successors2) $
             proofFail $ "basic blocks " ++ show nbb1 ++ " and " ++
                 show nbb2 ++ " have a different number of successors"
          matches <- zipWithM visit successors1 successors2
          return $ (nbb1, nbb2):concat matches

proveEquivCFG [] [] = do
  blocksEquiv <- mkAnd []
  Z3Type{..} <- fromEnv t_List_BasicBlock
  equivID <- getNextPID
  z3v1 <- mkPropConst equivID "x" sort
  z3v2 <- mkPropConst equivID "y" sort
  bbEquiv <- mkApp equivFunc [z3v1, z3v2]
  z3equiv <- mkEq bbEquiv blocksEquiv
  assert z3equiv
  return Equiv{..}

proveEquivCFG _ _ = proofFail "[BasicBlock] not equivalent (different lengths)"

---------------------------------------------
-- ProveEquiv instances for primitive types

instance ProveEquiv Bool where
  proveEquiv = proveEquivPrimitive
    t_Bool mkBool "Bool"

instance ProveEquiv Integer where
  proveEquiv = proveEquivPrimitive
    t_Integer mkInteger "Integer"

instance ProveEquiv Word where
  proveEquiv = proveEquivPrimitive
    t_Word (mkBitvector 32 . toInteger) "Word"

instance ProveEquiv Word16 where
  proveEquiv = proveEquivPrimitive
    t_Word16 (mkBitvector 16 . toInteger) "Word16"

instance ProveEquiv Word32 where
  proveEquiv = proveEquivPrimitive
    t_Word32 (mkBitvector 32 . toInteger) "Word32"

instance ProveEquiv Word64 where
  proveEquiv = proveEquivPrimitive
    t_Word64 (mkBitvector 64 . toInteger) "Word64"

instance ProveEquiv C.ByteString where
  proveEquiv = proveEquivPrimitive
    t_ByteString (mkString . C.unpack) "ByteString"

instance ProveEquiv ShortByteString where
  proveEquiv = proveEquivPrimitive
    t_ShortByteString (mkString . C.unpack . fromShort) "ShortByteStr"

instance ProveEquiv Float where
  proveEquiv = proveEquivPrimitive
    t_Float mkRealNum "Float"

instance ProveEquiv Double where
  proveEquiv = proveEquivPrimitive
    t_Double mkRealNum "Double"

proveEquivPrimitive :: (ProveEquiv a, Eq a, Show a)
                    => (ProofEnv -> Z3Type) -- ^ Z3 sort accessor from env
                    -> (a -> ProofM AST)    -- ^ Build primitive value in Z3
                    -> String               -- ^ LLVM name of the datatype
                    -> a                    -- ^ Primitive object 1
                    -> a                    -- ^ Primitive object 2
                    -> ProofM Equiv
proveEquivPrimitive getEnvType toSort name x y = do
  unless (x == y) $ proofFail $
    "Primitives " ++ show x ++ " and " ++ show y ++ " not equivalent"

  Z3Type{..} <- fromEnv getEnvType

  equivID <- getNextPID
  z3v1 <- mkPropConst equivID "x" sort
  z3v2 <- mkPropConst equivID "y" sort

  assert =<< mkEq z3v1 =<< toSort x
  assert =<< mkEq z3v2 =<< toSort y

  z3equiv <- mkApp equivFunc [z3v1, z3v2]

  logString $ show x ++ " == " ++ show y ++ " : " ++ name

  return Equiv{..}

---------------------------------------------
-- (Maybe) Monomorphic ProveEquiv instances

instance ProveEquiv (Maybe Word32) where
  proveEquiv = proveEquivMaybe
    c_MW_Just_Word32
    c_MW_Nothing_Word32
    "Word32"

instance ProveEquiv (Maybe ShortByteString) where
  proveEquiv = proveEquivMaybe
    c_MSBS_Just_ShortByteString
    c_MSBS_Nothing_ShortByteString
    "ShortByteString"

instance ProveEquiv (Maybe A.Operand) where
  proveEquiv = proveEquivMaybe
    c_MO_Just_Operand
    c_MO_Nothing_Operand
    "Operand"

instance ProveEquiv (Maybe A.Atomicity) where
  proveEquiv = proveEquivMaybe
    c_MA_Just_Atomicity
    c_MA_Nothing_Atomicity
    "Atomicity"

instance ProveEquiv (Maybe A.Name) where
  proveEquiv = proveEquivMaybe
    c_MN_Just_Name
    c_MN_Nothing_Name
    "Name"

instance ProveEquiv (Maybe A.StorageClass) where
  proveEquiv = proveEquivMaybe
    c_MSC_Just_StorageClass
    c_MSC_Nothing_StorageClass
    "StorageClass"

instance ProveEquiv (Maybe A.TailCallKind) where
  proveEquiv = proveEquivMaybe
    c_MTCK_Just_TailCallKind
    c_MTCK_Nothing_TailCallKind
    "TailCallKind"

instance ProveEquiv (Maybe A.Constant) where
  proveEquiv = proveEquivMaybe
    c_MC_Just_Constant
    c_MC_Nothing_Constant
    "Constant"

instance ProveEquiv (Maybe A.Model) where
  proveEquiv = proveEquivMaybe
    c_MM_Just_Model
    c_MM_Nothing_Model
    "Model"

instance ProveEquiv (Maybe A.UnnamedAddr) where
  proveEquiv = proveEquivMaybe
    c_MUA_Just_UnnamedAddr
    c_MUA_Nothing_UnnamedAddr
    "UnnamedAddr"


proveEquivMaybe :: (ProveEquiv a)
                => (ProofEnv -> Z3Constructor) -- ^ Just constructor
                -> (ProofEnv -> Z3Constructor) -- ^ Nothing constructor
                -> String                      -- ^ Log message
                -> Maybe a
                -> Maybe a
                -> ProofM Equiv
proveEquivMaybe c_Just _ n (Just a) (Just b) = do
  e <- proveEquiv a b
  proveEquivGeneral c_Just [e] $ "Just " ++ n ++ " equivalent"
proveEquivMaybe _ c_Nothing n Nothing Nothing =
  proveEquivGeneral c_Nothing [] $ "Nothing (" ++ n ++ ") equivalent"
proveEquivMaybe _ _ n _ _ = proofFail $ "Maybe " ++ n ++ " not equivalent"

---------------------------------------------
-- (Named) Monomorphic ProveEquiv instances

instance ProveEquiv (A.Named I.Instruction) where
  proveEquiv i1 i2 = do
    writeLocation ( (Nothing, Nothing, Just $ Left i1)
                  , (Nothing, Nothing, Just $ Left i2) )
    proveEquivNamed c_NI_infix_Instruction c_NI_Do_Instruction
      "Instruction" i1 i2

instance ProveEquiv (A.Named A.Terminator) where
  proveEquiv t1 t2 = do
    writeLocation ( (Nothing, Nothing, Just $ Right t1)
                  , (Nothing, Nothing, Just $ Right t2) )
    proveEquivNamed c_NT_infix_Terminator c_NT_Do_Terminator
      "Terminator" t1 t2

proveEquivNamed :: (ProveEquiv a)
                => (ProofEnv -> Z3Constructor)
                -> (ProofEnv -> Z3Constructor)
                -> String
                -> A.Named a
                -> A.Named a
                -> ProofM Equiv
proveEquivNamed _ c_Do n (A.Do a) (A.Do b) = do
  e <- proveEquiv a b
  proveEquivGeneral c_Do [e] $ "Nameless " ++ n ++ " equivalent"
proveEquivNamed c_Named _ n (n1 A.:= a) (n2 A.:= b) = do
  e1 <- proveEquiv n1 n2
  e2 <- proveEquiv a b
  proveEquivGeneral c_Named [e1, e2] $ "Named (" ++ n ++ ") equivalent"
proveEquivNamed _ _ n _ _ = proofFail $ "Named " ++ n ++ " not equivalent"

---------------------------------------------
-- (Tuple) Monomorphic ProveEquiv instances

instance ProveEquiv ([A.Parameter], Bool) where
  proveEquiv = proveEquivTuple2
    c_Tup2_List_Parameter_Bool
    "([Parameter], Bool)"

instance ProveEquiv (A.Constant, A.Name) where
  proveEquiv = proveEquivTuple2
    c_Tup2_Constant_Name
    "(Constant, Name)"

instance ProveEquiv (A.Operand, [A.ParameterAttribute]) where
  proveEquiv = proveEquivTuple2
    c_Tup2_Operand_List_ParameterAttribute
    "(Operand, [ParameterAttribute])"

instance ProveEquiv (A.Operand, A.Name) where
  proveEquiv = proveEquivTuple2
    c_Tup2_Operand_Name
    "(Operand, Name)"

instance ProveEquiv (A.SynchronizationScope, A.MemoryOrdering) where
  proveEquiv = proveEquivTuple2
    c_Tup2_SynchronizationScope_MemoryOrdering
    "(SynchronizationScope, MemoryOrdering)"

proveEquivTuple2 :: (ProveEquiv a, ProveEquiv b)
                 => (ProofEnv -> Z3Constructor)
                 -> String
                 -> (a, b)
                 -> (a, b)
                 -> ProofM Equiv
proveEquivTuple2 c_Tup n (a1, a2) (b1, b2) = do
  fst_eq <- proveEquiv a1 b1
  snd_eq <- proveEquiv a2 b2
  proveEquivGeneral c_Tup [fst_eq, snd_eq] $ "Tuple " ++ n ++ " equivalent"

----------------------------------------------
-- (Either) Monomorphic ProveEquiv instances

instance ProveEquiv (Either FA.GroupID FA.FunctionAttribute) where
  proveEquiv = proveEquivEither
    c_EGIDFA_Left_GroupID_FunctionAttribute
    c_EGIDFA_Right_GroupID_FunctionAttribute
    "GroupID FunctionAttribute"

instance ProveEquiv (Either A.InlineAssembly A.Operand) where
  proveEquiv = proveEquivEither
    c_EIAO_Left_InlineAssembly_Operand
    c_EIAO_Right_InlineAssembly_Operand
    "InlineAssembly Operand"

proveEquivEither :: (ProveEquiv a, ProveEquiv b)
                 => (ProofEnv -> Z3Constructor)
                 -> (ProofEnv -> Z3Constructor)
                 -> String
                 -> Either a b
                 -> Either a b
                -> ProofM Equiv
proveEquivEither c_Left _ n (Left a) (Left b) = do
  e <- proveEquiv a b
  proveEquivGeneral c_Left [e] $ "Left (" ++ n ++ ") equivalent"
proveEquivEither _ c_Right n (Right a) (Right b) = do
  e <- proveEquiv a b
  proveEquivGeneral c_Right [e] $ "Right (" ++ n ++ ") equivalent"
proveEquivEither _ _ n _ _ = proofFail $ "Either " ++ n ++ " not equivalent"

--------------------------------------------
-- (List) Monomorphic ProveEquiv instances

instance ProveEquiv [Word32] where
  proveEquiv = proveEquivList
    c_Cons_Word32
    c_Nil_Word32
    "Word32"

instance ProveEquiv [A.ParameterAttribute] where
  proveEquiv = proveEquivList
    c_Cons_ParameterAttribute
    c_Nil_ParameterAttribute
    "ParameterAttribute"

instance ProveEquiv [A.Named I.Instruction] where
  proveEquiv = proveEquivList
    c_Cons_Named_Instruction
    c_Nil_Named_Instruction
    "Named Instruction"

instance ProveEquiv [(A.Constant, A.Name)] where
  proveEquiv = proveEquivList
    c_Cons_Tup2_Constant_Name
    c_Nil_Tup2_Constant_Name
    "(Constant, Name)"

instance ProveEquiv [(A.Operand, [A.ParameterAttribute])] where
  proveEquiv = proveEquivList
    c_Cons_Tup2_Operand_List_ParameterAttribute
    c_Nil_Tup2_Operand_List_ParameterAttribute
    "(Operand, [ParameterAttribute])"

instance ProveEquiv [(A.Operand, A.Name)] where
  proveEquiv = proveEquivList
    c_Cons_Tup2_Operand_Name
    c_Nil_Tup2_Operand_Name
    "(Operand, Name)"

instance ProveEquiv [A.Name] where
  proveEquiv = proveEquivList
    c_Cons_Name
    c_Nil_Name
    "Name"

instance ProveEquiv [A.Operand] where
  proveEquiv = proveEquivList
    c_Cons_Operand
    c_Nil_Operand
    "Operand"

instance ProveEquiv [A.LandingPadClause] where
  proveEquiv = proveEquivList
    c_Cons_LandingPadClause
    c_Nil_LandingPadClause
    "LandingPadClause"

instance ProveEquiv [Either FA.GroupID FA.FunctionAttribute] where
  proveEquiv = proveEquivList
    c_Cons_Either_GroupID_FunctionAttribute
    c_Nil_Either_GroupID_FunctionAttribute
    "FunctionAttribute"

instance ProveEquiv [A.Parameter] where
  proveEquiv = proveEquivList
    c_Cons_Parameter
    c_Nil_Parameter
    "Parameter"

instance ProveEquiv [A.Type] where
  proveEquiv = proveEquivList
    c_Cons_Type
    c_Nil_Type
    "Type"

instance ProveEquiv [A.Constant] where
  proveEquiv = proveEquivList
    c_Cons_Constant
    c_Nil_Constant
    "Constant"

{-| Prove two generic lists are equivalent
Arguments match up with @proveEquiv@ to allow the following usage:
@
proveEquiv = proveEquivList
    c_Cons_Tup2_ShortByteString_MDRef_MDNode
    c_Nil_Tup2_ShortByteString_MDRef_MDNode
    "List (ShortByteString, MDRef MDNode)"
@
-}
proveEquivList :: (ProveEquiv a)
               => (ProofEnv -> Z3Constructor) -- ^ List Cons constructor
               -> (ProofEnv -> Z3Constructor) -- ^ List Nil constructor
               -> String                      -- ^ Log string
               -> [a]
               -> [a]
               -> ProofM Equiv
proveEquivList c_Cons c_Nil n (a:as) (b:bs) = do
  tail_equiv <- proveEquivList c_Cons c_Nil n as bs
  head_equiv <- proveEquiv a b
  proveEquivGeneral c_Cons [head_equiv, tail_equiv] $
    "Cons " ++ n ++ " equivalent"

proveEquivList _ c_Nil n [] [] =
  proveEquivGeneral c_Nil [] $ "[] (" ++ n ++ ") equivalent"

proveEquivList _ _ n _ _ = proofFail $ "[" ++ n ++ "] not equivalent"

------------------
-- Uncategorized

instance ProveEquiv I.InstructionMetadata where
  proveEquiv _ _ = assertEquivDefault True

instance ProveEquiv A.Metadata where
  proveEquiv _ _ = assertEquivDefault True

instance ProveEquiv (G.NonEmpty A.Name) where
  proveEquiv _ _ = proofFail "Nonempty Name"

----------------------------------------------------------------------
-- ProveEquiv instances generated by template haskell for LLVM types

$(genProveEquiv [t| A.IntegerPredicate |] )
$(genProveEquiv [t| A.AddrSpace |] )
$(genProveEquiv [t| A.SynchronizationScope |] )
$(genProveEquiv [t| A.FloatingPointType |] )
$(genProveEquiv [t| A.Linkage |] )
$(genProveEquiv [t| A.InlineAssembly |] )
$(genProveEquiv [t| A.Operand |] )
$(genProveEquiv [t| A.Visibility |] )
$(genProveEquiv [t| A.StorageClass |] )
$(genProveEquiv [t| A.CallingConvention |] )
$(genProveEquiv [t| A.ParameterAttribute |] )
$(genProveEquiv [t| A.SomeFloat |] )
$(genProveEquiv [t| A.Constant |] )
$(genProveEquiv [t| A.Terminator |] )
$(genProveEquiv [t| A.Dialect |] )
$(genProveEquiv [t| A.TailCallKind |] )
$(genProveEquiv [t| A.LandingPadClause |] )
$(genProveEquiv [t| A.FastMathFlags |] )
$(genProveEquiv [t| A.RMWOperation |] )
$(genProveEquiv [t| A.Type |] )
$(genProveEquiv [t| A.Parameter |] )
$(genProveEquiv [t| A.MemoryOrdering |] )
$(genProveEquiv [t| A.BasicBlock |] )
$(genProveEquiv [t| A.Model |] )
$(genProveEquiv [t| A.UnnamedAddr |] )
$(genProveEquiv [t| FPA.FloatingPointPredicate |] )
$(genProveEquiv [t| FA.GroupID |] )
$(genProveEquiv [t| FA.FunctionAttribute |] )
$(genProveEquiv [t| I.Instruction |] )
