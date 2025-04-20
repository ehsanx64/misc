/*
** Simple GNU assembler (as) source code; useful as a source template. It uses libc for
** making calls (to operating system not to interrupts or bios etc).
*/

.section .data
message:
	.asciz "Hello!\n"

.section .text
.globl _main
_main:
	# Setup stack frame (for entering functions)
	push %ebp
	movl %esp, %ebp

	# Put a string on screen
	pushl $message
	call _puts

	# Destruct stack frame (undone stack frame)
	movl %ebp,%esp
	popl %ebp
	ret

