        .text
        .align 4
        .type copy_asm, %function
        .global copy_asm

        /*
         * @param x0 pointer to l_a.
         * @param x1 pointer to l_b.
         */

copy_asm:
        /*
        // store
        stp x19, x20, [sp, #-16]!
        stp x21, x22, [sp, #-16]!
        stp x23, x24, [sp, #-16]!
        stp x25, x26, [sp, #-16]!
        stp x27, x28, [sp, #-16]!
        stp x29, x30, [sp, #-16]!
        // end store
        */
        
        ldr w8, [x0, #0]
        ldr w9, [x0, #4]
        ldr w10, [x0, #8]
        ldr w11, [x0, #12]
        ldr w12, [x0, #16]
        ldr w13, [x0, #20]
        ldr w14, [x0, #24]
        str x8, [x1, #0]
        str x9, [x1, #8]
        str x10, [x1, #16]
        str x11, [x1, #24]
        str x12, [x1, #32]
        str x13, [x1, #40]
        str x14, [x1, #48]


        /*
        // restore
        ldp x29, x30, [sp], #16
        ldp x27, x28, [sp], #16
        ldp x25, x26, [sp], #16
        ldp x23, x24, [sp], #16
        ldp x21, x22, [sp], #16
        ldp x19, x20, [sp], #16
        // end restore
        */
        ret
        .size copy_asm, (. - copy_asm)
