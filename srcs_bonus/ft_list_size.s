





default rel

global ft_list_size


SECTION .text   

ft_list_size:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-28H], rdi
        mov     rax, qword [rbp-28H]
        mov     qword [rbp-8H], rax
        mov     qword [rbp-10H], 0
        jmp     L_002

L_001:  mov     rax, qword [rbp-8H]
        mov     rax, qword [rax+8H]
        mov     qword [rbp-18H], rax
        mov     rax, qword [rbp-18H]
        mov     qword [rbp-8H], rax
        add     qword [rbp-10H], 1
L_002:  cmp     qword [rbp-8H], 0
        jnz     L_001
        mov     rax, qword [rbp-10H]
        pop     rbp
        ret



SECTION .data   


SECTION .bss    


