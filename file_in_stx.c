#include <stdio.h>

int main() {
    __asm__ (
        ".intel_syntax noprefix\n\t"
        "push   rbp\n\t"
        "mov    rbp, rsp\n\t"
        "sub    rsp, 32\n\t"
        "lea    rcx, [rip + LC0]\n\t"
        "call   printf\n\t"
        "mov    eax, 0\n\t"
        "leave\n\t"
        "ret\n\t"
        ".section .rdata\n\t"
        "LC0:\n\t"
        ".string \"hello\"\n\t"
    );
}
