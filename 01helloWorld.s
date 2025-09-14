.text
.globl main
.def main; .scl 2; .type 32; .endef

main:
    subq    $40, %rsp
    
    movl    $-11, %ecx
    call    GetStdHandle
    movq    %rax, %rcx

    leaq    message(%rip), %rdx
    movl    message_len(%rip), %r8d

    leaq    8(%rsp), %r9
    movq    $0, 16(%rsp)

    call    WriteFile

    movl    $0, %ecx
    call    ExitProcess

.data
message:
    .string "Hello, World!\n"
message_len:
    .long 14

# Must leave on extra line at end of program
