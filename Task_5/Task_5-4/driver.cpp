#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <stdlib.h>
#include <bitset>
using namespace std;


extern "C" {

  void gemm_asm_gp( uint32_t const * i_a, uint32_t const * i_b, uint32_t * io_c );
}

int main() {

  uint32_t const a_[4][2] = {5, 10, 20, 4, 12, 5, 33, 6};
  uint32_t const b_[2][2] = {1, 2, 4, 5};
  uint32_t c[4][2] = {0, 0, 0, 0 , 0, 0 ,0 ,0};
  
  uint32_t const * i_a = * a_;
  uint32_t const * i_b = * b_;
  uint32_t * io_c = * c;

  gemm_asm_gp(i_a, i_b, io_c );


for(int a = 0; a < 4; a++)
  {
    for(int b = 0; b < 2; b++)
    {
      cout << c[a][b] << " ";
    }
    cout << endl;
  }

  return 0;

}
