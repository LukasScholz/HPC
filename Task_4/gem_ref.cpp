#include <iostream>
#include <stdlib.h>
#include <bitset>
#include <chrono>
using namespace std;

void gemm_ref( float const * i_a,float const * i_b, float * io_c, int64_t i_m, int64_t i_n,
int64_t i_k, int64_t i_lda, int64_t i_ldb, int64_t i_ldc );

double driver_test(int times) {
    auto before = std::chrono::steady_clock::now();
    float const i_a[2][4] = {5, 23, -4, 0, 12, 44, 128, 2};
    float const i_b[4][3] = {1, 2, 1, 0, 44, 32, -5, 2, -22, -99, 29, 45};
    float io_c[2][3] = {0, 0, 0, 0, 0, 0};
    for (int i=0; i<times; i++) {
        int64_t i_m = 2;
        int64_t i_n = 3;
        int64_t i_k = 4;
        int64_t i_lda = 9;
        int64_t i_ldb = 8;
        int64_t i_ldc = 7;
        float const * a = (float*)malloc(i_k * i_lda);
        float const * b = (float*)malloc(i_n * i_ldb);
        float * c = (float*)malloc(i_n * i_ldc);
        a = * i_a;
        b = * i_b;
        c = * io_c;


        gemm_ref(a, b, c, i_m, i_n, i_k, i_lda, i_ldb, i_ldc);
    }
    auto after = std::chrono::steady_clock::now();
    auto duration = std::chrono::duration_cast< std::chrono::duration< double> >(after - before);
    return duration.count();
}


void gemm_ref( float const * i_a, float const * i_b, float * io_c, int64_t i_m, int64_t i_n, 
int64_t i_k, int64_t i_lda, int64_t i_ldb, int64_t i_ldc ) {
    for (int64_t m=0; m<i_m; m++) {
        for (int64_t n=0; n<i_n; n++) {
            for (int64_t k=0; k<i_k; k++) {
                io_c[m, n] += i_a[m, k] * i_b[k, n];
            }
        }
    }
}

void test_gemm_ref() {
    // Test case 1
    float const i_a[1][1] = {5};
    float const i_b[1][2] = {1, 2};
    float io_c[1][2] = {0, 0};
    int64_t i_m = 1;
    int64_t i_n = 2;
    int64_t i_k = 1;
    int64_t i_lda = 3;
    int64_t i_ldb = 3;
    int64_t i_ldc = 3;
    float const * a = (float*)malloc(i_k * i_lda);
    float const * b = (float*)malloc(i_n * i_ldb);
    float * c = (float*)malloc(i_n * i_ldc);
    a = * i_a;
    b = * i_b;
    c = * io_c;

    gemm_ref(a, b, c, i_m, i_n, i_k, i_lda, i_ldb, i_ldc);

    
    // Test case 2
    float const i_a_2[2][2] = {5, 10, 2, 2};
    float const i_b_2[2][1] = {1, 4};
    float io_c_2[2][1] = {0, 0};
    int64_t i_m_2 = 2;
    int64_t i_n_2 = 1;
    int64_t i_k_2 = 2;
    int64_t i_lda_2 = 3;
    int64_t i_ldb_2 = 3;
    int64_t i_ldc_2 = 3;
    float const * a_2 = (float*)malloc(i_k_2 * i_lda_2);
    float const * b_2 = (float*)malloc(i_n_2 * i_ldb_2);
    float * c_2 = (float*)malloc(i_n_2 * i_ldc_2);
    a_2 = * i_a_2;
    b_2 = * i_b_2;
    c_2 = * io_c_2;

    gemm_ref(a_2, b_2, c_2, i_m_2, i_n_2, i_k_2, i_lda_2, i_ldb_2, i_ldc_2);

    // Test case 3
    float const i_a_3[1][1] = {5};
    float const i_b_3[1][3] = {1, 2, 3};
    float io_c_3[1][3] = {0, 0, 0};
    int64_t i_m_3 = 1;
    int64_t i_n_3 = 3;
    int64_t i_k_3 = 1;
    int64_t i_lda_3 = 3;
    int64_t i_ldb_3 = 3;
    int64_t i_ldc_3 = 3;
    float const * a_3 = (float*)malloc(i_k_3 * i_lda_3);
    float const * b_3 = (float*)malloc(i_n_3 * i_ldb_3);
    float * c_3 = (float*)malloc(i_n_3 * i_ldc_3);
    a_3 = * i_a_3;
    b_3 = * i_b_3;
    c_3 = * io_c_3;

    gemm_ref(a_3, b_3, c_3, i_m_3, i_n_3, i_k_3, i_lda_3, i_ldb_3, i_ldc_3);


    // Test case 4
    float const i_a_4[3][3] = {5, 10, 20, -4, 12, 5, 33, 6, 8};
    float const i_b_4[3][3] = {1, 2, 2, 5, 43, -4, 22, 12, -0};
    float io_c_4[3][3] = {0, 0, 0, 0 , 0, 0 ,0 ,0 ,0};
    int64_t i_m_4 = 3;
    int64_t i_n_4 = 3;
    int64_t i_k_4 = 3;
    int64_t i_lda_4 = 5;
    int64_t i_ldb_4 = 5;
    int64_t i_ldc_4 = 5;
    float const * a_4 = (float*)malloc(i_k_4 * i_lda_4);
    float const * b_4 = (float*)malloc(i_n_4 * i_ldb_4);
    float * c_4 = (float*)malloc(i_n_4 * i_ldc_4);
    a_4 = * i_a_4;
    b_4 = * i_b_4;
    c_4 = * io_c_4;

    gemm_ref(a_4, b_4, c_4, i_m_4, i_n_4, i_k_4, i_lda_4, i_ldb_4, i_ldc_4);

    // Test case 5
    float const i_a_5[1][1] = {5};
    float const i_b_5[1][1] = {1};
    float io_c_5[1][1] = {0};
    int64_t i_m_5 = 1;
    int64_t i_n_5 = 1;
    int64_t i_k_5 = 1;
    int64_t i_lda_5 = 3;
    int64_t i_ldb_5 = 4;
    int64_t i_ldc_5 = 3;
    float const * a_5 = (float*)malloc(i_k_5 * i_lda_5);
    float const * b_5 = (float*)malloc(i_n_5 * i_ldb_5);
    float * c_5 = (float*)malloc(i_n_5 * i_ldc_5);
    a_5 = * i_a_5;
    b_5 = * i_b_5;
    c_5 = * io_c_5;

    gemm_ref(a_5, b_5, c_5, i_m_5, i_n_5, i_k_5, i_lda_5, i_ldb_5, i_ldc_5);
    
}