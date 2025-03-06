# Complete Execution Process for file_in_stx.c on Win_x86_64 with Intel Syntax

## Preprocessing
```
gcc -E file_in_stx.c -o file_in_stx.i
```

## Assembly with Intel Syntax
```
gcc -S -masm=intel file_in_stx.c -o file_in_stx.s
```

## Create Object File
```
gcc -c file_in_stx.s -o file_in_stx.o
```

## Linking to Create Executable
```
gcc file_in_stx.o -o file_in_stx.exe
```

## View Syntax in Assembly
```
gcc -S -masm=intel file_in_stx.c -fverbose-asm -o file_in_stx.s
```

## Check Linked Dependencies
```
dumpbin /dependents file_in_stx.exe
```

## View Imports and Entry Points
```
dumpbin /imports file_in_stx.exe
```

## Examine Assembly with Source
```
objdump -M intel -S file_in_stx.exe
```

## Run the Executable
```
file_in_stx.exe
```