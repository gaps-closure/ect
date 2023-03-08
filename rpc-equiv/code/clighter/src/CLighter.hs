module CLighter where

import Data.Int

-- CLight syntax and semantics:
-- https://github.com/AbsInt/CompCert/blob/master/cfrontend/Clight.v
-- https://xavierleroy.org/publi/Clight.pdf

-- For help turning this into VCGen, see here:
-- https://people.csail.mit.edu/stellal/papers/masters-thesis.pdf

-- Some hacker news comments section saying Coq can compile to Haskell? Could I get CLight parsing into Haskell?
-- In general, need some way off parsing
-- https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiyg5Gh9Mr9AhWhkYkEHSQvDOoQFnoECCUQAQ&url=https%3A%2F%2Fnews.ycombinator.com%2Fitem%3Fid%3D14819093&usg=AOvVaw2kyO4enjc5NVBpQJVfOL3t

-- Will just have to prove exhaustively that CLight semantics are translated into VCGen
-- But if can solve both the above problems, we're good! Then just have to generate
-- CLight code or RPC-CLight ASTs via a generator and prove the properties we want!

type Ident = String

data Signedness = Signed | Unsigned
data IntSize    = I8  | I16 | I32 | IBool
data FloatSize  = F32 | F64

-- Omitted: Type attributes
data CType =
    TVoid
  | TInt IntSize Signedness
  | TLong Signedness
  | TFloat FloatSize
  | TPointer CType
  | TArray CType Int
  | TFunction [CType] CType
  | TStruct Ident

data UnaryOp = ONotBool | ONotInt | ONeg | OAbsFloat

data BinaryOp =
    OAdd | OSub | OMul | ODiv | OMod 
  | OAnd | OOr  | OXor 
  | OShl | OShr 
  | OEq  | ONe  
  | OLt  | OGt | OLe | OGe

data Expr =
    EConstInt Int32 CType
  | EConstFloat Double CType
  | EConstSingle Float CType
  | EConstLong Int64 CType
  | EVar Ident CType
  | ETempVar Ident CType
  | EDeref Expr CType
  | EAddrOf Expr CType
  | EUnOp UnaryOp Expr CType
  | EBinOp BinaryOp Expr Expr CType
  | ECast Expr CType
  | EField Expr Ident CType
  | ESizeOf CType CType
  | EAlignOf CType CType

-- Omitted: builtin, loops, break, continue, switch, labels, goto
data Statement =
    SSkip
  | SAssign Expr Expr
  | SSet Ident Expr
  | SCall (Maybe Ident) Expr [Expr]
  | SSequence Statement Statement
  | SIfThenElse Expr Statement Statement
  | SReturn (Maybe Expr)

-- Omitted: calling convention, internal vs external linkage
type Function = 
  ( CType            -- Return type
  , [(Ident, CType)] -- Parameters
  , [(Ident, CType)] -- Local variables
  , [(Ident, CType)] -- Local tempvars
  , Statement        -- Body
  )

data InitData = -- Initialization data for global variable
    InitInt8 Int32
  | InitInt16 Int32
  | InitInt32 Int32
  | InitInt64 Int64
  | InitFloat32 Float
  | InitFloat64 Double
  | InitSpace Int
  | InitAddrOf Ident Int32 -- pointer offset

-- Omitted: booleans for read-only, volatile
type GlobVar = (CType, [InitData])

data GlobalDefinition =
    GVar GlobVar
  | GFun Function

-- Omitted: struct bitfields
data Member = MemberPlain Ident CType

-- Omitted: unions (all composites are structs)
data CompositeDefinition = StructDef Ident [Member]

type Program = ([(Ident, GlobalDefinition)], [CompositeDefinition], Ident)

typeof :: Expr -> CType
typeof (EConstInt    _ t) = t
typeof (EConstFloat  _ t) = t
typeof (EConstSingle _ t) = t
typeof (EConstLong   _ t) = t
typeof (EVar         _ t) = t
typeof (ETempVar     _ t) = t
typeof (EDeref       _ t) = t
typeof (EAddrOf      _ t) = t
typeof (EUnOp      _ _ t) = t
typeof (EBinOp   _ _ _ t) = t
typeof (ECast        _ t) = t
typeof (EField     _ _ t) = t
typeof (ESizeOf      _ t) = t
typeof (EAlignOf     _ t) = t

-- data Val =
--     RBool Bool
--   | RInt Int
--   | RFloat Float
--   | RStruct Name [(Name, Maybe Val)]
--   | RArray Sort Int [Maybe Val]
--   deriving (Eq, Show)
-- data NameExpr = -- lvalue
--     RName Name
--   | RStructMember NameExpr Name
--   | RArrayElement NameExpr Expr
--   deriving (Show)