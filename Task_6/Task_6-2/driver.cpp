#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <stdlib.h>
#include <bitset>
using namespace std;

extern "C" {
    void gemm_asm_asimd_16_6_1(float const * i_a, float const * i_b, float * io_c );
}

float generate_random_value();

int main() {
    int M = 16;
    int N = 6;
    int K = 1;

    float random = ((float)(rand() % 100000))/1000;

    float a[M][K];
    float b[K][N];
    float c[M][N];
    
    for (int i=0; i<M; i++)
        for (int j=0; j<K; j++)
            a[i][j] = generate_random_value();

    for (int i=0; i<K; i++)
        for (int j=0; j<N; j++)
            b[i][j] = generate_random_value();

    for (int i=0; i<M; i++)
        for (int j=0; j<N; j++)
            c[i][j] = generate_random_value();

    
    float const * i_a = * a;
    float const * i_b = * b;
    float * io_c = * c;

    gemm_asm_asimd_16_6_1(i_a, i_b, io_c );


for(int a_ = 0; a_ < 4; a_++)
  {
    for(int b_ = 0; b_ < 2; b_++)
    {
      cout << c[a_][b_] << " ";
    }
    cout << endl;
  }

  return 0;
}

float generate_random_value() {
    return ((float)(rand() % 100000))/1000;
}