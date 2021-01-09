





default rel

global ft_isalnum_base


SECTION .text   

ft_isalnum_base:
        push    rbp
        mov     rbp, rsp
        mov     eax, edi
        mov     dword [rbp-18H], esi
        mov     byte [rbp-14H], al
        mov     eax, dword [rbp-18H]
        sub     eax, 1
        mov     dword [rbp-4H], eax
        cmp     dword [rbp-18H], 10
        jg      L_002
        cmp     byte [rbp-14H], 47
        jle     L_001
        movsx   eax, byte [rbp-14H]
        mov     edx, dword [rbp-4H]
        add     edx, 48
        cmp     eax, edx
        jg      L_001
        mov     eax, 1
        jmp     L_007

L_001:  mov     eax, 0
        jmp     L_007

L_002:  sub     dword [rbp-4H], 9
        cmp     byte [rbp-14H], 47
        jle     L_003
        cmp     byte [rbp-14H], 57
        jle     L_005
L_003:  cmp     byte [rbp-14H], 64
        jle     L_004
        movsx   eax, byte [rbp-14H]
        mov     edx, dword [rbp-4H]
        add     edx, 65
        cmp     eax, edx
        jle     L_005
L_004:  cmp     byte [rbp-14H], 96
        jle     L_006
        movsx   eax, byte [rbp-14H]
        mov     edx, dword [rbp-4H]
        add     edx, 97
        cmp     eax, edx
        jg      L_006
L_005:  mov     eax, 1
        jmp     L_007

L_006:  mov     eax, 0
L_007:  pop     rbp
        ret



SECTION .data   


SECTION .bss    


