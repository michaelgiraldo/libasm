





default rel

global ft_strnew

extern ft_calloc
extern _GLOBAL_OFFSET_TABLE_


SECTION .text   

ft_strnew:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        add     rax, 1
        mov     esi, 1
        mov     rdi, rax
        call    ft_calloc
        leave
        ret



SECTION .data   


SECTION .bss    


