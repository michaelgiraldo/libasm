; A system call allows a userspace program to interface with kernel.
; The protection mechanism provided by Linux doesn’t allow a userspace program to directly 
; invoke the Kernel. Instead it needs cooperation with some hardware via software interrupts 
; to transition from userspace to kernel space. 
; This prevents userspace program to interfere with the kernel protection mechanisms.
; https://fasterthanli.me/series/reading-files-the-hard-way/part-2

default rel

global	ft_write
extern  __errno_location

section .text

ft_write:
	mov		rax, 1
	syscall
	cmp		rax, 0
	jl		error
	ret

error:
	neg		rax
	mov		rdi, rax
	call	__errno_location wrt ..plt
	mov		[rax], rdi
	mov		rax, -1
	ret