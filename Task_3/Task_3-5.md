# Task 3-4

## Command
/home/lukas/HPC/aarch64_micro/build/micro_asimd

## Changes to Code

Changed Loop to:

        loop_repeat:
                sub x0, x0, #1
                fmla v0.4s, v0.4s, v1.4s
                fmla v2.4s, v2.4s, v1.4s
                fmla v3.4s, v3.4s, v1.4s
                fmla v4.4s, v4.4s, v1.4s

                fmla v0.4s, v0.4s, v1.4s
                fmla v2.4s, v2.4s, v1.4s
                fmla v3.4s, v3.4s, v1.4s

                cbnz x0, loop_repeat


## Output from benchmark
running ASIMD microbenchmarks
  threads: 4
latency_src_asimd_fmla_sp
  duration: 7.75536 seconds
  GFLOPS: 144.4163
finished ASIMD microbenchmarks
All tests completed
## Explanation
As the Pipelines are now not occupied by waiting for the read-write dependencies. The GFLOPS increased dramatically while the duration decreased dramatically. It is however not as fast as completely non-dependent operations. 
