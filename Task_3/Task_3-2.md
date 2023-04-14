# Task 3-2
### FMUL
We can assume the (unrealistic) frequency of 2.6GHz. If a Pipeline only works on one instruction at a time and one FMUL instruction needs 3 Ops. Then we can deduces that this pipeline can achieve 1/3 of an operation per cycle. Therefore we can achieve 2.6 / 3 * 10^9 operations per second, which are 0.867 GFLOPS.

### FMLA
If we use FMLA instructions instead, we only have 1/4 operations per cycle. This allows only 2.6 / 4 * 10^9 operations per second, which are 0.65 GFLOPS.