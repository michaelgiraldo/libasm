





default rel

global ft_isupper


SECTION .text   

ft_isupper:
        push    rbp
        mov     rbp, rsp
        mov     dword [rbp-4H], edi
        cmp     dword [rbp-4H], 64
        jle     L_001
        cmp     dword [rbp-4H], 90
        jg      L_001
        mov     eax, 1
        jmp     L_002

L_001:  mov     eax, 0
L_002:  pop     rbp
        ret



SECTION .data   


SECTION .bss    


