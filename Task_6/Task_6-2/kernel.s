        .text
        .type gemm_asm_asimd_16_6_1, %function
        .global gemm_asm_asimd_16_6_1

        /*
         * Performs the matrix-multiplication C+=A*B
         * with the shapes (16x6) = (16x1) * (1x6).
         * The input-data is of type float.
         *
         * @param x0 pointer to A.
         * @param x1 pointer to B.
         * @param x2 pointer to C.
         */ 

gemm_asm_asimd_16_6_1:

        // store
        stp x19, x20, [sp, #-16]!
        stp x21, x22, [sp, #-16]!
        stp x23, x24, [sp, #-16]!
        stp x25, x26, [sp, #-16]!
        stp x27, x28, [sp, #-16]!
        stp x29, x30, [sp, #-16]!

        stp  d8,  d9, [sp, #-16]!
        stp d10, d11, [sp, #-16]!
        stp d12, d13, [sp, #-16]!
        stp d14, d15, [sp, #-16]!


        // your matrix kernel goes here!

        // load B into registers
        ldr s9, [x1, #0]
        ldr s11, [x1, #4]
        ldr s12, [x1, #8]
        ldr s13, [x1, #12]
        ldr s14, [x1, #16]
        ldr s15, [x1, #20]
        
        // perform fmla on C[0,X] += A[0,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[1,X] += A[1,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[2,X] += A[2,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[3,X] += A[3,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[4,X] += A[4,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[5,X] += A[5,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[6,X] += A[6,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[7,X] += A[7,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[8,X] += A[8,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[9,X] += A[9,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[10,X] += A[10,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[11,X] += A[11,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[12,X] += A[12,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[13,X] += A[13,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[14,X] += A[14,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4

        // perform fmla on C[15,X] += A[15,0] * B[0,X]
        ldr s8, [x0], #4
        ldr s10, [x2]
        fmla s10, s8, s9
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s11
        str s10, [x2], #4

        ldr s10, [x2]
        fmla s10, s8, s12
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s13
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s14
        str s10, [x2], #4
        
        ldr s10, [x2]
        fmla s10, s8, s15
        str s10, [x2], #4




        // restore
        ldp d14, d15, [sp], #16
        ldp d12, d13, [sp], #16
        ldp d10, d11, [sp], #16
        ldp  d8,  d9, [sp], #16

        ldp x29, x30, [sp], #16
        ldp x27, x28, [sp], #16
        ldp x25, x26, [sp], #16
        ldp x23, x24, [sp], #16
        ldp x21, x22, [sp], #16
        ldp x19, x20, [sp], #16

        ret
        .size gemm_asm_asimd_16_6_1, (. - gemm_asm_asimd_16_6_1)