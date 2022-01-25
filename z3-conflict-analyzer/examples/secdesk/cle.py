from z3 import *

Label, LabelCons = EnumSort('Label', ('nullCleLabel', 'ORANGE', 'EMBEDDING_SHAREABLE', 'PROCESS_SECINPUT', 'PURPLE', 'XDLINKAGE_RECOGNIZE', 'TAG_RESPONSE_RECOGNIZE', 'TAG_REQUEST_RECOGNIZE', 'XDLINKAGE_START_RECOGNIZER', 'TAG_RESPONSE_START_RECOGNIZER', 'XDLINKAGE_STOP_RECOGNIZER', 'TAG_RESPONSE_STOP_RECOGNIZER', 'GET_FEATURES', 'orangeDFLT', 'purpleDFLT'))
(nullCleLabel, ORANGE, EMBEDDING_SHAREABLE, PROCESS_SECINPUT, PURPLE, XDLINKAGE_RECOGNIZE, TAG_RESPONSE_RECOGNIZE, TAG_REQUEST_RECOGNIZE, XDLINKAGE_START_RECOGNIZER, TAG_RESPONSE_START_RECOGNIZER, XDLINKAGE_STOP_RECOGNIZER, TAG_RESPONSE_STOP_RECOGNIZER, GET_FEATURES, orangeDFLT, purpleDFLT) = LabelCons
Level, LevelCons = EnumSort('Level', ('nullLevel', 'orange', 'purple'))
(nullLevel, orange, purple) = LevelCons
Cdf, CdfCons = EnumSort('Cdf', ('nullCdf', 'EMBEDDING_SHAREABLE_cdf_0', 'PROCESS_SECINPUT_cdf_0', 'XDLINKAGE_RECOGNIZE_cdf_0', 'XDLINKAGE_RECOGNIZE_cdf_1', 'XDLINKAGE_START_RECOGNIZER_cdf_0', 'XDLINKAGE_START_RECOGNIZER_cdf_1', 'XDLINKAGE_STOP_RECOGNIZER_cdf_0', 'XDLINKAGE_STOP_RECOGNIZER_cdf_1', 'GET_FEATURES_cdf_0'))
(nullCdf, EMBEDDING_SHAREABLE_cdf_0, PROCESS_SECINPUT_cdf_0, XDLINKAGE_RECOGNIZE_cdf_0, XDLINKAGE_RECOGNIZE_cdf_1, XDLINKAGE_START_RECOGNIZER_cdf_0, XDLINKAGE_START_RECOGNIZER_cdf_1, XDLINKAGE_STOP_RECOGNIZER_cdf_0, XDLINKAGE_STOP_RECOGNIZER_cdf_1, GET_FEATURES_cdf_0) = CdfCons
Enclave, EnclaveCons = EnumSort('Enclave', ('nullEnclave', 'orange_E', 'purple_E'))
(nullEnclave, orange_E, purple_E) = EnclaveCons
GuardOperation, GuardOperationCons = EnumSort('GuardOperation', ('nullGuardOperation', 'allow', 'deny', 'redact'))
(nullGuardOperation, allow, deny, redact) = GuardOperationCons
hasEnclaveLevel = [ nullLevel, orange, purple ]
hasLabelLevel = [nullLevel, orange, orange, orange, purple, purple, nullLevel, nullLevel, purple, nullLevel, purple, nullLevel, orange, orange, purple ]; 
isFunctionAnnotation = [False, False, False, True, False, True, False, False, True, False, True, False, True, False, False ]; 
hasGuardOperation = [nullGuardOperation, allow, allow, allow, allow, allow, allow, allow, allow, allow ]; 
taints = [ (99436, ORANGE), (99437, ORANGE), (99480, EMBEDDING_SHAREABLE)
         , (99483, ORANGE), (100980, PROCESS_SECINPUT), (100991, XDLINKAGE_START_RECOGNIZER)
         , (100992, XDLINKAGE_STOP_RECOGNIZER), (100993, GET_FEATURES), (100994, XDLINKAGE_RECOGNIZE) ]
fromCleLabel = [nullCleLabel, EMBEDDING_SHAREABLE , PROCESS_SECINPUT , XDLINKAGE_RECOGNIZE , XDLINKAGE_RECOGNIZE , XDLINKAGE_START_RECOGNIZER , XDLINKAGE_START_RECOGNIZER , XDLINKAGE_STOP_RECOGNIZER , XDLINKAGE_STOP_RECOGNIZER , GET_FEATURES ]
cdfForRemoteLevel = [
      nullCdf, nullCdf, nullCdf 
    , nullCdf, nullCdf, nullCdf 
    , nullCdf, nullCdf, EMBEDDING_SHAREABLE_cdf_0 
    , nullCdf, PROCESS_SECINPUT_cdf_0, nullCdf 
    , nullCdf, nullCdf, nullCdf 
    , nullCdf, XDLINKAGE_RECOGNIZE_cdf_0, XDLINKAGE_RECOGNIZE_cdf_1 
    , nullCdf, nullCdf, nullCdf 
    , nullCdf, nullCdf, nullCdf 
    , nullCdf, XDLINKAGE_START_RECOGNIZER_cdf_0, XDLINKAGE_START_RECOGNIZER_cdf_1 
    , nullCdf, nullCdf, nullCdf 
    , nullCdf, XDLINKAGE_STOP_RECOGNIZER_cdf_0, XDLINKAGE_STOP_RECOGNIZER_cdf_1 
    , nullCdf, nullCdf, nullCdf 
    , nullCdf, GET_FEATURES_cdf_0, nullCdf 
    , nullCdf, nullCdf, nullCdf 
    , nullCdf, nullCdf, nullCdf 
]

hasRettaints = [
  False, False, False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, True , False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, False, False, True , False, False, False, False, False, False, False, False 
, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, False, False, False, False, False, True , False, False, False, False, False 
, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, False, False, False, False, False, False, False, True , False, False, False 
, False, True , True , False, False, False, False, False, False, False, False, False, False, False, False 
 ] 

hasCodtaints = [
  False, False, False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, True , True , False, False, False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, True , False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, True , False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, True , False, False, False, False, False, False, False, False, False, False 
, False, True , True , False, False, False, False, False, False, False, False, False, False, False, False 
 ] 

hasARCtaints = [
  False, False, False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False 
, False, True , True , True , False, False, False, False, False, False, False, False, False, False, False 
, False, False, False, False, False, True , False, False, False, False, False, False, False, False, False 
, False, False, False, False, True , True , True , True , False, False, False, False, False, False, False 
, False, False, False, False, False, False, False, False, True , False, False, False, False, False, False 
, False, False, False, False, True , False, False, False, True , True , False, False, False, False, False 
, False, False, False, False, False, False, False, False, False, False, True , False, False, False, False 
, False, False, False, False, True , False, False, False, False, False, True , True , False, False, False 
, False, True , True , False, False, False, False, False, False, False, False, False, True , False, False 
 ]

hasArgtaints = [
  False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		
, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		
, False, True , False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, True , False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		
, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		
, False, False, False, False, False, False, False, True , False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		
, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		
, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		
, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		
, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		
, False, True , False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, True  		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		, False, False, False, False, False, False, False, False, False 		
 ]