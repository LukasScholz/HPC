		.text
		.type data_processing_3, %function
		.global data_processing_3
		
		data_processing_3:
			and w0, w0, w1
			// alternative to and w0, w0, w1
			// .word 0x0a010000
			ret
			.size data_processing_3, (. - data_processing_3)