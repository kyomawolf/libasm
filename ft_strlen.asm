; This is a commment
; what are SECTIONS really?

SECTION .data
msg     db      'Hello World, this is my first strlen in asm!', 0Ah ; assign variable with message
                                ; 0Ah is line feed (\n)
                                ; dont use RBX

SECTION .text
global ft_strlen

ft_strlen:
    ; mov rax, msg
    mov rdx, rax
    jmp counting_char

counting_char:
    cmp byte[rdx], 0
    jz  finished
    inc rdx
    jmp counting_char ; loop
finished:
    sub rax, rdx
    neg rax
    ret