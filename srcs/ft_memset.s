





default rel

global ft_memset


SECTION .text   

ft_memset:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-28H], rdi
        mov     dword [rbp-2CH], esi
        mov     qword [rbp-38H], rdx
        mov     rax, qword [rbp-28H]
        mov     qword [rbp-8H], rax
        mov     rdx, qword [rbp-8H]
        mov     rax, qword [rbp-38H]
        add     rax, rdx
        mov     qword [rbp-10H], rax
        mov     eax, dword [rbp-2CH]
        mov     byte [rbp-11H], al
        jmp     L_002

L_001:  mov     rax, qword [rbp-8H]
        lea     rdx, [rax+1H]
        mov     qword [rbp-8H], rdx
        movzx   edx, byte [rbp-11H]
        mov     byte [rax], dl
L_002:  mov     rax, qword [rbp-8H]
        cmp     rax, qword [rbp-10H]
        jc      L_001
        mov     rax, qword [rbp-28H]
        pop     rbp
        ret



SECTION .data   


SECTION .bss    


