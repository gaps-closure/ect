{-# LANGUAGE RecordWildCards #-}

{-
LD_LIBRARY_PATH=z3-4.8.8/lib stack build

stack run -- \
  examples/example1/llvm/example1-orange-9.ll \
  examples/example1/llvm/example1-purple-9.ll \
  examples/example1/llvm/example1-refactored-9.ll \
  examples/example1/clemaps/orange.json \
  examples/example1/clemaps/purple.json \
  examples/example1/clemaps/refactored.json

LD_LIBRARY_PATH=z3-4.8.8/lib stack ghci
:set -XTemplateHaskell
-}

module Main where

import System.Environment ( getArgs, getProgName )
import System.Console.GetOpt ( getOpt, usageInfo, OptDescr(..),
                              ArgDescr(NoArg, ReqArg), ArgOrder(RequireOrder) )
import System.IO
import System.Exit( exitSuccess, exitFailure )
import System.Directory

import Data.Maybe
import qualified Data.ByteString.UTF8 as BS
import qualified Data.ByteString.Lazy.UTF8 as BSL
import Data.ByteString.Short ( toShort, fromShort )
import Data.List ( intercalate, isPrefixOf, nub, findIndex )
import qualified Data.ByteString.Char8 as C
import qualified Data.Char as CH
import qualified Data.Map.Strict as M
import qualified Data.Set as S

import Data.Aeson ( decode )

import Control.Monad ( unless, when )
import Control.Monad.IO.Class ( liftIO )

import LLVM.Context ( withContext )

import qualified LLVM.Module as LM
import qualified LLVM.AST as A hiding ( metadata
                                      , callingConvention
                                      , alignment
                                      , returnAttributes
                                      , functionAttributes
                                      , type'
                                      , GetElementPtr
                                      , BitCast )
import qualified LLVM.AST.Global as A
import qualified LLVM.AST.Constant as A hiding ( type' )

import Z3.Monad

import ProofM
import InitialEnv
import CLEMap
--import qualified Partition as PART

import ProveEquiv

import Debug.Trace (trace)

----------------------------------------------------------------------
-- | Convert a string into a name used by the LLVM AST
llvmName :: String -> A.Name
llvmName = A.Name . toShort . BS.fromString

showIN :: A.Instruction -> String
showIN _ = "instruction"

showTERM :: A.Terminator -> String
showTERM = show

showBB :: A.BasicBlock -> String
showBB (A.BasicBlock name instructions terminator) =
  showName name ++ "\n    " ++
  intercalate "\n    "  (map (showNamed showIN) instructions) ++ "\n    " ++
  showNamed showTERM terminator

shortGlobal :: A.Global -> String
shortGlobal A.GlobalVariable {..} = "var " ++ show name
shortGlobal A.GlobalAlias {..} = "alias " ++ show name
shortGlobal A.Function {..} = showName name ++ "()"

dumpGlobal :: A.Global -> String
dumpGlobal A.GlobalVariable {..} = "Global Variable " ++ show name
dumpGlobal A.GlobalAlias {..} = "Global Alias " ++ show name
dumpGlobal A.Function {..} = unlines $ (showName name ++ "()") :
                                           map showBB basicBlocks

dumpDefinition :: A.Definition -> String
dumpDefinition (A.GlobalDefinition g) = dumpGlobal g
dumpDefinition A.TypeDefinition{} = "Type Definition"
dumpDefinition A.MetadataNodeDefinition{} = "Metadata Node Definition"
dumpDefinition A.NamedMetadataDefinition{} = "Named Metadata Node Definition"
dumpDefinition A.ModuleInlineAssembly{} = "Inline Assembly Definition"
dumpDefinition A.FunctionAttributes{} = "Function Attributes"
dumpDefinition A.COMDAT{} = "COMDAT"

dumpModule :: A.Module -> String
dumpModule A.Module {..} =
  show moduleName ++ "\n" ++
  show moduleSourceFileName ++ "\n" ++
  show moduleDataLayout ++ "\n" ++
  show moduleTargetTriple ++ "\n" ++
  concatMap (\x -> dumpDefinition x ++ "\n") moduleDefinitions

showBBIso :: NameMap -> String
showBBIso m = unwords $
  map (\(k,v) -> showName k ++ "-" ++ showName v) (M.assocs m)

----------------------------------------------------------------------
-- | Read a .ll file to produce an LLVM.AST.Module
readLL :: String -> IO A.Module
readLL filename = do
  comment $ "Reading '" ++ filename ++ "'..."
  str <- readFile filename
  withContext $ \ctx ->
    LM.withModuleFromLLVMAssembly ctx str $ \llvmMod ->
      LM.moduleAST llvmMod

readCLE :: String -> IO CLEMap
readCLE f = do
  h <- openFile f ReadMode
  contents <- hGetContents h
  let cle = (decode $ BSL.fromString contents) :: Maybe CLEMap
  case cle of
    Nothing   -> die ["Error: " ++ f ++ " is not a CLEmap json"]
    Just cle' -> return cle'

-- | Locate a function by name in the given module
findFunction :: A.Module -> A.Name -> Maybe A.Global
findFunction A.Module{..} funcName = case mapMaybe ffh moduleDefinitions of
  f:_ -> Just f
  []  -> Nothing
  where
    ffh (A.GlobalDefinition g@A.Function {name = n}) | n == funcName = Just g
    ffh _ = Nothing

findGlobals :: A.Module -> NameReferenceMap
findGlobals A.Module{..} = M.fromList $ concatMap nameGlobals moduleDefinitions
  where
    nameGlobals (A.GlobalDefinition g) = [(A.name g, GlobalDef g)]
    nameGlobals (A.TypeDefinition n t) = [(n, TypeDef t)]
    nameGlobals _ = []

combineGlobals :: A.Module -> A.Module -> A.Name -> NameReferenceMap
combineGlobals l r entry = M.unionWithKey dupHandler lGlobals rGlobals
  where
    lGlobals = M.delete entry $ findGlobals l
    rGlobals = M.delete entry $ findGlobals r
    dupHandler n g1 _ = trace (";;; WARNING: duplicate A.Global: " ++ show n) g1
    -- FIXME

-- FIXME: function calls can potentially come from other places besides
-- Call instructions, and we should replace RPC calls there too.
replRpc :: NameReferenceMap -> NameReferenceMap
replRpc = M.map replRpcFunc
  where
    replRpcFunc (GlobalDef f@A.Function{}) = GlobalDef $ f { A.basicBlocks = map
      (\(A.BasicBlock n i t) -> A.BasicBlock n (map replRpcNamed i) t)
      (A.basicBlocks f)
    }
    replRpcFunc g = g

    replRpcNamed (n A.:= a) = n A.:= replRpcInstr a
    replRpcNamed (A.Do a)   = A.Do (replRpcInstr a)

    replRpcInstr i@A.Call{} = i { A.function = replRpcRef $ A.function i }
    replRpcInstr i = i

    replRpcRef (Right (A.ConstantOperand (A.GlobalReference t n))) =
      Right (A.ConstantOperand (A.GlobalReference t' n'))
      where
        n' = case n of
               A.Name bytes
                 | isPrefixOf "_rpc_" s -> A.Name $ toShort $ C.pack $ drop 5 s
                 | otherwise -> n
                 where s = C.unpack $ fromShort bytes
               _ -> n
        t' = if n' == n then t
             else case t of
                    A.PointerType (A.FunctionType r a _) addr ->
                      A.PointerType (A.FunctionType r a False) addr
                    _ -> error "A.GlobalReference has unexpected type"
    replRpcRef r = r

rmDbgCalls :: A.Global -> A.Global
rmDbgCalls f@A.Function{} = f { A.basicBlocks = map 
  (\(A.BasicBlock n i t) -> A.BasicBlock n (filter (not . isDbgCall) i) t) 
  (A.basicBlocks f) }
  where
    dbg = [llvmName "llvm.var.annotation", llvmName "printf"]
    isDbgCall (_ A.:= a) = isDbgCall' a
    isDbgCall (A.Do a)   = isDbgCall' a
    isDbgCall' (A.Call _ _ _ ref _ _ _) = isDbgRef ref
    isDbgCall' _ = False
    isDbgRef (Right (A.ConstantOperand (A.GlobalReference _ n))) = n `elem` dbg
    isDbgRef _ = False
rmDbgCalls g = g

rmRpcInit :: A.Global -> Maybe A.Global
rmRpcInit f@A.Function{} = if new == f then Nothing else Just new
  where
    rpci = llvmName "_master_rpc_init"
    new = f { A.basicBlocks = map
      (\(A.BasicBlock n i t) -> A.BasicBlock n (rmRpcInit' i) t)
      (A.basicBlocks f)
    }
    rmRpcInit' = filter (not . isRpcInitCall)

    isRpcInitCall (_ A.:= a) = isRpcInitCall' a
    isRpcInitCall (A.Do a)   = isRpcInitCall' a

    isRpcInitCall' (A.Call _ _ _ ref _ _ _) = isRpcInitRef ref
    isRpcInitCall' _ = False

    isRpcInitRef (Right (A.ConstantOperand (A.GlobalReference _ n))) = n == rpci
    isRpcInitRef _ = False

rmRpcInit _ = error "rmRpcInit: Expecting A.Function"

getGlobalArr :: A.Name -> NameReferenceMap -> [A.Constant]
getGlobalArr n gs = case filter (\(n', _) -> n == n') (M.toList gs) of
  [(_, GlobalDef (A.GlobalVariable _ _ _ _ _ _ _ _ _ (Just (A.Array _ ms)) _ _ _ _))] -> ms
  _ -> []

globalArrToString :: A.Name -> NameReferenceMap -> String
globalArrToString n gs = init $ map toChar $ getGlobalArr n gs
  where
    toChar (A.Int 8 i) = CH.chr $ fromIntegral i
    toChar _ = error "globalArrToString: expected Int constant"

toName :: String -> A.Name
toName = A.Name . toShort . BS.fromString

findLocalIdWith :: ((A.Named A.Instruction) -> Bool)
                -> A.Global
                -> SourceLocation
findLocalIdWith f g@A.Function{..} = case found of
  ((bb, i):_) -> (Just (A.name g), Just bb, Just i)
  [] -> error $ "findLocalIdWith: No instruction satisfies predicate"
  where
    found = mapMaybe findInBb basicBlocks
    findInBb (A.BasicBlock n is _) = case findIndex f is of
      Just i -> Just (n, i)
      _ -> Nothing
findLocalIdWith _ _ = error "unreachable"

findLocalIdByName :: A.Name -> A.Global -> SourceLocation
findLocalIdByName n = findLocalIdWith sameName
  where
    sameName (n' A.:= _) = n' == n
    sameName _ = False

findCallInstrs :: A.Global -> [(A.Name, [A.Operand])]
findCallInstrs A.Function{..} = concatMap bbCallInstrs basicBlocks
  where
    bbCallInstrs (A.BasicBlock _ is _) = concatMap isInv is
    isInv (_ A.:= instr) = isInv' instr
    isInv (A.Do instr) = isInv' instr
    isInv' (A.Call _ _ _ (Right (A.ConstantOperand g)) a _ _) = isInv'' g a
    isInv' _ = []
    isInv'' (A.GlobalReference _ n) as = [(n, map fst as)]
    isInv'' _ _ = []
findCallInstrs _ = []

fxnLocalAnnos :: NameReferenceMap -> LLDef -> [(SourceLocation, String)]
fxnLocalAnnos gs (GlobalDef f@(A.Function{..})) = concatMap (uncurry p) fxnCalls
  where
    fxnCalls = findCallInstrs f
    p n [(A.LocalReference _ u), (A.ConstantOperand g), _, _] = p' n u g
    p _ _ = []
    p' lln u (A.GetElementPtr _ (A.GlobalReference _ n) _)
      | lln == toName s = [(findLocalIdByName u (rmDbgCalls f), globalArrToString n gs)]
      | otherwise = []
    p' _ _ _ = []
    s = "llvm.var.annotation"
fxnLocalAnnos _ _ = []

findLocalAnnotations :: NameReferenceMap -> LabelMap
findLocalAnnotations gs = M.fromList $ concatMap (fxnLocalAnnos gs) (M.elems gs)

findGlobalAnnotations :: NameReferenceMap -> LabelMap
findGlobalAnnotations gs = M.fromList $ map parseAnn $ getGlobalArr n gs
  where
    parseAnn (A.Struct _ _ [(A.BitCast a _), (A.GetElementPtr _ b _), _, _]) =
      parseAnn' a b
    parseAnn _ = die2

    parseAnn' (A.GlobalReference _ tgtName) (A.GlobalReference _ lblName) =
      ((Just tgtName, Nothing, Nothing), globalArrToString lblName gs)
    parseAnn' _ _ = die2

    die2 = error $ "unexpected structure in @" ++ s
    s = "llvm.global.annotations"
    n = toName s

moduleFname :: A.Module -> String
moduleFname = BS.toString . fromShort . A.moduleSourceFileName

toLLModule :: A.Module -> LLModule
toLLModule ll = LLModule n gs' annos (Nothing, Nothing, Nothing)
  where
    n     = moduleFname ll
    gs    = (replRpc . findGlobals) ll
    gs'   = M.map rmDbg gs
    annos = M.union (findLocalAnnotations gs) (findGlobalAnnotations gs)
    rmDbg (GlobalDef g) = GlobalDef $ rmDbgCalls g
    rmDbg td = td

toLLEnclave :: (String, [A.Module]) -> String -> LLEnclave
toLLEnclave (n, lls) st = LLEnclave n (M.fromList (zip (map mname mods) mods)) st
  where
    mods = map toLLModule lls

----------------------------------------------------------------------
die :: [String] -> IO a
die errs = do
  mapM_ (hPutStr stderr) errs
  putStrLn "\n"
  usageMessage
  exitFailure

unlessJustFail :: Maybe a -> String -> IO a
unlessJustFail p s = case p of Just x -> return x
                               Nothing -> die [s]

comment :: String -> IO ()
comment s = putStrLn $ ";;; " ++ s

----------------------------------------------------------------------
data Options = Options { entryFunction :: String
                       , displayFunctions :: Bool
                       , logFile :: Maybe String
                       }

defaultOptions :: Options
defaultOptions = Options { entryFunction = "main"
                         , displayFunctions = False
                         , logFile = Nothing
                         }

optionDescriptions :: [ OptDescr (Options -> IO Options) ]
optionDescriptions =
    [ Option "h" ["help"]
        (NoArg (\_ -> usageMessage >> exitSuccess ))
        "Print help"
    , Option "f" ["entry-function"]
        (ReqArg (\fn o -> return o { entryFunction = fn }) "<function-name>")
        "Specify the entry function (default: main)"
    , Option "d" ["display"]
        (NoArg (\o -> return o { displayFunctions = True }))
        "Dump information about the entry functions"
    , Option "l" ["logfile"]
        (ReqArg (\fn o -> return o { logFile = Just fn }) "<log-file.smt2>")
        "Write the proof log to the given file after solving"
    ]

usageMessage :: IO ()
usageMessage = do prg <- getProgName
                  let fs = "(orange.ll | purple.ll | ..)+ ref.ll"
                      fs' = fs ++ " (orange.json | purple.json | ..)+ ref.json"
                      header = "Usage: " ++ prg ++ " [options] " ++ fs'
                  hPutStr stderr (usageInfo header optionDescriptions)

main :: IO ()
main = do
  -- Parse and validate args
  comment "Parsing arguments..."
  args <- getArgs
  let (actions, filenames, errors) = getOpt RequireOrder optionDescriptions args
      n_enclaves = ((length filenames) `div` 2) - 1
  options <- foldl (>>=) (return defaultOptions) actions
  unless (null errors) $ die errors
  when (null filenames) $ die ["Error: no source files"]
  unless (even $ length filenames) $ die ["Error: expecting an even number of filenames"]
  let Options {..} = options

  -- Parse and validate CLE maps
  comment "Valdating CLE maps..."
  let cmap_files = drop (n_enclaves + 1) filenames
  cmaps <- mapM readCLE cmap_files
  let checkCmap (cmap, name) = case clemapValidate cmap of
        Right cs -> do
          comment $ name ++ " is a well-formed CLE map."
          return cs
        Left e  -> die ["Error: " ++ name ++ ": " ++ e ++ "."]
      checkAgreement parts rf = case clemapsAgree parts rf of
        Nothing -> do
          comment "Refactored CLE map is a subset of the union of partitioned CLE maps."
          comment "Tags in the partitioned CLE maps are consistent."
        Just e -> die ["Error: " ++ e ++ "."]
  cs <- mapM checkCmap $ zip cmaps cmap_files
  let colorSet = nub $ concat cs
      (partCles, refCle) = (init cmaps, last cmaps)
  checkAgreement partCles refCle

  -- Parse and valdiate LLVM files
  comment "Parsing LLVM files..."
  let dirnames = take (n_enclaves + 1) filenames
  fnames <- mapM getDirectoryContents dirnames
  let fnames' = map (\fs -> filter (\f -> f /= "." && f /= "..") fs) fnames
      pathnames = zipWith (\d fs -> map ((d ++ "/")++) fs) dirnames fnames'
  lls <- mapM (mapM readLL) pathnames
  let enlls = zip dirnames lls
      (partModules, refModules) = (init enlls, last enlls)
      entryName = llvmName entryFunction
      entryCandidates = [ (en, mn, g) | (en, mn, Just g) <- 
        concatMap
        (\(en', lls') -> map (\ll -> (en', moduleFname ll, findFunction ll entryName)) lls')
        partModules ]
      modulesWithRpcInit = [(en, mn, g) | (en, mn, Just g) <- 
        map 
        (\(en, mn, g) -> (en, mn, rmRpcInit g)) 
        entryCandidates ]

  let init_err = "Missing or duplicate fxn " 
              ++ entryFunction
              ++ " containing _master_rpc_init() in partition"
      ref_err  = "Error: no fxn " 
              ++ entryFunction 
              ++ " in refactored"
  unless (length modulesWithRpcInit == 1) $ die [init_err]
  let (pEnclave, pModule, pEntry) = head modulesWithRpcInit

  let mvMb (_, Nothing) = Nothing
      mvMb (a, Just b) = Just (a, b)
      refCandidates = mapMaybe mvMb $ map 
        (\ll -> (ll, findFunction ll entryName)) 
        (snd refModules)
  unless (length refCandidates == 1) $ die [ref_err]
  let (rModule, rEntry) = head refCandidates 
    
  when displayFunctions $ do putStrLn $ dumpGlobal pEntry
                             putStrLn $ dumpGlobal rEntry
                             exitSuccess

  -- Make sure the refactored file can be partitioned
  -- partition <- PART.runProvePartitionable refLl refCle colorSet
  -- case partition of
  --   Just partition' -> do
  --     comment "Refactored LLVM can be partitioned by:"
  --     let toStr (A.Name b, s) = (C.unpack $ fromShort b) ++ " -> " ++ s
  --         toStr (A.UnName _, _) = error "unreachable"
  --     mapM_ (comment . toStr) partition'
  --   _ -> die ["Error: refactored LLVM cannot be partitioned."]

  -- Construct intial proof state
  let environmentOptions = stdOpts +? opt "auto-config" False
      curMod = map (\(_, ms) -> if elem pModule (map moduleFname ms) then pModule else "") partModules
      enclaves = map (uncurry toLLEnclave) (zip partModules curMod)
      stateG = initialState
        { partition  = M.fromList $ zip (map ename enclaves) enclaves
        , refactored = toLLEnclave refModules (moduleFname rModule)
        , curEnclave = pEnclave
        , congruence = S.singleton $ S.fromList [A.name pEntry, A.name rEntry]
        }
        
  -- Begin proof
  (_, _, proofLog) <-
    runProofEnvironment environmentOptions stateG initialEnv $ do
      liftIO $ comment "Encoding constraints..."
      pushMatching
      r <- proveEquiv pEntry rEntry
      assert =<< mkNot (z3equiv r)
      logSMTLIB =<< solverToString
      liftIO $ comment "Solving..."
      z3Result <- check
      case z3Result of
        Unsat -> do logString "Unsatisfiable"
                    liftIO $ comment "Valid (unsat)"
        _     -> do logString $ show z3Result
                    liftIO $ comment $ "Invalid (" ++ show z3Result ++ ")"
      return r
  case logFile of
    Just name -> writeFile name $ unlines $ map show proofLog
    _ -> return ()
