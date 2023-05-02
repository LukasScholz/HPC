#include <bitset>
#include <iostream>

extern "C" {
	uint32_t data_processing_3( uint32_t i_a, uint32_t i_b);
}

int main( int i_argc, char * i_argv[] ) {
	uint32_t l_a3 = 0b10011011;
	uint32_t l_b3 = 0b11110010;
	uint32_t l_c3 = 0;
	l_c3 = data_processing_3( l_a3, l_b3);
	std::cout << "data_processing_3("
		<< std::bitset<32>(l_a3) << ", "
		<< std::bitset<32>(l_b3) << "): "
		<< std::bitset<32>(l_c3)
		<< std::endl;
		
	return 0;
}	