
a.out:     file format elf64-littleaarch64

SYMBOL TABLE:
0000000000000000 l    d  .text	0000000000000000 .text
0000000000000000 l    d  .data	0000000000000000 .data
0000000000000000 l    d  .bss	0000000000000000 .bss
0000000000000000 l    d  .debug_info	0000000000000000 .debug_info
0000000000000000 l    d  .debug_abbrev	0000000000000000 .debug_abbrev
0000000000000000 l    d  .debug_line	0000000000000000 .debug_line
0000000000000000 l    d  .debug_str	0000000000000000 .debug_str
0000000000000000 l    d  .debug_aranges	0000000000000000 .debug_aranges
0000000000000000 g     F .text	0000000000000008 data_processing_3



Disassembly of section .text:

0000000000000000 <data_processing_3>:
		.text
		.type data_processing_3, %function
		.global data_processing_3
		
		data_processing_3:
			and w0, w0, w1
   0:	0a010000 	and	w0, w0, w1
			
			ret
   4:	d65f03c0 	ret
