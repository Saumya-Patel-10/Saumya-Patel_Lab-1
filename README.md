# Laboratory-1

## Overview
From this lab, I learnt how an AArch64 toolchain is setted up and how an ARM assembly program is built and executed on a system that is not natively ARM.

### 1. System Architecture Awareness
The lab emphasized checking the system architecture (`uname -m`). This important because different CPUs require different compilers and their repective execution environments, and since most of the  machines run x86_64, using ARM tools requires a cross-compiler.

### 2. Cross-Compilation
I learned that `aarch64-linux-gnu-gcc` allows ARM64 binaries to compile on  a non-ARM machine. The compiler does not run the program, it only produces an ARM-compatible executable. This is important for environments that deal in specialized hardware development.

### 3. Using QEMU for Execution
Since x86_64 cannot run ARM binaries directly, QEMU acts as a emulator. The instructions made it clear that QEMU “translates” ARM instructions so the binary can run on its  host system. This showed me how cross-architecture testing are  done without real hardware.

### 4. Inspecting Binary Formats
Using the `file` command made it easy to confirm whether the compiler produced an actual ARM64 ELF executable. This reinforced why verification is necessary when working across architectures.

### 5. Structure of an ARM Assembly Program
Compiling the provided `hello.S` introduced the basic idea of writing low-level code that interacts directly with system calls. Even though the program was simple, it showed how assembly works in the context of the ARM64 architecture.

## Summary
Overall, this lab was meant for me to understand  how toolchains, loaders, and emulators work together to build and run programs for a different CPU architecture.
