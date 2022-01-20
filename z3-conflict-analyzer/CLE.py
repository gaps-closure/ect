import json
from z3 import *

class CLE:

    def __init__(self):

        # Raw

        # Label
        nullCleLabel = 1
        PURPLE = 2
        ORANGE = 3
        XDLINKAGE_GET_A = 4
        TAG_RESPONSE_GET_A = 5
        orangeDFLT = 6
        purpleDFLT = 7

        # Level
        nullLevel = 1
        orange = 2
        purple = 3

        # Cdf
        nullCdf = 1
        ORANGE_cdf_0 = 2
        XDLINKAGE_GET_A_cdf_0 = 3
        XDLINKAGE_GET_A_cdf_1 = 4
        cdfs = [ nullCdf, ORANGE_cdf_0, XDLINKAGE_GET_A_cdf_0, XDLINKAGE_GET_A_cdf_1 ]

        # Enclave
        nullEnclave = 1
        orange_E = 2
        purple_E = 3

        # GuardOperation
        nullGuardOperation = 1
        allow = 2
        deny = 3
        redact = 4

        # Direction
        nullDirection = 1
        bidirectional = 2
        egress = 3
        ingress = 4

        hasLabelLevel = [ nullLevel, purple, orange, orange, nullLevel, orange, purple ]
        isFunctionAnnotation = [ False, False, False, True, False, False, False ]
        fromCleLabel = [ nullCleLabel, ORANGE, XDLINKAGE_GET_A, XDLINKAGE_GET_A ]
        hasRemotelevel = [ nullLevel, purple, purple, orange ]
        hasDirection = [ nullDirection, egress, bidirectional, bidirectional ]
        hasGuardOperation = [ nullGuardOperation, allow, allow, allow ]
        isOneway = [ False, False, False, False ]
        hasEnclaveLevel = [ nullLevel, orange, purple ]

        cdfForRemoteLevel = [ nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, ORANGE_cdf_0, nullCdf, XDLINKAGE_GET_A_cdf_1, XDLINKAGE_GET_A_cdf_0, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf, nullCdf ]
        hasRettaints = [ False, False, False, False, True, False, False, False, False, False, False, True, False, False ]
        hasCodtaints = [ False, False, True, False, False, False, False, False, False, True, False, False, False, False ]
        hasARCtaints = [ False, False, True, True, True, False, False, False, False, True, True, True, False, False ]
        hasArgtaints = [ False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False ]

        # Derived / Exposed

        self.allow = allow
        self.redact = redact

        self.nLabels = len(hasLabelLevel)
        self.nLevels = 3
        self.nEnclaves = len(hasEnclaveLevel)
        functionCdfs = [x for x in cdfs if isFunctionAnnotation[fromCleLabel[x - 1] - 1]]
        self.nFCdfs = len(functionCdfs)

        self.nullCleLabel = nullCleLabel
        self.nullLevel = nullLevel
        self.nullCdf = nullCdf
        self.nullEnclave = nullEnclave

        self.hasLabelLevel = hasLabelLevel
        self.isFunctionAnnotation = isFunctionAnnotation
        self.hasGuardOperation = hasGuardOperation
        self.hasEnclaveLevel = hasEnclaveLevel

        self.cdfForRemoteLevel = cdfForRemoteLevel
        self.hasRettaints = hasRettaints
        self.hasCodtaints = hasCodtaints
        self.hasArgtaints = hasArgtaints
        self.hasARCtaints = hasARCtaints
