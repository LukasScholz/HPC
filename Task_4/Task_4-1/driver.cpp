#include <cmath>
#include <iostream>
#include <stdlib.h>
#include <bitset>
#include <chrono>
#include "gem_ref.cpp"
using namespace std;

void test_gemm_ref();
double driver_test(int times);

int main() {
    //test_gemm_ref();
    int iterations = 500;
    double durations = 0;
    for(int i=0; i<iterations; i++) {
        durations = durations + driver_test(10000);
    } 
    cout << "average duration: " << durations/iterations << endl;
    // GFLOPS calculation estimated by m*n*k*2 FLOPS per matrix --> 2*3*4*2 = 48 FLOPS per Matrix
    cout << "GFLOPS: " << 48*10000*iterations/durations/pow(10,9) << endl;
    
    return 0;
}