





default rel

global ft_memcpy


SECTION .text   

ft_memcpy:
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

L_001:  mov     rax, qword [rbp-18H]
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-20H]
        mov     qword [rbp-10H], rax
        jmp     L_003

L_002:  mov     rdx, qword [rbp-10H]
        lea     rax, [rdx+1H]
        mov     qword [rbp-10H], rax
        mov     rax, qword [rbp-8H]
        lea     rcx, [rax+1H]
        mov     qword [rbp-8H], rcx
        movzx   edx, byte [rdx]
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


