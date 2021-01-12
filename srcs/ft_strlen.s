default rel

global ft_strlen


SECTION .text   

ft_strlen:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-18H], rdi
        mov     rax, qword [rbp-18H]
        mov     qword [rbp-8H], rax
        jmp     L_002

L_001:  add     qword [rbp-8H], 1
L_002:  mov     rax, qword [rbp-8H]
        movzx   eax, byte [rax]
        test    al, al
        jnz     L_001
        mov     rax, qword [rbp-8H]
        sub     rax, qword [rbp-18H]
        pop     rbp
        ret



SECTION .data   