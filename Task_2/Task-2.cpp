#include <iostream>
#include <stdlib.h>
#include <bitset>
#include <cmath>
using namespace std;

unsigned int instruction_asimd_compute(unsigned int  i_vec_instr, unsigned char i_vec_reg_dst, unsigned char i_vec_reg_src_0, unsigned char i_vec_reg_src_1 );

int main() {
    // Task 2.2.1
    unsigned char l_data1  = 1;
    unsigned char l_data2  = 255;
    unsigned char l_data3  = l_data2 + 1;
    unsigned char l_data4  = 0xA1;
    unsigned char l_data5  = 0b1001011;
    unsigned char l_data6  = 'H';
    char l_data7  = -4;
    unsigned int  l_data8  = 1u << 11;
    unsigned int  l_data9 = l_data8 << 21;
    unsigned int  l_data10  = 0xFFFFFFFF >> 5;
    unsigned int  l_data11 = 0b1001 ^ 0b01111;
    unsigned int  l_data12 = ~0b1001;
    unsigned int  l_data13 = 0xF0 & 0b1010101;
    unsigned int  l_data14 = 0b001 | 0b101;
    unsigned int  l_data15 = 7743;
    int  l_data16 = -7743;

    cout << "l_data1 = " << bitset<8>(l_data1) << endl;
    cout << "l_data2 = " << bitset<8>(l_data2) << endl;
    cout << "l_data3 = " << bitset<8>(l_data3) << endl;
    cout << "l_data4 = " << bitset<8>(l_data4) << endl;
    cout << "l_data5 = " << bitset<8>(l_data5) << endl;
    cout << "l_data6 = " << bitset<8>(l_data6) << endl;
    cout << "l_data7 = " << bitset<8>(l_data7) << endl;
    cout << "l_data8 = " << bitset<32>(l_data8) << endl;
    cout << "l_data9 = " << bitset<32>(l_data9) << endl;
    cout << "l_data10 = " << bitset<32>(l_data10) << endl;
    cout << "l_data11 = " << bitset<32>(l_data11) << endl;
    cout << "l_data12 = " << bitset<32>(l_data12) << endl;
    cout << "l_data13 = " << bitset<32>(l_data13) << endl;
    cout << "l_data14 = " << bitset<32>(l_data14) << endl;
    cout << "l_data15 = " << bitset<32>(l_data15) << endl;
    cout << "l_data16 = " << bitset<32>(l_data16) << endl;

    // Task 2.2.2
    unsigned int all = 0b01001110001000001100110000000000;
    unsigned char first = 0b00000000;
    unsigned char second = 0b00000001;
    unsigned char third = 0b00000010;
    cout << "value = " << bitset<32>(instruction_asimd_compute(all, first, second, third)) << endl;

    return 0;
}

// Task 2.2.2
unsigned int instruction_asimd_compute(unsigned int  i_vec_instr, unsigned char i_vec_reg_dst, unsigned char i_vec_reg_src_0, unsigned char i_vec_reg_src_1 ) {
    bitset<5> first(i_vec_reg_dst);
    bitset<5> second(i_vec_reg_src_0);
    bitset<5> thrid(i_vec_reg_src_1);
    
    // clear bits 0-9
    for (int i=0; i<10; i++) {
        i_vec_instr &= ~(1U << i);
    }
    // clear bits 16-20
    for (int i=0; i<5; i++) {
        i_vec_instr &= ~(1U << (i-16));
    }

    // add bits from first
    i_vec_instr += (int)(first.to_ulong());

    // add bits from the second
    i_vec_instr += (((int)(second.to_ulong())) * pow(2, 5));

    // add bits from the thrid
    i_vec_instr += (((int)(thrid.to_ulong())) * pow(2, 16));
    
    
    return i_vec_instr;
}

// Task 2.2.3
/*
If we interpret our unsigned int/char as SIMD&FP registers, we essentially made a high level representation of the FMLA (vector) instruction.
However the precision is different, as SIMD&FP registers do not only contain 5 bits.
*/