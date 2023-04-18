# Task 3-3

## Command
/home/lukas/HPC/aarch64_micro/build/micro_asimd

## Output from benchmark
running ASIMD microbenchmarks  
  threads: 4  
latency_src_asimd_fmla_sp  
  duration: 61.6805 seconds  
  GFLOPS: 18.1581
 
## Explanation
  Even though this benchmark has been decreased majorly (4x). The duration has also increased. The amount of GFLOPS has decreased This is because all fmla instructions are dependent on each other reducing the speed of the pipeline

