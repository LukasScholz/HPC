        .text
        .type peak_asimd_fmla_sp, %function
        .global peak_asimd_fmla_sp
        /*
         * Microbenchmark measuring achievable performance using fmla instructions.
         * Repeats 30 independent SP ASIMD-FMAs.
         * @param x0 number of repetitions.
         * @return number of flops per iteration.
         */ 
peak_asimd_fmla_sp:
        // PCS: save required data in SIMD registers to stack
        stp  d8,  d9, [sp, #-16]!
        stp d10, d11, [sp, #-16]!
        stp d12, d13, [sp, #-16]!
        stp d14, d15, [sp, #-16]!

        // set SIMD registers to zero
        eor v0.16b, v0.16b, v0.16b
        eor v1.16b, v1.16b, v1.16b
        eor v2.16b, v2.16b, v2.16b
        eor v3.16b, v3.16b, v3.16b

        eor v4.16b, v4.16b, v4.16b
        eor v5.16b, v5.16b, v5.16b
        eor v6.16b, v6.16b, v6.16b
        eor v7.16b, v7.16b, v7.16b

        eor v8.16b, v8.16b, v8.16b
        eor v9.16b, v9.16b, v9.16b
        eor v10.16b, v10.16b, v10.16b
        eor v11.16b, v11.16b, v11.16b

        eor v12.16b, v12.16b, v12.16b
        eor v13.16b, v13.16b, v13.16b
        eor v14.16b, v14.16b, v14.16b
        eor v15.16b, v15.16b, v15.16b

        eor v16.16b, v16.16b, v16.16b
        eor v17.16b, v17.16b, v17.16b
        eor v18.16b, v18.16b, v18.16b
        eor v19.16b, v19.16b, v19.16b

        eor v20.16b, v20.16b, v20.16b
        eor v21.16b, v21.16b, v21.16b
        eor v22.16b, v22.16b, v22.16b
        eor v23.16b, v23.16b, v23.16b

        eor v24.16b, v24.16b, v24.16b
        eor v25.16b, v25.16b, v25.16b
        eor v26.16b, v26.16b, v26.16b
        eor v27.16b, v27.16b, v27.16b

        eor v28.16b, v28.16b, v28.16b
        eor v29.16b, v29.16b, v29.16b
        eor v30.16b, v30.16b, v30.16b
        eor v31.16b, v31.16b, v31.16b

        // perform fmla single precision
loop_repeat:
        sub x0, x0, #1
        fmla v0.4s, v30.4s, v31.4s
        fmla v1.4s, v30.4s, v31.4s
        fmla v2.4s, v30.4s, v31.4s
        fmla v3.4s, v30.4s, v31.4s

        fmla v4.4s, v30.4s, v31.4s
        fmla v5.4s, v30.4s, v31.4s
        fmla v6.4s, v30.4s, v31.4s
        fmla v7.4s, v30.4s, v31.4s

        fmla v8.4s, v30.4s, v31.4s
        fmla v9.4s, v30.4s, v31.4s
        fmla v10.4s, v30.4s, v31.4s
        fmla v11.4s, v30.4s, v31.4s

        fmla v12.4s, v30.4s, v31.4s
        fmla v13.4s, v30.4s, v31.4s
        fmla v14.4s, v30.4s, v31.4s
        fmla v15.4s, v30.4s, v31.4s

        fmla v16.4s, v30.4s, v31.4s
        fmla v17.4s, v30.4s, v31.4s
        fmla v18.4s, v30.4s, v31.4s
        fmla v19.4s, v30.4s, v31.4s

        fmla v20.4s, v30.4s, v31.4s
        fmla v21.4s, v30.4s, v31.4s
        fmla v22.4s, v30.4s, v31.4s
        fmla v23.4s, v30.4s, v31.4s
        
        fmla v24.4s, v30.4s, v31.4s
        fmla v25.4s, v30.4s, v31.4s
        fmla v26.4s, v30.4s, v31.4s
        fmla v27.4s, v30.4s, v31.4s

        fmla v28.4s, v30.4s, v31.4s
        fmla v29.4s, v30.4s, v31.4s
        cbnz x0, loop_repeat
        
        // perform fmla double precision
loop_repeat:
        sub x0, x0, #1
        fmla v0.2d, v30.2d, v31.2d
	fmla v1.2d, v30.2d, v31.2d
	fmla v2.2d, v30.2d, v31.2d
	fmla v3.2d, v30.2d, v31.2d
	
	fmla v4.2d, v30.2d, v31.2d
	fmla v5.2d, v30.2d, v31.2d
	fmla v6.2d, v30.2d, v31.2d
	fmla v7.2d, v30.2d, v31.2d
	
	fmla v8.2d, v30.2d, v31.2d
	fmla v9.2d, v30.2d, v31.2d
	fmla v10.2d, v30.2d, v31.2d
	fmla v11.2d, v30.2d, v31.2d

	fmla v12.2d, v30.2d, v31.2d
	fmla v13.2d, v30.2d, v31.2d
	fmla v14.2d, v30.2d, v31.2d
	fmla v15.2d, v30.2d, v31.2d

	fmla v16.2d, v30.2d, v31.2d
	fmla v17.2d, v30.2d, v31.2d
	fmla v18.2d, v30.2d, v31.2d
	fmla v19.2d, v30.2d, v31.2d

	fmla v20.2d, v30.2d, v31.2d
	fmla v21.2d, v30.2d, v31.2d
	fmla v22.2d, v30.2d, v31.2d
	fmla v23.2d, v30.2d, v31.2d

	fmla v24.2d, v30.2d, v31.2d
	fmla v25.2d, v30.2d, v31.2d
	fmla v26.2d, v30.2d, v31.2d
	fmla v27.2d, v30.2d, v31.2d

	fmla v28.2d, v30.2d, v31.2d
	fmla v29.2d, v30.2d, v31.2d
        cbnz x0, loop_repeat        
        
       // perform fmadd double precision
loop_repeat:
        sub x0, x0, #1
        fmadd d0, d30, d31, d0
	fmadd d1, d30, d31, d1
	fmadd d2, d30, d31, d2
	fmadd d3, d30, d31, d3

	fmadd d4, d30, d31, d4
	fmadd d5, d30, d31, d5
	fmadd d6, d30, d31, d6
	fmadd d7, d30, d31, d7

	fmadd d8, d30, d31, d8
	fmadd d9, d30, d31, d9
	fmadd d10, d30, d31, d10
	fmadd d11, d30, d31, d11

	fmadd d12, d30, d31, d12
	fmadd d13, d30, d31, d13
	fmadd d14, d30, d31, d14
	fmadd d15, d30, d31, d15

	fmadd d16, d30, d31, d16
	fmadd d17, d30, d31, d17
	fmadd d18, d30, d31, d18
	fmadd d19, d30, d31, d19

	fmadd d20, d30, d31, d20
	fmadd d21, d30, d31, d21
	fmadd d22, d30, d31, d22
	fmadd d23, d30, d31, d23

	fmadd d24, d30, d31, d24
	fmadd d25, d30, d31, d25
	fmadd d26, d30, d31, d26
	fmadd d27, d30, d31, d27

	fmadd d28, d30, d31, d28
	fmadd d29, d30, d31, d29
        cbnz x0, loop_repeat     
        
       // perform fmadd single precision
loop_repeat:
        sub x0, x0, #1
        fmadd s0, s30, s31, s0
	fmadd s1, s30, s31, s1
	fmadd s2, s30, s31, s2
	fmadd s3, s30, s31, s3

	fmadd s4, s30, s31, s4
	fmadd s5, s30, s31, s5
	fmadd s6, s30, s31, s6
	fmadd s7, s30, s31, s7

	fmadd s8, s30, s31, s8
	fmadd s9, s30, s31, s9
	fmadd s10, s30, s31, s10
	fmadd s11, s30, s31, s11

	fmadd s12, s30, s31, s12
	fmadd s13, s30, s31, s13
	fmadd s14, s30, s31, s14
	fmadd s15, s30, s31, s15

	fmadd s16, s30, s31, s16
	fmadd s17, s30, s31, s17
	fmadd s18, s30, s31, s18
	fmadd s19, s30, s31, s19

	fmadd s20, s30, s31, s20
	fmadd s21, s30, s31, s21
	fmadd s22, s30, s31, s22
	fmadd s23, s30, s31, s23

	fmadd s24, s30, s31, s24
	fmadd s25, s30, s31, s25
	fmadd s26, s30, s31, s26
	fmadd s27, s30, s31, s27

	fmadd s28, s30, s31, s28
	fmadd s29, s30, s31, s29
        cbnz x0, loop_repeat     
        

        // PCS: restore SIMD registers
        ldp d14, d15, [sp], #16
        ldp d12, d13, [sp], #16
        ldp d10, d11, [sp], #16
        ldp  d8,  d9, [sp], #16


        // write number of flops to return register (*4 because of 4 loops)
        mov x0, 30*8*4

        ret
        .size peak_asimd_fmla_sp, (. - peak_asimd_fmla_sp)
