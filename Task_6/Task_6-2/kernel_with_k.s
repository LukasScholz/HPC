        .text
        .type gemm_asm_asimd_16_6_k, %function
        .global gemm_asm_asimd_16_6_k

        /*
         * Performs the matrix-multiplication C+=A*B
         * with the shapes (16x6) = (16xk) * (kx6).
         * The input-data is of type float.
         *
         * @param x0 pointer to A.
         * @param x1 pointer to B.
         * @param x2 pointer to C.
         * @param x3 value of k
         */ 

gemm_asm_asimd_16_6_k:
/*
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
*/

        // your matrix kernel goes here!
        ldr x8, [x3]

    l_k:
        // load B into registers
        ldp s23, s24, [x1]
		ldp s25, s26, [x1, #8]
		ldp s27, s28, [x1, #16]
        
        // perform fmla on C[0,X] += A[0,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8
		

        // perform fmla on C[1,X] += A[1,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[2,X] += A[2,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[3,X] += A[3,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[4,X] += A[4,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[5,X] += A[5,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[6,X] += A[6,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[7,X] += A[7,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[8,X] += A[8,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[9,X] += A[9,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[10,X] += A[10,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[11,X] += A[11,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[12,X] += A[12,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[13,X] += A[13,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[14,X] += A[14,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2], #8

        // perform fmla on C[15,X] += A[15,0] * B[0,X]
        ldr s22, [x0], #4
		ldp s21, s16, [x2], #8
		ldp s17, s18, [x2], #8
		ldp s19, s20, [x2], #-16
        
        fmla v21.2s, v22.2s, v23.2s
        fmla v16.2s, v22.2s, v24.2s
        fmla v17.2s, v22.2s, v25.2s
        fmla v18.2s, v22.2s, v26.2s
        fmla v19.2s, v22.2s, v27.2s
        fmla v20.2s, v22.2s, v28.2s
        
		stp s21, s16, [x2], #8
		stp s17, s18, [x2], #8
		stp s19, s20, [x2]

    // Springe falls k > 0
        adds x8, x8, #-1
        b.eq l_k



        // restore
        /*
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
*/
        ret
        .size gemm_asm_asimd_16_6_k, (. - gemm_asm_asimd_16_6_k)
