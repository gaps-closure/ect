cleLabel = {nullCleLabel, ORANGE , EMBEDDING_SHAREABLE , PROCESS_SECINPUT , PURPLE , XDLINKAGE_RECOGNIZE , TAG_RESPONSE_RECOGNIZE , TAG_REQUEST_RECOGNIZE , XDLINKAGE_START_RECOGNIZER , TAG_RESPONSE_START_RECOGNIZER , XDLINKAGE_STOP_RECOGNIZER , TAG_RESPONSE_STOP_RECOGNIZER , GET_FEATURES , orangeDFLT , purpleDFLT }; 
hasLabelLevel = [nullLevel, orange , orange , orange , purple , purple , nullLevel , nullLevel , purple , nullLevel , purple , nullLevel , orange , orange , purple ]; 
isFunctionAnnotation = [false, false , false , true , false , true , false , false , true , false , true , false , true , false , false ]; 
cdf = {nullCdf, EMBEDDING_SHAREABLE_cdf_0 , PROCESS_SECINPUT_cdf_0 , XDLINKAGE_RECOGNIZE_cdf_0 , XDLINKAGE_RECOGNIZE_cdf_1 , XDLINKAGE_START_RECOGNIZER_cdf_0 , XDLINKAGE_START_RECOGNIZER_cdf_1 , XDLINKAGE_STOP_RECOGNIZER_cdf_0 , XDLINKAGE_STOP_RECOGNIZER_cdf_1 , GET_FEATURES_cdf_0 }; 
fromCleLabel = [nullCleLabel, EMBEDDING_SHAREABLE , PROCESS_SECINPUT , XDLINKAGE_RECOGNIZE , XDLINKAGE_RECOGNIZE , XDLINKAGE_START_RECOGNIZER , XDLINKAGE_START_RECOGNIZER , XDLINKAGE_STOP_RECOGNIZER , XDLINKAGE_STOP_RECOGNIZER , GET_FEATURES ]; 
hasRemotelevel = [nullLevel, purple , orange , orange , purple , orange , purple , orange , purple , orange ]; 
hasDirection = [nullDirection, egress , egress , bidirectional , bidirectional , bidirectional , bidirectional , bidirectional , bidirectional , bidirectional ]; 
hasGuardOperation = [nullGuardOperation, allow , allow , allow , allow , allow , allow , allow , allow , allow ]; 
isOneway = [false, false , false , false , false , false , false , false , false , false ]; 
Level = {nullLevel,orange,purple};
Enclave = {nullEnclave, orange_E,purple_E};
hasEnclaveLevel = [nullLevel,orange,purple];

constraint ::  "TaintOnNodeIdx99436" taint[99436]=ORANGE;
constraint ::  "TaintOnNodeIdx99437" taint[99437]=ORANGE;
constraint ::  "TaintOnNodeIdx99480" taint[99480]=EMBEDDING_SHAREABLE;
constraint ::  "TaintOnNodeIdx99483" taint[99483]=ORANGE;
constraint ::  "TaintOnNodeIdx100980" taint[100980]=PROCESS_SECINPUT;
constraint ::  "TaintOnNodeIdx100991" taint[100991]=XDLINKAGE_START_RECOGNIZER;
constraint ::  "TaintOnNodeIdx100992" taint[100992]=XDLINKAGE_STOP_RECOGNIZER;
constraint ::  "TaintOnNodeIdx100993" taint[100993]=GET_FEATURES;
constraint ::  "TaintOnNodeIdx100994" taint[100994]=XDLINKAGE_RECOGNIZE;

cdfForRemoteLevel = [|
 nullCdf, nullCdf , nullCdf 
|nullCdf, nullCdf , nullCdf 
|nullCdf, nullCdf , EMBEDDING_SHAREABLE_cdf_0 
|nullCdf, PROCESS_SECINPUT_cdf_0 , nullCdf 
|nullCdf, nullCdf , nullCdf 
|nullCdf, XDLINKAGE_RECOGNIZE_cdf_0 , XDLINKAGE_RECOGNIZE_cdf_1 
|nullCdf, nullCdf , nullCdf 
|nullCdf, nullCdf , nullCdf 
|nullCdf, XDLINKAGE_START_RECOGNIZER_cdf_0 , XDLINKAGE_START_RECOGNIZER_cdf_1 
|nullCdf, nullCdf , nullCdf 
|nullCdf, XDLINKAGE_STOP_RECOGNIZER_cdf_0 , XDLINKAGE_STOP_RECOGNIZER_cdf_1 
|nullCdf, nullCdf , nullCdf 
|nullCdf, GET_FEATURES_cdf_0 , nullCdf 
|nullCdf, nullCdf , nullCdf 
|nullCdf, nullCdf , nullCdf 
|]; 

hasRettaints = array2d(functionCdf, cleLabel, [
  false , true  , false , false , false , false , false , false , false , false , false , false , false , false , false 
, false , false , false , false , false , false , false , false , false , false , false , false , false , false , false 
, false , false , false , false , false , false , true  , false , false , false , false , false , false , false , false 
, false , false , false , false , false , false , false , false , false , false , false , false , false , false , false 
, false , false , false , false , false , false , false , false , false , true  , false , false , false , false , false 
, false , false , false , false , false , false , false , false , false , false , false , false , false , false , false 
, false , false , false , false , false , false , false , false , false , false , false , true  , false , false , false 
, false , true  , true  , false , false , false , false , false , false , false , false , false , false , false , false 
 ]); 

hasCodtaints = array2d(functionCdf, cleLabel, [
  false , true  , true  , false , false , false , false , false , false , false , false , false , false , false , false 
, false , false , false , false , false , false , false , false , false , false , false , false , false , false , false 
, false , false , false , false , true  , false , false , false , false , false , false , false , false , false , false 
, false , false , false , false , false , false , false , false , false , false , false , false , false , false , false 
, false , false , false , false , true  , false , false , false , false , false , false , false , false , false , false 
, false , false , false , false , false , false , false , false , false , false , false , false , false , false , false 
, false , false , false , false , true  , false , false , false , false , false , false , false , false , false , false 
, false , true  , true  , false , false , false , false , false , false , false , false , false , false , false , false 
 ]); 

hasArgtaints = array3d(functionCdf, parmIdx, cleLabel, [
  false , true  , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , true  , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		
, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		
, false , false , false , false , false , false , false , true  , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		
, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		
, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		
, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		
, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		
, false , true  , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , true  		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		, false , false , false , false , false , false , false , false , false 		
 ]); 

hasARCtaints = array2d(functionCdf, cleLabel, [
  false , true  , true  , true  , false , false , false , false , false , false , false , false , false , false , false 
, false , false , false , false , false , true  , false , false , false , false , false , false , false , false , false 
, false , false , false , false , true  , true  , true  , true  , false , false , false , false , false , false , false 
, false , false , false , false , false , false , false , false , true  , false , false , false , false , false , false 
, false , false , false , false , true  , false , false , false , true  , true  , false , false , false , false , false 
, false , false , false , false , false , false , false , false , false , false , true  , false , false , false , false 
, false , false , false , false , true  , false , false , false , false , false , true  , true  , false , false , false 
, false , true  , true  , false , false , false , false , false , false , false , false , false , true  , false , false 
 ]); 
