section .data
    msg db "Hello, world!", 0xA  ; message with newline
    len equ $ - msg              ; length of message

section .text
    global _start

_start:
    ; write syscall
    mov rax, 1      ; syscall number for write
    mov rdi, 1      ; file descriptor (stdout)
    mov rsi, msg    ; address of message
    mov rdx, len    ; number of bytes
    syscall

    ; exit syscall
    mov rax, 60     ; syscall number for exit
    xor rdi, rdi    ; exit code 0
    syscall
