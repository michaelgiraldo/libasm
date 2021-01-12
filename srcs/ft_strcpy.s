default rel

global ft_strcpy

extern ft_memmove
extern ft_strlen
extern _GLOBAL_OFFSET_TABLE_


SECTION .text   

ft_strcpy:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        mov     rdi, rax
        call    ft_strlen
        lea     rdx, [rax+1H]
        mov     rcx, qword [rbp-10H]
        mov     rax, qword [rbp-8H]
        mov     rsi, rcx
        mov     rdi, rax
        call    ft_memmove
        leave
        ret



SECTION .data   


SECTION .bss 