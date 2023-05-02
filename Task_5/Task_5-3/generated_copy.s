        .arch armv8-a
        .file   "copy.c"
        .text
.Ltext0:
        .file 0 "/home/lukas/HPC/Uebung5/5-3/Task_5-3" "copy.c"
        .align  2
        .global _Z6copy_cPKjPm
        .type   _Z6copy_cPKjPm, %function
_Z6copy_cPKjPm:
.LFB0:
        .file 1 "copy.c"
        .loc 1 4 1
        .cfi_startproc
        sub     sp, sp, #32
        .cfi_def_cfa_offset 32
        str     x0, [sp, 8]
        str     x1, [sp]
.LBB2:
        .loc 1 5 14
        str     wzr, [sp, 28]
        .loc 1 5 5
        b       .L2
.L3:
        .loc 1 6 32 discriminator 3
        ldrsw   x0, [sp, 28]
        .loc 1 6 33 discriminator 3
        lsl     x0, x0, 2
        ldr     x1, [sp, 8]
        add     x0, x1, x0
        ldr     w2, [x0]
        .loc 1 6 13 discriminator 3
        ldrsw   x0, [sp, 28]
        .loc 1 6 14 discriminator 3
        lsl     x0, x0, 3
        ldr     x1, [sp]
        add     x0, x1, x0
        .loc 1 6 18 discriminator 3
        uxtw    x1, w2
        .loc 1 6 16 discriminator 3
        str     x1, [x0]
        .loc 1 5 5 discriminator 3
        ldr     w0, [sp, 28]
        add     w0, w0, 1
        str     w0, [sp, 28]
.L2:
        .loc 1 5 23 discriminator 1
        ldr     w0, [sp, 28]
        cmp     w0, 6
        ble     .L3
.LBE2:
        .loc 1 8 1
        nop
        nop
        add     sp, sp, 32
        .cfi_def_cfa_offset 0
        ret
        .cfi_endproc
.LFE0:
        .size   _Z6copy_cPKjPm, .-_Z6copy_cPKjPm
.Letext0:
        .file 2 "/usr/include/bits/types.h"
        .file 3 "/usr/include/bits/stdint-uintn.h"
        .section        .debug_info,"",@progbits
.Ldebug_info0:
        .4byte  0x105
        .2byte  0x5
        .byte   0x1
        .byte   0x8
        .4byte  .Ldebug_abbrev0
        .uleb128 0x5
        .4byte  .LASF14
        .byte   0x21
        .4byte  .LASF0
        .4byte  .LASF1
        .8byte  .Ltext0
        .8byte  .Letext0-.Ltext0
        .4byte  .Ldebug_line0
        .uleb128 0x1
        .byte   0x1
        .byte   0x8
        .4byte  .LASF2
        .uleb128 0x1
        .byte   0x2
        .byte   0x7
        .4byte  .LASF3
        .uleb128 0x1
        .byte   0x4
        .byte   0x7
        .4byte  .LASF4
        .uleb128 0x1
        .byte   0x8
        .byte   0x7
        .4byte  .LASF5
        .uleb128 0x1
        .byte   0x1
        .byte   0x6
        .4byte  .LASF6
        .uleb128 0x1
        .byte   0x2
        .byte   0x5
        .4byte  .LASF7
        .uleb128 0x6
        .byte   0x4
        .byte   0x5
        .string "int"
        .uleb128 0x2
        .4byte  .LASF9
        .byte   0x2
        .byte   0x2a
        .byte   0x16
        .4byte  0x3c
        .uleb128 0x1
        .byte   0x8
        .byte   0x5
        .4byte  .LASF8
        .uleb128 0x2
        .4byte  .LASF10
        .byte   0x2
        .byte   0x2d
        .byte   0x1b
        .4byte  0x43
        .uleb128 0x1
        .byte   0x1
        .byte   0x8
        .4byte  .LASF11
        .uleb128 0x2
        .4byte  .LASF12
        .byte   0x3
        .byte   0x1a
        .byte   0x14
        .4byte  0x5f
        .uleb128 0x7
        .4byte  0x85
        .uleb128 0x2
        .4byte  .LASF13
        .byte   0x3
        .byte   0x1b
        .byte   0x14
        .4byte  0x72
        .uleb128 0x8
        .4byte  .LASF15
        .byte   0x1
        .byte   0x3
        .byte   0x6
        .4byte  .LASF16
        .8byte  .LFB0
        .8byte  .LFE0-.LFB0
        .uleb128 0x1
        .byte   0x9c
        .4byte  0xfe
        .uleb128 0x3
        .string "l_a"
        .byte   0x1d
        .4byte  0xfe
        .uleb128 0x2
        .byte   0x91
        .sleb128 -24
        .uleb128 0x3
        .string "l_b"
        .byte   0x2c
        .4byte  0x103
        .uleb128 0x2
        .byte   0x91
        .sleb128 -32
        .uleb128 0x9
        .8byte  .LBB2
        .8byte  .LBE2-.LBB2
        .uleb128 0xa
        .string "i"
        .byte   0x1
        .byte   0x5
        .byte   0xe
        .4byte  0x58
        .uleb128 0x2
        .byte   0x91
        .sleb128 -4
        .byte   0
        .byte   0
        .uleb128 0x4
        .4byte  0x91
        .uleb128 0x4
        .4byte  0x96
        .byte   0
        .section        .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
        .uleb128 0x1
        .uleb128 0x24
        .byte   0
        .uleb128 0xb
        .uleb128 0xb
        .uleb128 0x3e
        .uleb128 0xb
        .uleb128 0x3
        .uleb128 0xe
        .byte   0
        .byte   0
        .uleb128 0x2
        .uleb128 0x16
        .byte   0
        .uleb128 0x3
        .uleb128 0xe
        .uleb128 0x3a
        .uleb128 0xb
        .uleb128 0x3b
        .uleb128 0xb
        .uleb128 0x39
        .uleb128 0xb
        .uleb128 0x49
        .uleb128 0x13
        .byte   0
        .byte   0
        .uleb128 0x3
        .uleb128 0x5
        .byte   0
        .uleb128 0x3
        .uleb128 0x8
        .uleb128 0x3a
        .uleb128 0x21
        .sleb128 1
        .uleb128 0x3b
        .uleb128 0x21
        .sleb128 3
        .uleb128 0x39
        .uleb128 0xb
        .uleb128 0x49
        .uleb128 0x13
        .uleb128 0x2
        .uleb128 0x18
        .byte   0
        .byte   0
        .uleb128 0x4
        .uleb128 0xf
        .byte   0
        .uleb128 0xb
        .uleb128 0x21
        .sleb128 8
        .uleb128 0x49
        .uleb128 0x13
        .byte   0
        .byte   0
        .uleb128 0x5
        .uleb128 0x11
        .byte   0x1
        .uleb128 0x25
        .uleb128 0xe
        .uleb128 0x13
        .uleb128 0xb
        .uleb128 0x3
        .uleb128 0x1f
        .uleb128 0x1b
        .uleb128 0x1f
        .uleb128 0x11
        .uleb128 0x1
        .uleb128 0x12
        .uleb128 0x7
        .uleb128 0x10
        .uleb128 0x17
        .byte   0
        .byte   0
        .uleb128 0x6
        .uleb128 0x24
        .byte   0
        .uleb128 0xb
        .uleb128 0xb
        .uleb128 0x3e
        .uleb128 0xb
        .uleb128 0x3
        .uleb128 0x8
        .byte   0
        .byte   0
        .uleb128 0x7
        .uleb128 0x26
        .byte   0
        .uleb128 0x49
        .uleb128 0x13
        .byte   0
        .byte   0
        .uleb128 0x8
        .uleb128 0x2e
        .byte   0x1
        .uleb128 0x3f
        .uleb128 0x19
        .uleb128 0x3
        .uleb128 0xe
        .uleb128 0x3a
        .uleb128 0xb
        .uleb128 0x3b
        .uleb128 0xb
        .uleb128 0x39
        .uleb128 0xb
        .uleb128 0x6e
        .uleb128 0xe
        .uleb128 0x11
        .uleb128 0x1
        .uleb128 0x12
        .uleb128 0x7
        .uleb128 0x40
        .uleb128 0x18
        .uleb128 0x7a
        .uleb128 0x19
        .uleb128 0x1
        .uleb128 0x13
        .byte   0
        .byte   0
        .uleb128 0x9
        .uleb128 0xb
        .byte   0x1
        .uleb128 0x11
        .uleb128 0x1
        .uleb128 0x12
        .uleb128 0x7
        .byte   0
        .byte   0
        .uleb128 0xa
        .uleb128 0x34
        .byte   0
        .uleb128 0x3
        .uleb128 0x8
        .uleb128 0x3a
        .uleb128 0xb
        .uleb128 0x3b
        .uleb128 0xb
        .uleb128 0x39
        .uleb128 0xb
        .uleb128 0x49
        .uleb128 0x13
        .uleb128 0x2
        .uleb128 0x18
        .byte   0
        .byte   0
        .byte   0
        .section        .debug_aranges,"",@progbits
        .4byte  0x2c
        .2byte  0x2
        .4byte  .Ldebug_info0
        .byte   0x8
        .byte   0
        .2byte  0
        .2byte  0
        .8byte  .Ltext0
        .8byte  .Letext0-.Ltext0
        .8byte  0
        .8byte  0
        .section        .debug_line,"",@progbits
.Ldebug_line0:
        .section        .debug_str,"MS",@progbits,1
.LASF14:
        .string "GNU C++17 12.2.1 20221121 (Red Hat 12.2.1-4) -mlittle-endian -mabi=lp64 -g"
.LASF4:
        .string "unsigned int"
.LASF9:
        .string "__uint32_t"
.LASF5:
        .string "long unsigned int"
.LASF13:
        .string "uint64_t"
.LASF15:
        .string "copy_c"
.LASF2:
        .string "unsigned char"
.LASF11:
        .string "char"
.LASF12:
        .string "uint32_t"
.LASF8:
        .string "long int"
.LASF10:
        .string "__uint64_t"
.LASF3:
        .string "short unsigned int"
.LASF6:
        .string "signed char"
.LASF7:
        .string "short int"
.LASF16:
        .string "_Z6copy_cPKjPm"
        .section        .debug_line_str,"MS",@progbits,1
.LASF0:
        .string "copy.c"
.LASF1:
        .string "/home/lukas/HPC/Uebung5/5-3/Task_5-3"
        .ident  "GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
        .section        .note.GNU-stack,"",@progbits
