





default rel

global ft_create_elem

extern malloc
extern _GLOBAL_OFFSET_TABLE_


SECTION .text   

ft_create_elem:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     qword [rbp-18H], rdi
        mov     edi, 16
        call    malloc
        mov     qword [rbp-8H], rax
        cmp     qword [rbp-8H], 0
        jnz     L_001
        mov     eax, 0
        jmp     L_002

L_001:  mov     rax, qword [rbp-8H]
        mov     rdx, qword [rbp-18H]
        mov     qword [rax+8H], rdx
        mov     rax, qword [rbp-8H]
        mov     qword [rax], 0
        mov     rax, qword [rbp-8H]
L_002:  leave
        ret



SECTION .data   


SECTION .bss    


