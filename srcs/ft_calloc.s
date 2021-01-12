





default rel

global ft_calloc

extern ft_memalloc
extern _GLOBAL_OFFSET_TABLE_


SECTION .text   

ft_calloc:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-8H]
        imul    rax, qword [rbp-10H]
        mov     rdi, rax
        call    ft_memalloc
        leave
        ret



SECTION .data   


SECTION .bss    


