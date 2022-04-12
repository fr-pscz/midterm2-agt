# midterm2-agt

## Assignment 1: Steps

1. Fill `slave1.dat` and `slave2.dat` with the **complete** action sets and utility matrices.
2. Fill `master.dat` with a subset of actions and **reduced** utility matrices.
3. Solve `master.dat` with `./solve master` to find a reduced Nash equilibrium.
4. Fill `slave1.dat` with the strategy `s2` found in step 3, run `./solve slave1` and write down the strategy support for the new `s1`.
5. Fill `slave2.dat` with the strategy `s1` found in step 3, run `./solve slave2` and write down the strategy support for the new `s2`.
6. Expand the action sets and utility matrices in `master.dat` with the new supports found in steps 4 and 5.
7. Go back to step 3.
