## Task 1.
line 6 loads the contents of position 5 in the array (by increasing the reference pointer) (here value 400) into register x1.
line 7 copies the array address 5 into x2 and the adress after it into x3 (because the array contains unsigned int64 values)
line 8 skips loads the values from x0+16 without increasing x0. Therefore we load the array values at position 5 and 6 into x4 and x5.
After that we return the unmodified x0.

-- BEFORE RET --

x1             0x190               400  
x2             0x190               400  
x3             0x1f4               500  
x4             0x258               600  
x5             0x2bc               700  



## Task 2.

x1             0x3e8               1000  
x2             0x3e8               1000  
x3             0x0                 0  
x4             0x78                120  
x5             0x0                 0  

-- LINE 6 --

x1             0x190               400  
x2             0x3e8               1000  
x3             0x0                 0  
x4             0x78                120  
x5             0x0                 0  

-- LINE 7 --

x1             0x190               400  
x2             0x190               400  
x3             0x1f4               500  
x4             0x78                120  
x5             0x0                 0  

-- LINE 8 --

x1             0x190               400  
x2             0x190               400  
x3             0x1f4               500  
x4             0x258               600  
x5             0x2bc               700  

-- LINE 10 --

## Task 3. Outputs from Valgrind
### for not ok #1  
==577986== Invalid read of size 8  
==577986==    at 0x400788: main (CppCode.cpp:31)   
==577986==  Address 0x4dcace8 is 24 bytes after a block of size 80 in arena "client"  
==577986==
==577986== Invalid read of size 8  
==577986==    at 0x4007B4: load_asm (assembly.asm:13)  
==577986==  Address 0x4dcace8 is 24 bytes after a block of size 80 in arena "client"  
==577986==
==577986== Invalid read of size 8  
==577986==    at 0x4007B8: load_asm (assembly.asm:15)  
==577986==  Address 0x4dcacf8 is 24 bytes before an unallocated block of size 4,121,296 in arena "client"  

### for not ok #2
==578007== Invalid read of size 8  
==578007==    at 0x4007B4: load_asm (assembly.asm:13)  
==578007==  Address 0x4dcacd0 is 0 bytes after a block of size 80 alloc'd  
==578007==    at 0x4886DF4: operator new[](unsigned long) (vg_replace_malloc.c:652)  
==578007==    by 0x400727: main (CppCode.cpp:15)  
==578007==
==578007== Invalid read of size 8  
==578007==    at 0x4007B8: load_asm (assembly.asm:15)  
==578007==  Address 0x4dcacd8 is 8 bytes after a block of size 80 alloc'd  
==578007==    at 0x4886DF4: operator new[](unsigned long) (vg_replace_malloc.c:652)  
==578007==    by 0x400727: main (CppCode.cpp:15)  

### for not ok #3
==578031== Invalid read of size 8  
==578031==    at 0x4007B8: load_asm (assembly.asm:15)  
==578031==  Address 0x4dcacd0 is 0 bytes after a block of size 80 alloc'd  
==578031==    at 0x4886DF4: operator new[](unsigned long) (vg_replace_malloc.c:652)  
==578031==    by 0x400727: main (CppCode.cpp:15)  
