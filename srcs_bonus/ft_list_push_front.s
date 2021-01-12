





default rel

global ft_list_push_front

extern ft_create_elem
extern _GLOBAL_OFFSET_TABLE_


SECTION .text   

ft_list_push_front:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     qword [rbp-18H], rdi
        mov     qword [rbp-20H], rsi
        mov     rax, qword [rbp-18H]
        mov     rax, qword [rax]
        test    rax, rax
        jz      L_001
        mov     rax, qword [rbp-20H]
        mov     rdi, rax
        call    ft_create_elem
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-18H]
        mov     rdx, qword [rax]
        mov     rax, qword [rbp-8H]
        mov     qword [rax+8H], rdx
        mov     rax, qword [rbp-18H]
        mov     rdx, qword [rbp-8H]
        mov     qword [rax], rdx
        jmp     L_002

L_001:  mov     rax, qword [rbp-20H]
        mov     rdi, rax
        call    ft_create_elem
        mov     rdx, qword [rbp-18H]
        mov     qword [rdx], rax
L_002:  nop
        leave
        ret



SECTION .data   


SECTION .bss    


