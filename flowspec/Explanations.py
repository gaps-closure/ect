inflowIndex  = lambda c, i: "Component '{}' has inflow '{}' at index '{}'.".format(c.name, c.inflows[i].name, i)
outflowIndex = lambda c, i: "Component '{}' has outflow '{}' at index '{}'.".format(c.name, c.outflows[i].name, i)
taintIndex   = lambda c, i: "Component '{}' has argtaint '{}' at index '{}'.".format(c.name, c.argtaints[i].name, i)
nInflows     = lambda c:    "Component '{}' has '{}' inflows.".format(c.name, len(c.inflows))
nOutflows    = lambda c:    "Component '{}' has '{}' outflows.".format(c.name, len(c.outflows))
nTaints      = lambda c:    "Component '{}' has '{}' argtaints.".format(c.name, len(c.argtaints))
componentLvl = lambda c:    "Component '{}' has level '{}'.".format(c.name, c.lvl)
flowMsg      = lambda f:    "Flow '{}' has message '{}'.".format(f.name, f.msg)
flowLabel    = lambda f:    "Flow '{}' has label '{}'.".format(f.name, f.label.name)
labelLocal   = lambda l:    "Label '{}' has level '{}'.".format(l.name, l.local)
labelRemote  = lambda l:    "Label '{}' has remotelevel '{}'.".format(l.name, l.remote)
outflowLevel = lambda f:    "The level of flow '{}' must match the level of the component for which it is an outflow.".format(f.name)
inflowLevel  = lambda f:    "The remotelevel of flow '{}' must match the level of the component for which it is an inflow.".format(f.name)
