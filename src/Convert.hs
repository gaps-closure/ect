{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NamedFieldPuns #-}
module Convert where

import Data.Map (Map)
import qualified Data.Set as S 
import qualified Data.Map as M
import CLEMap hiding (CLEMap) 
import TypeCheck hiding (level)
import LLMap
import Data.Maybe (fromMaybe, mapMaybe)
import qualified LLVM.AST as LL
import LLVM.AST.Global (parameters)


type CLEMap = Map String CLEJSON


toVarType :: CLEJSON -> CLEType
toVarType CLEJSON {level, cdf} = VarType level remoteLevels
    where
        cdf' = fromMaybe [] cdf
        remoteLevels = S.fromList $ remotelevel <$> cdf'

toFunType :: CLEMap -> Int -> CLEJSON -> CLEType
toFunType clemap nargs json@CLEJSON {level, cdf} = 
    maybe defaultTy mkTy $ foldl1 pairwiseUnion <$> (mapM fromCDF =<< cdf)
    where
        remoteLevels = remoteLevelsOf json
        -- used when cle json provided is a var annotation
        defaultTy = 
            FunctionType 
                level 
                []
                (S.singleton level) 
                (replicate nargs remoteLevels) 
                remoteLevels
        mkTy (args, ret) = FunctionType level [] remoteLevels args ret  
        pairwiseUnion (args, ret) (args',  ret') =
            (zipWith S.union args args', S.union ret ret')
        fromCDF CDF {argtaints, codtaints, rettaints} = do
            args <- mapM (fmap S.unions . mapM lookupRemoteLevel) =<< argtaints
            ret <- mapM lookupRemoteLevel =<< rettaints
            pure (args, S.unions ret)
        lookupRemoteLevel label = remoteLevelsOf <$> M.lookup label clemap
        remoteLevelsOf CLEJSON {cdf = x} = S.fromList $ remotelevel <$> fromMaybe [] x


class Convertible f where  
    convert :: CLEMap -> f (LLWrapper & IndexedAssignment) -> Maybe (f (LLWrapper & Annotated))

instance Convertible Instruction where 
    convert clemap (Instruction (ll :& AssignedInstruction (Just (Assignment _ lbl)))) =
        consInstr ll <$> M.lookup lbl clemap
        where consInstr a = Instruction . (:&) a . AnnotatedInstr . toVarType 
    convert _ _ = Nothing 

instance Convertible Terminator where 
    convert clemap (Terminator (ll :& (AssignedTerminator (Assignment _ lbl)))) = do 
        consTerm ll <$> M.lookup lbl clemap
        where consTerm a = Terminator . (:&) a . AnnotatedTerm . toVarType

instance Convertible BasicBlock where  
    convert clemap (BasicBlock n instrs term (ll :& _)) = do
        let instrs' = mapMaybe (convert clemap) instrs
        term' <- convert clemap term
        Just $ BasicBlock n instrs' term' (ll :& UnAnnotatedBasicBlock)
    
instance Convertible Global where 
    convert clemap (Global (ll :& AssignedGlobal (Assignment _ lbl))) =
        consGlobal <$> M.lookup lbl clemap
        where
            consGlobal = Global . (:&) ll . AnnotatedGlobal . toVarType
    convert clemap (Function bbs (ll :& AssignedGlobal (Assignment _ lbl))) = do
        bbs' <- mapM (convert clemap) bbs
        consFun bbs' <$> M.lookup lbl clemap
        where
            consFun bbs' = Function bbs' . (:&) ll . AnnotatedGlobal . toFunType clemap numargs
            numargs = case ll of
                WrapGlobal LL.Function {parameters} -> length $ fst parameters
                _ -> 0 