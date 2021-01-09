





default rel

global ft_list_remove_if

extern free
extern _GLOBAL_OFFSET_TABLE_


SECTION .text   

ft_list_remove_if:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     qword [rbp-18H], rdi
        mov     qword [rbp-20H], rsi
        mov     qword [rbp-28H], rdx
        mov     rax, qword [rbp-18H]
        mov     rax, qword [rax]
        mov     qword [rbp-8H], rax
        jmp     L_003

L_001:  mov     rax, qword [rbp-8H]
        mov     rax, qword [rax+8H]
        mov     rax, qword [rax]
        mov     rdx, qword [rbp-20H]
        mov     rcx, qword [rbp-28H]
        mov     rsi, rdx
        mov     rdi, rax
        mov     eax, 0
        call    rcx
        test    eax, eax
        jnz     L_002
        mov     rax, qword [rbp-8H]
        mov     rax, qword [rax+8H]
        mov     qword [rbp-10H], rax
        mov     rax, qword [rbp-8H]
        mov     rax, qword [rax+8H]
        mov     rdx, qword [rax+8H]
        mov     rax, qword [rbp-8H]
        mov     qword [rax+8H], rdx
        mov     rax, qword [rbp-10H]
        mov     rdi, rax
        call    free
L_002:  mov     rax, qword [rbp-8H]
        mov     rax, qword [rax+8H]
        mov     qword [rbp-8H], rax
L_003:  cmp     qword [rbp-8H], 0
        jz      L_004
        mov     rax, qword [rbp-8H]
        mov     rax, qword [rax+8H]
        test    rax, rax
        jnz     L_001
L_004:  mov     rax, qword [rbp-18H]
        mov     rax, qword [rax]
        mov     qword [rbp-8H], rax
        cmp     qword [rbp-8H], 0
        jz      L_005
        mov     rax, qword [rbp-8H]
        mov     rax, qword [rax]
        mov     rdx, qword [rbp-20H]
        mov     rcx, qword [rbp-28H]
        mov     rsi, rdx
        mov     rdi, rax
        mov     eax, 0
        call    rcx
        test    eax, eax
        jnz     L_005
        mov     rax, qword [rbp-8H]
        mov     rdx, qword [rax+8H]
        mov     rax, qword [rbp-18H]
        mov     qword [rax], rdx
        mov     rax, qword [rbp-8H]
        mov     rdi, rax
        call    free
L_005:  nop
        leave
        ret



SECTION .data   


SECTION .bss    


