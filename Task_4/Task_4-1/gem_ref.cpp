#include <iostream>
#include <stdlib.h>
#include <bitset>
#include <cmath>
using namespace std;

void gemm_ref( float const * i_a,float const * i_b, float * io_c, int64_t i_m, int64_t i_n,
int64_t i_k, int64_t i_lda, int64_t i_ldb, int64_t i_ldc );
void test_gemm_ref();
void driver(int times);

int main() {
    test_gemm_ref();
    int iterations = 10;

    /*
    for(int i=0; i<iterations; i++)
    double durations = 0;
    durations = durations + driver(1000);
    cout << "average duration: " << durations << endl;
    */

    return 0;
}

double driver(int times) {
    auto before = std::chrono::steady_clock::now()
    for (int i=0; i<times; i++) {
        float const * i_a = 
        float const * i_b = 
        float * io_c = 
        int64_t i_m = 
        int64_t i_n = 
        int64_t i_k = 
        int64_t i_lda = 
        int64_t i_ldb = 
        int64_t i_ldc = 

        gemm_ref(i_a, i_b, io_c, i_m, i_n, i_k, i_lda, i_ldb, i_ldc);
    }
    auto after = std::chrono::steady_clock::now()
    auto duration = std::chrono::duration_cast< std::chrono::duration< double> >(after - before)
    return duration;
}


void gemm_ref( float const * i_a, float const * i_b, float * io_c, int64_t i_m, int64_t i_n, 
int64_t i_k, int64_t i_lda, int64_t i_ldb, int64_t i_ldc ) {
    for (int64_t m=0; m<i_m; m++) {
        for (int64_t n=0; n<i_n; n++) {
            for (int64_t k=0; k<i_k; k++) {
                io_c[m, n] += i_a[m, k] * i_b[k, n]
            }
        }
    }
}

void test_gemm_ref() {
    // Test case 1
    float const * i_a = 
    float const * i_b = 
    float * io_c = 
    int64_t i_m = 
    int64_t i_n = 
    int64_t i_k = 
    int64_t i_lda = 
    int64_t i_ldb = 
    int64_t i_ldc = 

    gemm_ref(i_a, i_b, io_c, i_m, i_n, i_k, i_lda, i_ldb, i_ldc);

    // Test case 1
    float const * i_a = 
    float const * i_b = 
    float * io_c = 
    int64_t i_m = 
    int64_t i_n = 
    int64_t i_k = 
    int64_t i_lda = 
    int64_t i_ldb = 
    int64_t i_ldc = 

    gemm_ref(i_a, i_b, io_c, i_m, i_n, i_k, i_lda, i_ldb, i_ldc);

    // Test case 2
    float const * i_a = 
    float const * i_b = 
    float * io_c = 
    int64_t i_m = 
    int64_t i_n = 
    int64_t i_k = 
    int64_t i_lda = 
    int64_t i_ldb = 
    int64_t i_ldc = 

    gemm_ref(i_a, i_b, io_c, i_m, i_n, i_k, i_lda, i_ldb, i_ldc);

    // Test case 3
    float const * i_a = 
    float const * i_b = 
    float * io_c = 
    int64_t i_m = 
    int64_t i_n = 
    int64_t i_k = 
    int64_t i_lda = 
    int64_t i_ldb = 
    int64_t i_ldc = 

    gemm_ref(i_a, i_b, io_c, i_m, i_n, i_k, i_lda, i_ldb, i_ldc);

    // Test case 4
    float const * i_a = 
    float const * i_b = 
    float * io_c = 
    int64_t i_m = 
    int64_t i_n = 
    int64_t i_k = 
    int64_t i_lda = 
    int64_t i_ldb = 
    int64_t i_ldc = 

    gemm_ref(i_a, i_b, io_c, i_m, i_n, i_k, i_lda, i_ldb, i_ldc);

    // Test case 5
    float const * i_a = 
    float const * i_b = 
    float * io_c = 
    int64_t i_m = 
    int64_t i_n = 
    int64_t i_k = 
    int64_t i_lda = 
    int64_t i_ldb = 
    int64_t i_ldc = 

    gemm_ref(i_a, i_b, io_c, i_m, i_n, i_k, i_lda, i_ldb, i_ldc);

    
}