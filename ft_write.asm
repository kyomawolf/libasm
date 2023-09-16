SECTION .data
msg     db  "some string", 0Ah

SECTION .text
global ft_write
; global _start

; _start:
;     mov rax, msg

; first args are rdi, rsi rdi but doesnt work?? not linux but microsoft convention?
ft_write: ; has three args, 1 for the file descriptor, 2 for the string data and 3rd for the length to write
   ; mov rbx, rax
    mov rcx, rdi ;TODO ???
    ; mov rbx, rdi
    ; mov rcx, rax
    ; pop rax
    ; mov rdx, rax
    ;mov rdx, rax
    jmp write_std_out

write_std_out:
    mov rdx, 12; put strlen here
    ; mov rcx, rax
    mov rbx, 1 ; defines the filedescriptor, 1st arg
    mov rax, 4
    int 80h
;     jmp _exit
    
; _exit:
;     mov ebx, 0
;     mov eax, 1
;     int 80h