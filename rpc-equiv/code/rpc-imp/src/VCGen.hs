module VCGen (genVerificationCondition) where

import RpcImp
import Data.Map as M hiding (map)

-- Once the current todos are done, there are more items to handle:
-- treating everything as bytestrings which either do or dont have a value (BVVal),
-- including structs
-- Introducing memory as a logical array of bitvectors
-- supporting declarations as reservations of memory
-- supporting arrays and structs as objects in memory
-- stack frames
-- Finally, add pointers to RPCImp and the transpiler, and support pointers here. 
-- Separation logic?

-- This is our language for describing program expressions as bitvectors
data BVExpr =
    BVName Name
  | BVVal Int
  | BVAdd BVExpr BVExpr
  | BVSub BVExpr BVExpr
  | BVAnd BVExpr BVExpr
  | BVOr BVExpr BVExpr
  | BVNot BVExpr
  | BVEq BVExpr BVExpr
  | BVLT BVExpr BVExpr
  | BVGT BVExpr BVExpr
  deriving (Eq, Show)

-- This is our logic language:
-- assertions, pre-conditions, post-conditions, assumptions
-- are in this language
data BExpr =
    BAsBool BVExpr
  | BImplies BExpr BExpr
  | BAnd BExpr BExpr
  | BOr BExpr BExpr
  | BNot BExpr
  | BForall [Name] BExpr
  | BExists [Name] BExpr
  | BEq BVExpr BVExpr
  | BLT BVExpr BVExpr
  | BGT BVExpr BVExpr
  deriving (Eq, Show)

-- Loop and function free representation of a program 
-- for computing weakest pre-condition
data GuardedCommand =
    Assume BExpr
  | Assert BExpr
  | Havoc Name
  | Seq GuardedCommand GuardedCommand
  | Box GuardedCommand GuardedCommand
  deriving (Eq, Show)

type Namespace = M.Map Name (Bool, Bool)

addToNamespace :: Namespace -> Name -> Namespace
addToNamespace ns n = M.insert n (False, False) ns

mkFresh :: Namespace -> (Namespace, Name)
mkFresh ns =
  (addToNamespace ns n, n)
  where
    tmps = map (\i -> "x" ++ show i) [0..]
    n =
      case find (\tmp -> not $ M.member tmp ns) tmps of
        Just n' -> n'
        _ -> error "unreachable"

true, false :: BExpr
(true, false) = (BAsBool $ BVVal 1, BAsBool $ BVVal 0)

valToBV :: Val -> Int
valToBV (RBool b) = if b then 1 else 0
valToBV (RInt i) = i
valToBV (RFloat _) = error "float to bytes conversion not supported"
valToBV (RStruct _ _) = error "struct to bytes conversion not supported"
valToBV (RArray _ _ _) = error "array to bytes conversion not supported"

resolveNameExpr :: NameExpr -> Name
resolveNameExpr (RName n) = n
resolveNameExpr (RStructMember ne n) = resolveNameExpr ne ++ "." ++ n
resolveNameExpr _ = error "resolveNameExpr: arrays not supported"

toBVExpr :: Expr -> BVExpr
toBVExpr (RVal v) = BVVal $ valToBV v
toBVExpr (RVar ne) = BVName $ resolveNameExpr ne
toBVExpr (RAdd e1 e2) = BVAdd (toBVExpr e1) (toBVExpr e2)
toBVExpr (RSub e1 e2) = BVSub (toBVExpr e1) (toBVExpr e2)
toBVExpr (RAnd e1 e2) = BVAnd (toBVExpr e1) (toBVExpr e2)
toBVExpr (ROr e1 e2) = BVOr (toBVExpr e1) (toBVExpr e2)
toBVExpr (RNot e) = BVNot (toBVExpr e)
toBVExpr (REq e1 e2) = BVEq (toBVExpr e1) (toBVExpr e2)
toBVExpr (RLT e1 e2) = BVLT (toBVExpr e1) (toBVExpr e2)
toBVExpr (RGT e1 e2) = BVGT (toBVExpr e1) (toBVExpr e2)
toBVExpr (RInvoke _ _) = error "function invocation after inlining"

replaceIn :: Name -> Name -> BVExpr -> BVExpr
replaceIn n' n (BVName nm) = BVName $ if nm == n then n' else nm
replaceIn n' n (BVVal i) = BVVal i
replaceIn n' n (BVAdd e1 e2) = BVAdd (replaceIn n' n e1) (replaceIn n' n e2)
replaceIn n' n (BVSub e1 e2) = BVSub (replaceIn n' n e1) (replaceIn n' n e2)
replaceIn n' n (BVAnd e1 e2) = BVAnd (replaceIn n' n e1) (replaceIn n' n e2)
replaceIn n' n (BVOr e1 e2) = BVOr (replaceIn n' n e1) (replaceIn n' n e2)
replaceIn n' n (BVNot e) = BVNot (replaceIn n' n e)
replaceIn n' n (BVEq e1 e2) = BVEq (replaceIn n' n e1) (replaceIn n' n e2)
replaceIn n' n (BVLT e1 e2) = BVLT (replaceIn n' n e1) (replaceIn n' n e2)
replaceIn n' n (BVGT e1 e2) = BVGT (replaceIn n' n e1) (replaceIn n' n e2)

replaceInB :: Name -> Name -> BExpr -> BExpr
replaceInB n' n (BAsBool bve) = BAsBool (replaceIn n' n bve)
replaceInB n' n (BImplies b1 b2) = BImplies (replaceInB n' n b1) (replaceInB n' n b2)
replaceInB n' n (BAnd b1 b2) = BAnd (replaceInB n' n b1) (replaceInB n' n b2)
replaceInB n' n (BOr b1 b2) = BOr (replaceInB n' n b1) (replaceInB n' n b2)
replaceInB n' n (BNot b) = BNot (replaceInB n' n b)
replaceInB n' n (BForall vs b) = BForall vs (replaceInB n' n b)
replaceInB n' n (BExists vs b) = BExists vs (replaceInB n' n b)
replaceInB n' n (BEq bve1 bve2) = BEq (replaceIn n' n bve1) (replaceIn n' n bve2)
replaceInB n' n (BLT bve1 bve2) = BLT (replaceIn n' n bve1) (replaceIn n' n bve2)
replaceInB n' n (BGT bve1 bve2) = BGT (replaceIn n' n bve1) (replaceIn n' n bve2)

toSeq :: [GuardedCommand] -> GuardedCommand
toSeq [] = error "empty toSeq"
toSeq [gc] = gc
toSeq (gc:gcs) Seq gc $ toSeq gcs

cmdToGC :: Namespace -> Cmd -> (Namespace, GuardedCommand)
cmdToGC ns RSkip = (ns, Assume true)
cmdToGC ns (RSeq c1 c2) =
  let
    (ns',  gc1) = cmdToGC ns c1
    (ns'', gc2) = cmdToGC ns' c2
  in
    (ns'', Seq gc1 gc2)
-- TODO: not much of a good way to handle the namespace for Box. In reality,
-- the name space needs to be encoded as part of GCs. See below
cmdToGC ns (RIte e c1 c2) =
  Box
    (Seq (Assume        $ BAsBool $ toBVExpr e) $ cmdToGC ns c1) 
    (Seq (Assume $ BNot $ BAsBool $ toBVExpr e) $ cmdToGC ns c2)
cmdToGC ns (RAssign ne e) =
  let
    (ns', tmp) = mkFresh
    n = resolveNameExpr ne
  in
    (ns', toSeq
      [ Assume $ BEq tmp (BVName n)
      , Havoc n
      , Assume $ BEq (BVName n) (replaceIn tmp n $ toBVExpr e)
      ])
-- TODO: come up with a way to implement declarations in GC, not namespace. Otherwise
-- Box doesnt work. Then namespace is just a set (not a map).
-- If declarations can be selectively revoked and re-established, we can handle
-- functions as well, without having to inline/rename everything.
-- TODO: store declaration in namespace. For structs, need to store multiple things
-- Checks of the namespace on assigns and accesses need to happen in RAssign above
-- and in toBVExpr (RVar) respectively.
-- On declaration, store visible
-- On assignment, assert that the name is visible and store that it is valid.
-- On access, assert that name is visible and valid.
cmdToGC ns (RDeclare _ _) = (ns, Assume true)
cmdToGC _ (RReturn _) = error $ "return statement after inlining"

mkWP :: Namespace -> GuardedCommand -> BExpr -> (Namespace, BExpr)
mkWP ns (Assume b) b' = (ns, BImplies b b')
mkWP ns (Assert b) b' = (ns, BAnd b b')
mkWP ns (Seq gc1 gc2) b' = 
  mkWP ns' gc1 wp2
  where
    (ns', wp2) = mkWP ns gc2 b'
mkWP ns (Box gc1 gc2) b' =
  (ns'', BAnd wp1 wp2)
  where
    (ns',  wp1) = mkWP ns gc1 b'
    (ns'', wp2) = mkWP ns' gc2 b'
mkWP ns (Havoc x) b' =
  (ns', replaceInB x' x b')
  where 
    (ns', x') = mkFresh

asBool :: String -> String
asBool s = "(ite (= 0 " ++ s ++ ") false true)"

asBV :: String -> String
asBV s = "(ite " ++ s ++ " 1 0)" 

bveToSMT :: BVExpr -> String
bveToSMT (BVName n) = n
bveToSMT (BVVal i) = show i
bveToSMT (BVAdd bve1 bve2) = "(+ " ++ bveToSMT bve1 ++ " " ++ bveToSMT bve2 ++ ")"
bveToSMT (BVSub bve1 bve2) = "(- " ++ bveToSMT bve1 ++ " " ++ bveToSMT bve2 ++ ")"
bveToSMT (BVAnd bve1 bve2) = asBV $ bToSMT $ BAnd (asBool $ bveToSMT bve1) (asBool $ bveToSMT bve2)
bveToSMT (BVOr bve1 bve2) = asBV $ bToSMT $ BOr (asBool $ bveToSMT bve1) (asBool $ bveToSMT bve2)
bveToSMT (BVNot bve) = asBV $ bToSMT $ BNot $ asBool $ bveToSMT bve
bveToSMT (BVEq bve1 bve2) = asBV $ bToSMT (BEq bve1 bve2)
bveToSMT (BVLT bve1 bve2) = asBV $ bToSMT (BLT bve1 bve2)
bveToSMT (BVGT bve1 bve2) = asBV $ bToSMT (BGT bve1 bve2)

bToSMT :: BExpr -> String
bToSMT (BAsBool bve) = asBool $ bveToSMT bve
bToSMT (BImplies b1 b2) = "(=> " ++ bToSMT b1 ++ " " ++ bToSMT b2 ++ ")"
bToSMT (BAnd b1 b2) = "(and " ++ bToSMT b1 ++ " " ++ bToSMT b2 ++ ")"
bToSMT (BOr b1 b2) = "(or " ++ bToSMT b1 ++ " " ++ bToSMT b2 ++ ")"
bToSMT (BNot b) = "(not " ++ bToSMT b ++ ")"
bToSMT (BForall vs b) = error "quantifiers not yet supported"
bToSMT (BExists vs b) = error "quantifiers not yet supported"
bToSMT (BEq bve1 bve2) = "(= " ++ bveToSMT bve1 ++ " " ++ bveToSMT bve2 ++ ")"
bToSMT (BLT bve1 bve2) = "(< " ++ bveToSMT bve1 ++ " " ++ bveToSMT bve2 ++ ")"
bToSMT (BGT bve1 bve2) = "(> " ++ bveToSMT bve1 ++ " " ++ bveToSMT bve2 ++ ")"

toSMT :: Namespace -> BExpr -> String
toSMT ns wp = 
  decls ++ "\n(assert (not (" ++ bToSMT wp ++ ")))\n(check-sat)"
  where
    ls = M.mapWithKey (\k _ -> "(declare-const " ++ k ++ " Int)") ns
    decls = intercalate "\n" ls

-- TODO
-- Pre-processing pass 0:
--   Insert the global variable declarations/definitions into the beginning of
--   the main function, in order.
-- Pre-processing pass 1:
--   Start at main and keep track of all declared global/local variables.
--   Go through the control flow of the program. When entering a function
--   invocation, treat the arguments as newly declared variables. If at any
--   point a variable is newly declared and it has the same name as a
--   variable which was already declared, re-name it by replacing it and all
--   occurences of it IN THE CURRENT SCOPE/FUNCTION to a new name.
-- Pre-processing pass 2:
--   Inline all functions. There will not be any variable name conflicts due
--   to pass 1 above, so for each function invocation, we insert code just before
--   the invocation to:
--     1. declare new variables with the names of the function args
--     2. copy the values of the invoked arguments into the new variables
--     3. run the body of the invoked function (minus the ending return statement)
--   Finally, we replace the function invocation with the expression in the return
--   statement.
--   This works except in the presence of early/branching returns. We can ensure
--   the generated code does not have any early/branching returns.
-- Pre-processing pass 3: 
--   the pre- and post- conditions need to be aware of
--   renaming in case they refer to renamed variables
genVerificationCondition :: Program -> String
genVerificationCondition (Program defs entry) =
  let
    isEntry (RFuncDef n _ _) = n == entry
    isEntry _ = False
    (ns, prog_gc) = 
      case find isEntry defs of
        Just (RFuncDef _ _ body) -> cmdToGC M.empty body
        _ -> error "VCGen: no entry point"
    pre = false -- TODO
    post = false -- TODO
    full_gc = toSeq [Assume pre, prog_gc, Assert post]
  in
    toSMT ns $ mkWP ns full_gc true