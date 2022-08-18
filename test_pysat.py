import sys

from pysat.formula import CNF
from pysat.solvers import Solver

cnf = CNF(from_clauses=[[-1, 2, 3], [1, -2]])
print(f'Formula: ')
cnf.to_fp(sys.stdout)

with Solver(name='minisat22', bootstrap_with=cnf) as solver:
    result = solver.solve()
    assert result
    model = solver.get_model()
    print("A model: "+str(model))
    nof_models = 0
    for model in solver.enum_models():
        nof_models += 1
    print("#models: "+str(nof_models))

