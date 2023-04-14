        .text
        .type latency_src_asimd_fmla_sp, %function
        .global latency_src_asimd_fmla_sp
        /*
         * Microbenchmark measuring achievable performance using fmla instructions.
         * Repeats 30 independent SP ASIMD-FMAs.
         * @param x0 number of repetitions.
         * @return number of flops per iteration.
         */ 
latency_src_asimd_fmla_sp:
        // PCS: save required data in SIMD registers to stack
        stp  d8,  d9, [sp, #-16]!

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
		
        // perform fmla single precision
loop_repeat:
        sub x0, x0, #1
        fmla v0.4s, v0.4s, v1.4s
		fmla v0.4s, v0.4s, v1.4s
		fmla v0.4s, v0.4s, v1.4s
		fmla v0.4s, v0.4s, v1.4s

		fmla v0.4s, v0.4s, v1.4s
		fmla v0.4s, v0.4s, v1.4s
		fmla v0.4s, v0.4s, v1.4s
		fmla v0.4s, v0.4s, v1.4s
        cbnz x0, loop_repeat    
        

        // PCS: restore SIMD registers
        ldp  d8,  d9, [sp], #16


        // write number of flops to return register
        mov x0, 30*8

        ret
        .size latency_src_asimd_fmla_sp, (. - latency_src_asimd_fmla_sp)
