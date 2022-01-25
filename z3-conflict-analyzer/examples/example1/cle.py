from z3 import *

Label, LabelCons = EnumSort('Label', ('nullCleLabel', 'PURPLE', 'ORANGE', 'XDLINKAGE_GET_A', 'TAG_RESPONSE_GET_A', 'orangeDFLT', 'purpleDFLT'))
(nullCleLabel, PURPLE, ORANGE, XDLINKAGE_GET_A, TAG_RESPONSE_GET_A, orangeDFLT, purpleDFLT) = LabelCons
Level, LevelCons = EnumSort('Level', ('nullLevel', 'orange', 'purple'))
(nullLevel, orange, purple) = LevelCons
Cdf, CdfCons = EnumSort('Cdf', ('nullCdf', 'ORANGE_cdf_0', 'XDLINKAGE_GET_A_cdf_0', 'XDLINKAGE_GET_A_cdf_1'))
(nullCdf, ORANGE_cdf_0, XDLINKAGE_GET_A_cdf_0, XDLINKAGE_GET_A_cdf_1) = CdfCons
Enclave, EnclaveCons = EnumSort('Enclave', ('nullEnclave', 'orange_E', 'purple_E'))
(nullEnclave, orange_E, purple_E) = EnclaveCons
GuardOperation, GuardOperationCons = EnumSort('GuardOperation', ('nullGuardOperation', 'allow', 'deny', 'redact'))
(nullGuardOperation, allow, deny, redact) = GuardOperationCons
hasLabelLevel = [ nullLevel, purple, orange, orange, nullLevel, orange, purple ]
isFunctionAnnotation = [ False, False, False, True, False, False, False ]
hasGuardOperation = [ nullGuardOperation, allow, allow, allow ]
hasEnclaveLevel = [ nullLevel, orange, purple ]
cdfForRemoteLevel = [ nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, ORANGE_cdf_0, nullCdf, XDLINKAGE_GET_A_cdf_1, XDLINKAGE_GET_A_cdf_0, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf ]
hasRettaints = [ False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, False, False, False, False, False, False, True, False, False ]
hasCodtaints = [ False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, False, False, False, False, False, False, True, False, False, False, False ]
hasARCtaints = [ False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, True, True, True, False, False, False, False, True, True, True, False, False ]
hasArgtaints = [ False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, 
                 False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False ]
taints = [ (52, PURPLE), (71, ORANGE), (72, PURPLE), (74, XDLINKAGE_GET_A) ]