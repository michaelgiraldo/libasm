





default rel

global ft_memmove

extern ft_memcpy
extern ft_memcpy_rev
extern _GLOBAL_OFFSET_TABLE_


SECTION .text   

ft_memmove:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     qword [rbp-18H], rdx
        mov     rax, qword [rbp-8H]
        cmp     rax, qword [rbp-10H]
        jbe     L_001
        mov     rdx, qword [rbp-18H]
        mov     rcx, qword [rbp-10H]
        mov     rax, qword [rbp-8H]
        mov     rsi, rcx
        mov     rdi, rax
        call    ft_memcpy_rev
        jmp     L_002

L_001:  mov     rdx, qword [rbp-18H]
        mov     rcx, qword [rbp-10H]
        mov     rax, qword [rbp-8H]
        mov     rsi, rcx
        mov     rdi, rax
        call    ft_memcpy
L_002:  mov     rax, qword [rbp-8H]
        leave
        ret



SECTION .data   


SECTION .bss    


