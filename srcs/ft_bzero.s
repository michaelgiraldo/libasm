





default rel

global ft_bzero

extern ft_memset
extern _GLOBAL_OFFSET_TABLE_


SECTION .text   

ft_bzero:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rdx, qword [rbp-10H]
        mov     rax, qword [rbp-8H]
        mov     esi, 0
        mov     rdi, rax
        call    ft_memset
        nop
        leave
        ret



SECTION .data   


SECTION .bss    


