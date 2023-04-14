# Task 3-4

## Command
/home/lukas/HPC/aarch64_micro/build/micro_asimd

## Output from benchmark
running ASIMD microbenchmarks  
  threads: 4  
latency_src_asimd_fmul_sp  
  duration: 46.2633 seconds  
  GFLOPS: 103.754  
finished ASIMD microbenchmarks  
## Explanation
As a singular Pipeline bound by fmul latency would be faster (see Task 3-1), we can also see that effect here. As with the same amount of instructions the duration has decreased significantly while the amount of GFLOPS increased