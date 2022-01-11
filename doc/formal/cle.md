# CLE formalization

A CLE map is a JSON file which is associated with a particular C program,
either an original program with inter-function communication or one side of a
partitioned program, which runs on an enclave and communicates with the rest
of the program via RPC.

The CLE map contains a list of labels, where labels are connected to the C
program via program annotations. Each label in the CLE map has data in the JSON
describing what enclave the associated code must run on, and what cross-domain
flows are allowed/denied for that label.

## Format

The specification for a CLE map is given in the form of Haskell datatypes below:

```
type CLEMap = [CLE]

data CLE = CLE {
  label :: String
, json :: CLEJSON
} deriving (Generic, Eq, Ord, Show)

data CLEJSON = CLEJSON {
  cdf :: Maybe [CDF]
, level :: String
} deriving (Generic, Eq, Ord, Show)

data CDF = CDF {
  remotelevel :: String
, direction :: String
, guarddirective :: GD
, argtaints :: Maybe [[String]]
, codtaints :: Maybe [String]
, rettaints :: Maybe [String]
} deriving (Generic, Eq, Ord, Show)

data GD = GD {
  operation :: String
, gapstag :: Maybe [Int]
, oneway :: Maybe Bool
} deriving (Generic, Eq, Ord, Show)
```

Certain fields are subject to additional correctness constraints. Each CLE in
a CLEMap must have a unique label. The level and remotelevel of any CLE or
cross-domain flow (CDF) must refer to a valid enclave, typically by color (e.g.
"orange", "green", "purple"). The direction of a CDF must be "ingress" or
"egress" or "bidirectional", and the operation in a guard directive (GD) must
be one of "allow", "deny", or "redact". The argtaints, codtaints, and rettaints
must refer to existing CLE labels, though the label may be defined in a
different JSON file.

## Semantic meaning

Every CLE associates a labeled annotation in the C file with some JSON data,
contained in the CLEJSON.

Every CLEJSON has a level, which describes what enclave the labeled code must
run on, and optionally zero or more cross-domain flows for that label, or CDFs.

...etc (TODO)
