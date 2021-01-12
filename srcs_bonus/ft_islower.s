





default rel

global ft_islower


SECTION .text   

ft_islower:
        push    rbp
        mov     rbp, rsp
        mov     dword [rbp-4H], edi
        cmp     dword [rbp-4H], 96
        jle     L_001
        cmp     dword [rbp-4H], 122
        jg      L_001
        mov     eax, 1
        jmp     L_002

L_001:  mov     eax, 0
L_002:  pop     rbp
        ret



SECTION .data   


SECTION .bss    


