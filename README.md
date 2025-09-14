This repository contains assembly programs, I will keep adding more with time. Essential info mentioned below.
1. For x64 Windows OS.
2. Used windows function calls instead of C language functions.
3. Used GNU assembler for assembling the program, already comes with installation of GCC.
4. Last, the code will be saved with .s instead of .asm you can search why :?

Example using first code(01helloWorld.s)
Easy way: If you love your life :)
1. Open code directory in powershell and write following command.
2. gcc 01helloWorld.s -o 01helloWorld
3. type ".\01helloWorld.exe" to see output.

Hard way: In this you will generate object file and link the necessary libraries to get an executable file.
First copy the location of folder in which kernel32 present from your minGw64 folder.
1. as 01helloWorld -o 01HelloWorld.o
2. ld 01helloWorld -L"--location of folder--" -lkernel32  -o 01HelloWorld.exe
3. Follow step 3 of "If you love your life" method.
