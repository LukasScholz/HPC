
copy.o:     file format elf64-littleaarch64

SYMBOL TABLE:
0000000000000000 l    df *ABS*  0000000000000000 copy.c
0000000000000000 l    d  .text  0000000000000000 .text
0000000000000000 l    d  .data  0000000000000000 .data
0000000000000000 l    d  .bss   0000000000000000 .bss
0000000000000000 l    d  .debug_info    0000000000000000 .debug_info
0000000000000000 l    d  .debug_abbrev  0000000000000000 .debug_abbrev
0000000000000000 l    d  .debug_aranges 0000000000000000 .debug_aranges
0000000000000000 l    d  .debug_line    0000000000000000 .debug_line
0000000000000000 l    d  .debug_str     0000000000000000 .debug_str
0000000000000000 l    d  .debug_line_str        0000000000000000 .debug_line_str
0000000000000000 l    d  .note.GNU-stack        0000000000000000 .note.GNU-stack
0000000000000000 l    d  .eh_frame      0000000000000000 .eh_frame
0000000000000000 l    d  .comment       0000000000000000 .comment
0000000000000000 g     F .text  0000000000000068 _Z6copy_cPKjPm



Disassembly of section .text:

0000000000000000 <_Z6copy_cPKjPm>:
#include <stdint.h>

void copy_c(const uint32_t* l_a, uint64_t* l_b)
{
   0:   d10083ff        sub     sp, sp, #0x20
   4:   f90007e0        str     x0, [sp, #8]
   8:   f90003e1        str     x1, [sp]
    for (int i = 0; i < 7; i++) {
   c:   b9001fff        str     wzr, [sp, #28]
  10:   1400000f        b       4c <_Z6copy_cPKjPm+0x4c>
        l_b[i] = (uint64_t)l_a[i];
  14:   b9801fe0        ldrsw   x0, [sp, #28]
  18:   d37ef400        lsl     x0, x0, #2
  1c:   f94007e1        ldr     x1, [sp, #8]
  20:   8b000020        add     x0, x1, x0
  24:   b9400002        ldr     w2, [x0]
  28:   b9801fe0        ldrsw   x0, [sp, #28]
  2c:   d37df000        lsl     x0, x0, #3
  30:   f94003e1        ldr     x1, [sp]
  34:   8b000020        add     x0, x1, x0
  38:   2a0203e1        mov     w1, w2
  3c:   f9000001        str     x1, [x0]
    for (int i = 0; i < 7; i++) {
  40:   b9401fe0        ldr     w0, [sp, #28]
  44:   11000400        add     w0, w0, #0x1
  48:   b9001fe0        str     w0, [sp, #28]
  4c:   b9401fe0        ldr     w0, [sp, #28]
  50:   7100181f        cmp     w0, #0x6
  54:   54fffe0d        b.le    14 <_Z6copy_cPKjPm+0x14>
    }
  58:   d503201f        nop
  5c:   d503201f        nop
  60:   910083ff        add     sp, sp, #0x20
  64:   d65f03c0        ret
