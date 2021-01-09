





default rel

global ft_isspace


SECTION .text   

ft_isspace:
        push    rbp
        mov     rbp, rsp
        mov     dword [rbp-4H], edi
        cmp     dword [rbp-4H], 9
        jz      L_001
        cmp     dword [rbp-4H], 10
        jz      L_001
        cmp     dword [rbp-4H], 11
        jz      L_001
        cmp     dword [rbp-4H], 12
        jz      L_001
        cmp     dword [rbp-4H], 13
        jz      L_001
        cmp     dword [rbp-4H], 32
        jnz     L_002
L_001:  mov     eax, 1
        jmp     L_003

L_002:  mov     eax, 0
L_003:  pop     rbp
        ret



SECTION .data   


SECTION .bss    


