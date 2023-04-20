#include <iostream>
#include <stdlib.h>
#include <bitset>
#include <chrono>
using namespace std;

void gemm_compiler_32_32_32_32_32_32_mnk( float const * i_a, float const * i_b, float * io_c ) {
    int i_m = 32;
    int i_n = 32;
    int i_k = 32;
    for (int64_t m=0; m<i_m; m++) {
        for (int64_t n=0; n<i_n; n++) {
            for (int64_t k=0; k<i_k; k++) {
                io_c[m, n] += i_a[m, k] * i_b[k, n];
            }
        }
    }
}

void gemm_compiler_32_32_32_32_32_32_nkm( float const * i_a, float const * i_b, float * io_c ) {
    int i_m = 32;
    int i_n = 32;
    int i_k = 32;
    for (int64_t n=0; n<i_n; n++) {
        for (int64_t k=0; k<i_k; k++) {
            for (int64_t m=0; m<i_m; m++) {
                io_c[m, n] += i_a[m, k] * i_b[k, n];
            }
        }
    }
}