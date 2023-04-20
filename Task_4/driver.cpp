#include <cmath>
#include <iostream>
#include <stdlib.h>
#include <bitset>
#include <chrono>
#include "gem_ref.cpp"
#include "gemm_compiler_32_32_32_32_32_32.cpp"

using namespace std;

double test_32_32_32_32_32_32(int times);
void test_gemm_ref();
float const * create_random_matrix();
double driver_test(int times);
void gemm_compiler_32_32_32_32_32_32_mnk( float const * i_a, float const * i_b, float * io_c );
void gemm_compiler_32_32_32_32_32_32_nkm( float const * i_a, float const * i_b, float * io_c );
void gemm_ref( float const * i_a, float const * i_b, float * io_c, int64_t i_m, int64_t i_n, 
int64_t i_k, int64_t i_lda, int64_t i_ldb, int64_t i_ldc );

int main() {
    test_gemm_ref();
    int iterations = 500;
    double durations = 0;
    for(int i=0; i<iterations; i++) {
        // durations = durations + driver_test(10000);
        durations = durations + test_32_32_32_32_32_32(100);
    } 
    cout << "average duration: " << durations/iterations << endl;
    // GFLOPS calculation estimated by m*n*k*2 FLOPS per matrix --> 2*3*4*2 = 48 FLOPS per Matrix
    cout << "GFLOPS: " << 48*100*iterations/durations/pow(10,9) << endl;

    return 0;
}

double test_32_32_32_32_32_32(int times) {
    // create random 2 32x32 matrix
    auto before = std::chrono::steady_clock::now();
    for (int i=0; i<times; i++) {
    float const * a = create_random_matrix();
    float const * b = create_random_matrix();
    float matrix[32][32];
    float * c = * matrix;

    gemm_compiler_32_32_32_32_32_32_mnk(a, b, c);
    gemm_compiler_32_32_32_32_32_32_nkm(a, b, c);
    gemm_ref(a, b, c, 32, 32, 32, 32, 32, 32);
    }
    auto after = std::chrono::steady_clock::now();
    auto duration = std::chrono::duration_cast< std::chrono::duration< double> >(after - before);
    return duration.count();
}

float const * create_random_matrix() {
    int x = 32;
    int y = 32;
    float matrix[x][y];
    float const * ref_matrix = * matrix;
    for (int i = 0; i < x; i++) {
        for (int j = 0; j < y; j++) {
            matrix[i][j] = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
        }
    }
    return ref_matrix;
}