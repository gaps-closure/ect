## Description of files

These files are various examples of rule sets giving cross-domain message flow
policies, which can be added as constraints via the command line, like so:

`python3 FlowSolver.py examples/valid/case1.json --rules examples/rules/case1.json`

The solver will constrain cross-domain message flows to only those listed in
the rules file when attempting to solve the specification. If the problem is
unsatisfiable, it will print an explanation as normal, which may reference the
provided cross-domain rules. If the problem is satisfiable, the solver will
additionally check if the rule set was overly permissive and print out the
unneeded rules.

`case1.json`, `case2.json`, and `case3.json` are the correct rule sets for each
case. The `_permissive` and `_restrictive` files give variants of each case
where a rule has been either added or removed. So if the user runs:

`python3 FlowSolver.py examples/valid/case1.json --rules examples/rules/case1_permissive.json`

The solver will return `sat` but report that a provided rule is unnecessary.
If the user runs:

`python3 FlowSolver.py examples/valid/case1.json --rules examples/rules/case1_restrictive.json`

The solver will return `unsat` and complain that a cross-domain flow needed by
the application is disallowed by the rule set.
