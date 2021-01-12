





default rel

global ft_list_remove_if

extern free


SECTION .text   

ft_list_remove_if:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 80
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     qword [rbp-18H], rdx
        mov     rax, qword [rbp-8H]
        cmp     qword [rax], 0

        jne     L_001
        jmp     L_012

L_001:

        jmp     L_002

L_002:  xor     eax, eax
        mov     rcx, qword [rbp-8H]
        cmp     qword [rcx], 0
        mov     byte [rbp-29H], al

        je      L_003
        mov     rax, qword [rbp-18H]
        mov     rcx, qword [rbp-8H]
        mov     rcx, qword [rcx]
        mov     rdi, qword [rcx]
        mov     rsi, qword [rbp-10H]
        mov     qword [rbp-38H], rax
        mov     al, 0
        mov     rcx, qword [rbp-38H]
        call    rcx
        cmp     eax, 0
        sete    dl
        mov     byte [rbp-29H], dl
L_003:  mov     al, byte [rbp-29H]
        test    al, 01H

        jne     L_004

        jmp     L_005

L_004:  mov     rax, qword [rbp-8H]
        mov     rax, qword [rax]
        mov     rax, qword [rax+8H]
        mov     qword [rbp-28H], rax
        mov     rax, qword [rbp-8H]
        mov     rax, qword [rax]
        mov     rdi, rax
        call    free
        mov     rax, qword [rbp-28H]
        mov     rcx, qword [rbp-8H]
        mov     qword [rcx], rax

        jmp     L_002

L_005:  mov     rax, qword [rbp-8H]
        cmp     qword [rax], 0

        jne     L_006
        jmp     L_012

L_006:  mov     rax, qword [rbp-8H]
        mov     rax, qword [rax]
        mov     qword [rbp-20H], rax
L_007:  xor     eax, eax
        cmp     qword [rbp-20H], 0
        mov     byte [rbp-39H], al

        je      L_008
        mov     rax, qword [rbp-20H]
        cmp     qword [rax+8H], 0
        setne   cl
        mov     byte [rbp-39H], cl
L_008:  mov     al, byte [rbp-39H]
        test    al, 01H

        jne     L_009

        jmp     L_012

L_009:  mov     rax, qword [rbp-18H]
        mov     rcx, qword [rbp-20H]
        mov     rcx, qword [rcx+8H]
        mov     rdi, qword [rcx]
        mov     rsi, qword [rbp-10H]
        mov     qword [rbp-48H], rax
        mov     al, 0
        mov     rcx, qword [rbp-48H]
        call    rcx
        cmp     eax, 0

        jne     L_010
        mov     rax, qword [rbp-20H]
        mov     rax, qword [rax+8H]
        mov     rax, qword [rax+8H]
        mov     qword [rbp-28H], rax
        mov     rax, qword [rbp-20H]
        mov     rax, qword [rax+8H]
        mov     rdi, rax
        call    free
        mov     rax, qword [rbp-28H]
        mov     rcx, qword [rbp-20H]
        mov     qword [rcx+8H], rax

        jmp     L_011

L_010:  mov     rax, qword [rbp-20H]
        mov     rax, qword [rax+8H]
        mov     qword [rbp-20H], rax
L_011:  jmp     L_007


L_012:
        add     rsp, 80
        pop     rbp
        ret


