





default rel

global ft_memalloc

extern ft_bzero
extern malloc
extern _GLOBAL_OFFSET_TABLE_


SECTION .text   

ft_memalloc:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     qword [rbp-18H], rdi
        mov     rax, qword [rbp-18H]
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8H], rax
        cmp     qword [rbp-8H], 0
        jnz     L_001
        mov     eax, 0
        jmp     L_002

L_001:  mov     rdx, qword [rbp-18H]
        mov     rax, qword [rbp-8H]
        mov     rsi, rdx
        mov     rdi, rax
        call    ft_bzero
        mov     rax, qword [rbp-8H]
L_002:  leave
        ret



SECTION .data   


SECTION .bss    


