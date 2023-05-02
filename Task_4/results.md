# Average durations and returned GFLOPS with different parameters

## Performace for Excercise 4.2

### Without any Parameters
Command:  
g++ driver.cpp -o no_parameters  
./no_parameters  
average duration: 0.00162682  
GFLOPS: 0.295055  

### With -O2 Parameter
Command:  
g++ driver.cpp -O2 -o o2_parameter  
./o2_parameter   
average duration: 0.000137334  
GFLOPS: 3.49514  

### With -O3 Parameter
Command:  
g++ driver.cpp -O3 -o o3_parameter  
./o3_parameter  
average duration: 3.1032e-08  
GFLOPS: 15467.9  

### With -Os Parameter
Command:  
g++ driver.cpp -Os -o os_parameter  
./os_parameter  
average duration: 0.000365779  
GFLOPS: 1.31227 (but size decreased from 83016 bytes to 81176 bytes)  

## Performace for Excercise 4.3

### Without any Parameters
Command:   
g++ driver.cpp -o no_parameters_32_32_32  
./no_parameters_32_32_32  
average duration: 0.0364695  
GFLOPS: 0.000131617  

### With -O2 Parameter
Command:  
g++ driver.cpp -O2 -o o2_parameter_32_32_32  
./o2_parameter_32_32_32  
average duration: 0.00881367  
GFLOPS: 0.000544608  

### With -O3 Parameter
Command:  
g++ driver.cpp -O3 -o o3_parameter_32_32_32  
./o3_parameter_32_32_32  
average duration: 0.00710464  
GFLOPS: 0.000675615  

### With -Os Parameter
Command:  
g++ driver.cpp -Os -o os_parameter_32_32_32  
./os_parameter_32_32_32  
Segmentation fault (??) 
