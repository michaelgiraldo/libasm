





default rel

global ft_memcpy_rev


SECTION .text   

ft_memcpy_rev:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-18H], rdi
        mov     qword [rbp-20H], rsi
        mov     qword [rbp-28H], rdx
        cmp     qword [rbp-18H], 0
        jnz     L_001
        cmp     qword [rbp-20H], 0
        jnz     L_001
        mov     eax, 0
        jmp     L_004

L_001:  mov     rdx, qword [rbp-18H]
        mov     rax, qword [rbp-28H]
        add     rax, rdx
        mov     qword [rbp-8H], rax
        mov     rdx, qword [rbp-20H]
        mov     rax, qword [rbp-28H]
        add     rax, rdx
        mov     qword [rbp-10H], rax
        jmp     L_003

L_002:  sub     qword [rbp-10H], 1
        sub     qword [rbp-8H], 1
        mov     rax, qword [rbp-10H]
        movzx   edx, byte [rax]
        mov     rax, qword [rbp-8H]
        mov     byte [rax], dl
L_003:  mov     rax, qword [rbp-28H]
        lea     rdx, [rax-1H]
        mov     qword [rbp-28H], rdx
        test    rax, rax
        jnz     L_002
        mov     rax, qword [rbp-18H]
L_004:  pop     rbp
        ret



SECTION .data   


SECTION .bss    


