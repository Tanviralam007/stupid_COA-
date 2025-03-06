**1. Preprocessing (Expand Includes and Macros):**

```
gcc -E file.c -o file.i
```

* `-E`: Preprocessing only; do not compile, assemble, or link.
* `file.c`: The source C file.
* `-o file.i`: Output the preprocessed code to `file.i`.

**2. Compilation to Assembly (MinGW Syntax):**

```
gcc -S file.i -o file.s
```

* `-S`: Compile to assembly language; do not assemble or link.
* `file.i`: The preprocessed file.
* `-o file.s`: Output the assembly code to `file.s`.

**Note: To see Intel syntax instead, use:**

```
gcc -S -masm=intel file.c -o file.s
```

**3. Assembly to Object File:**

```
gcc -c file.s -o file.o
```

* `-c`: Compile and assemble, but do not link.
* `file.s`: The assembly file.
* `-o file.o`: Output the object file to `file.o`.

**4. Linking to Create Executable:**

```
gcc file.o -o file.exe
```

* `file.o`: The object file.
* `-o file.exe`: Output the executable to `file.exe`.

**5. Running the Executable:**

```
file.exe
```