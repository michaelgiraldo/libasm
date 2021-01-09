





default rel

global ft_atoi_base

extern ft_isalnum_base
extern ft_islower
extern ft_isupper
extern ft_isdigit
extern ft_isspace
extern _GLOBAL_OFFSET_TABLE_


SECTION .text   

ft_atoi_base:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     qword [rbp-18H], rdi
        mov     dword [rbp-1CH], esi
        mov     qword [rbp-10H], 0
        mov     dword [rbp-4H], 1
        jmp     L_002

L_001:  add     qword [rbp-18H], 1
L_002:  mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        movsx   eax, al
        mov     edi, eax
        call    ft_isspace
        test    eax, eax
        jnz     L_001
        mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        cmp     al, 45
        jz      L_003
        mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        cmp     al, 43
        jne     L_010
L_003:  mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        cmp     al, 45
        jnz     L_004
        mov     eax, 4294967295
        jmp     L_005

L_004:  mov     eax, 1
L_005:  mov     dword [rbp-4H], eax
        add     qword [rbp-18H], 1
        jmp     L_010

L_006:  mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        movsx   eax, al
        mov     edi, eax
        call    ft_isdigit
        test    eax, eax
        jz      L_007
        mov     eax, dword [rbp-1CH]
        cdqe
        imul    rax, qword [rbp-10H]
        mov     rdx, rax
        mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        movsx   rax, al
        add     rax, rdx
        sub     rax, 48
        mov     qword [rbp-10H], rax
        jmp     L_009

L_007:  mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        movsx   eax, al
        mov     edi, eax
        call    ft_isupper
        test    eax, eax
        jz      L_008
        mov     eax, dword [rbp-1CH]
        cdqe
        imul    rax, qword [rbp-10H]
        mov     rdx, rax
        mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        movsx   rax, al
        add     rax, rdx
        sub     rax, 55
        mov     qword [rbp-10H], rax
        jmp     L_009

L_008:  mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        movsx   eax, al
        mov     edi, eax
        call    ft_islower
        test    eax, eax
        jz      L_009
        mov     eax, dword [rbp-1CH]
        cdqe
        imul    rax, qword [rbp-10H]
        mov     rdx, rax
        mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        movsx   rax, al
        add     rax, rdx
        sub     rax, 87
        mov     qword [rbp-10H], rax
L_009:  add     qword [rbp-18H], 1
L_010:  mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        movsx   eax, al
        mov     edx, dword [rbp-1CH]
        mov     esi, edx
        mov     edi, eax
        call    ft_isalnum_base
        test    eax, eax
        jne     L_006
        cmp     qword [rbp-10H], 0
        jns     L_013
        cmp     dword [rbp-4H], -1
        jnz     L_011
        mov     eax, 0
        jmp     L_012

L_011:  mov     rax, -1
L_012:  mov     qword [rbp-10H], rax
L_013:  mov     rax, qword [rbp-10H]
        mov     edx, eax
        mov     eax, dword [rbp-4H]
        imul    eax, edx
        leave
        ret



SECTION .data   


SECTION .bss    


