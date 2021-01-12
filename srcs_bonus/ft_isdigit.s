





default rel

global ft_isdigit


SECTION .text   

ft_isdigit:
        push    rbp
        mov     rbp, rsp
        mov     dword [rbp-4H], edi
        cmp     dword [rbp-4H], 47
        jle     L_001
        cmp     dword [rbp-4H], 57
        jg      L_001
        mov     eax, 1
        jmp     L_002

L_001:  mov     eax, 0
L_002:  pop     rbp
        ret



SECTION .data   


SECTION .bss    


