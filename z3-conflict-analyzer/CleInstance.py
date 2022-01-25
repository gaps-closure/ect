from z3 import *
from examples.secdesk.cle import *

class CLE:

    def __init__(self):

        self.Label = Label
        self.Level = Level
        self.Cdf = Cdf
        self.Enclave = Enclave
        self.GuardOperation = GuardOperation

        self.taints = taints

        self.allow = allow
        self.redact = redact

        self.Label = Label
        self.LabelCons = LabelCons
        self.nLabels = len(self.LabelCons)
        self.Level = Level
        self.LevelCons = LevelCons
        self.nLevels = len(self.LevelCons)
        self.Enclave = Enclave
        self.EnclaveCons = EnclaveCons
        self.nEnclaves = len(self.EnclaveCons)
        self.Cdf = Cdf
        self.CdfCons = CdfCons
        self.nCdfs = len(self.CdfCons)

        self.nullCleLabel = nullCleLabel
        self.nullLevel = nullLevel
        self.nullEnclave = nullEnclave
        self.nullCdf = nullCdf

        self.hasLabelLevel = hasLabelLevel
        self.isFunctionAnnotation = isFunctionAnnotation
        self.hasGuardOperation = hasGuardOperation
        self.hasEnclaveLevel = hasEnclaveLevel

        self.cdfForRemoteLevel = cdfForRemoteLevel
        self.hasRettaints = hasRettaints
        self.hasCodtaints = hasCodtaints
        self.hasArgtaints = hasArgtaints
        self.hasARCtaints = hasARCtaints
