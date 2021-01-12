





default rel

global ft_list_sort


SECTION .text   

ft_list_sort:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     qword [rbp-28H], rdi
        mov     qword [rbp-30H], rsi
        mov     rax, qword [rbp-28H]
        mov     rax, qword [rax]
        mov     qword [rbp-8H], rax
        jmp     L_005

L_001:  mov     rax, qword [rbp-28H]
        mov     rax, qword [rax]
        mov     qword [rbp-10H], rax
        jmp     L_004

L_002:  mov     rax, qword [rbp-10H]
        mov     rax, qword [rax+8H]
        mov     rdx, qword [rax]
        mov     rax, qword [rbp-10H]
        mov     rax, qword [rax]
        mov     rcx, qword [rbp-30H]
        mov     rsi, rdx
        mov     rdi, rax
        mov     eax, 0
        call    rcx
        test    eax, eax
        jle     L_003
        mov     rax, qword [rbp-10H]
        mov     rax, qword [rax]
        mov     qword [rbp-18H], rax
        mov     rax, qword [rbp-10H]
        mov     rax, qword [rax+8H]
        mov     rdx, qword [rax]
        mov     rax, qword [rbp-10H]
        mov     qword [rax], rdx
        mov     rax, qword [rbp-10H]
        mov     rax, qword [rax+8H]
        mov     rdx, qword [rbp-18H]
        mov     qword [rax], rdx
L_003:  mov     rax, qword [rbp-10H]
        mov     rax, qword [rax+8H]
        mov     qword [rbp-10H], rax
L_004:  mov     rax, qword [rbp-10H]
        mov     rax, qword [rax+8H]
        test    rax, rax
        jnz     L_002
        mov     rax, qword [rbp-8H]
        mov     rax, qword [rax+8H]
        mov     qword [rbp-8H], rax
L_005:  cmp     qword [rbp-8H], 0
        jne     L_001
        nop
        nop
        leave
        ret



SECTION .data   


SECTION .bss    


