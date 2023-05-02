#include <stdint.h>

void copy_c(const uint32_t* l_a, uint64_t* l_b)
{
    for (int i = 0; i < 7; i++) {
        l_b[i] = (uint64_t)l_a[i];
    }
}