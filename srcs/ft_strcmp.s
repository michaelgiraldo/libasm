





default rel

global ft_strcmp


SECTION .text   

ft_strcmp:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        jmp     L_002

L_001:  add     qword [rbp-8H], 1
        add     qword [rbp-10H], 1
L_002:  mov     rax, qword [rbp-8H]
        movzx   edx, byte [rax]
        mov     rax, qword [rbp-10H]
        movzx   eax, byte [rax]
        cmp     dl, al
        jnz     L_003
        mov     rax, qword [rbp-8H]
        movzx   eax, byte [rax]
        test    al, al
        jz      L_003
        mov     rax, qword [rbp-10H]
        movzx   eax, byte [rax]
        test    al, al
        jnz     L_001
L_003:  mov     rax, qword [rbp-8H]
        movzx   eax, byte [rax]
        movzx   edx, al
        mov     rax, qword [rbp-10H]
        movzx   eax, byte [rax]
        movzx   ecx, al
        mov     eax, edx
        sub     eax, ecx
        pop     rbp
        ret



SECTION .data   


SECTION .bss    


