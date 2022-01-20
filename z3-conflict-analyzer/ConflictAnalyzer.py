from z3 import *

class ConflictAnalyzer:

    def __init__(self):

        print("Create conflict analyzer")
        self.s = Optimize()
        print("Created")
        # self.s.set(':core.minimize', True)
        self.constraints = []
        self.explanations = {}
        self.status = 'UNSOLVED'

    def assume(self, constraint):
        self.s.add(constraint)

    def add(self, constraint, ex):
        self.constraints.append(constraint)
        self.explanations[constraint] = ex

    def minimize(self, obj):
        self.s.minimize(obj)

    def solve(self):
        self.status = self.s.check(self.constraints)
        return (self.status, self.s.model())

    def explain(self):
        if self.status != unsat:
            return "Cannot explain '{}' status".format(str(self.status))

        # Explain result using unsat core
        print("\nretrieving unsat core...")
        core = self.s.unsat_core()
        print('reason for unsatisfiability:')
        print('\n'.join([self.explanations[fml] for fml in core]))
