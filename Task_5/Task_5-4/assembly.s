	.text
        .type gemm_asm_gp, %function
        .global gemm_asm_gp
        /*
         * Performs the matrix-multiplication C+=A*B
         * with the shapes (4x2) = (4x2) * (2x2).
         * The input-data is of type uint32_t.
         *
         * @param x0 pointer to A.
         * @param x1 pointer to B.
         * @param x2 pointer to C.
         */ 

gemm_asm_gp:
        // store
        stp x19, x20, [sp, #-16]!
        stp x21, x22, [sp, #-16]!
        stp x23, x24, [sp, #-16]!
        stp x25, x26, [sp, #-16]!
        stp x27, x28, [sp, #-16]!
        stp x29, x30, [sp, #-16]!

        // your matrix-kernel goes here!

        // perform madd on C[0,0] += A[0,0] * B[0,0]
        ldr w8, [x0, #0] // load value from A
        ldr w9, [x1, #0] // load value from B
        ldr w10, [x2, #0] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #0]

        // perform madd on C[0,0] += A[0,1] * B[1,0]
        ldr w8, [x0, #4] // load value from A
        ldr w9, [x1, #8] // load value from B
        ldr w10, [x2, #0] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #0]

        // completing C[0,0]

        // perform madd on C[0,1] += A[0,0] * B[0,1]
        ldr w8, [x0, #0] // load value from A
        ldr w9, [x1, #4] // load value from B
        ldr w10, [x2, #4] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #4]

        // perform madd on C[0,1] += A[0,1] * B[1,1]
        ldr w8, [x0, #4] // load value from A
        ldr w9, [x1, #12] // load value from B
        ldr w10, [x2, #4] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #4]

        // completing C[0,1]

        // perform madd on C[1,0] += A[1,0] * B[0,0]
        ldr w8, [x0, #8] // load value from A
        ldr w9, [x1, #0] // load value from B
        ldr w10, [x2, #8] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #8]

        // perform madd on C[1,0] += A[1,1] * B[1,0]
        ldr w8, [x0, #12] // load value from A
        ldr w9, [x1, #8] // load value from B
        ldr w10, [x2, #8] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #8]

        // completing C[1,0]

        // perform madd on C[1,1] += A[1,0] * B[0,1]
        ldr w8, [x0, #8] // load value from A
        ldr w9, [x1, #4] // load value from B
        ldr w10, [x2, #12] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #12]

        // perform madd on C[1,1] += A[1,1] * B[1,1]
        ldr w8, [x0, #12] // load value from A
        ldr w9, [x1, #12] // load value from B
        ldr w10, [x2, #12] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #12]

        // completing C[1,1]

        // perform madd on C[2,0] += A[2,0] * B[0,0]
        ldr w8, [x0, #16] // load value from A
        ldr w9, [x1, #0] // load value from B
        ldr w10, [x2, #16] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #16]

        // perform madd on C[2,0] += A[2,1] * B[1,0]
        ldr w8, [x0, #20] // load value from A
        ldr w9, [x1, #8] // load value from B
        ldr w10, [x2, #16] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #16]

        // completing C[2,0]

        // perform madd on C[2,1] += A[2,0] * B[0,1]
        ldr w8, [x0, #16] // load value from A
        ldr w9, [x1, #4] // load value from B
        ldr w10, [x2, #20] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #20]

        // perform madd on C[2,1] += A[2,1] * B[1,1]
        ldr w8, [x0, #20] // load value from A
        ldr w9, [x1, #12] // load value from B
        ldr w10, [x2, #20] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #20]

        // completing C[2,1]

        // perform madd on C[3,0] += A[3,0] * B[0,0]
        ldr w8, [x0, #24] // load value from A
        ldr w9, [x1, #0] // load value from B
        ldr w10, [x2, #24] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #24]

        // perform madd on C[3,0] += A[3,1] * B[1,0]
        ldr w8, [x0, #28] // load value from A
        ldr w9, [x1, #8] // load value from B
        ldr w10, [x2, #24] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #24]

        // completing C[3,0]

        // perform madd on C[3,1] += A[3,0] * B[0,1]
        ldr w8, [x0, #24] // load value from A
        ldr w9, [x1, #4] // load value from B
        ldr w10, [x2, #28] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #28]

        // perform madd on C[3,1] += A[3,1] * B[1,1]
        ldr w8, [x0, #28] // load value from A
        ldr w9, [x1, #12] // load value from B
        ldr w10, [x2, #28] // load value from C
        madd w11, w8, w9, w10
        str w11, [x2, #28]

        // completing C[3,1]

        // completes matrix multiplication

        // restore
        ldp x29, x30, [sp], #16
        ldp x27, x28, [sp], #16
        ldp x25, x26, [sp], #16
        ldp x23, x24, [sp], #16
        ldp x21, x22, [sp], #16
        ldp x19, x20, [sp], #16

        ret
        .size gemm_asm_gp, (. - gemm_asm_gp)
        