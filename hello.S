    // hello.S — AArch64 "hello world" (libc puts)
    // Used for Lab 1 toolchain + run verification.
    //
    // Build (x86_64 Ubuntu with cross-toolchain):
    //   aarch64-linux-gnu-gcc -g -O0 -Wall -Wextra hello.S -o hello
    //
    // Run (x86_64 Ubuntu under QEMU with ARM64 sysroot):
    //   qemu-aarch64 -L /usr/aarch64-linux-gnu ./hello
    //
    // Build (ARM64 Ubuntu native):
    //   gcc -g -O0 -Wall -Wextra hello.S -o hello
    //
    // Run (ARM64 Ubuntu native):
    //   ./hello

    .section .rodata
msg:
    .asciz "Hello from AArch64 assembly."

    .text
    .global main
    .type main, %function
    .extern puts

main:
    // Prologue: save frame pointer and link register; maintain 16-byte alignment
    stp x29, x30, [sp, -16]!
    mov x29, sp

    // x0 = address of string (first argument to puts)
    adr x0, msg
    bl  puts

    // return 0 (C int return value in w0)
    mov w0, 0

    // Epilogue: restore saved registers and return
    ldp x29, x30, [sp], 16
    ret

