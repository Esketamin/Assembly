.data
.balign 4
var1:
	.word 43
.balign 4
var2:
	.word 42

.text
.balign 4
.global main
main:
	ldr r1, pointerVar1
	ldr r1, [r1]
	ldr r2, pointerVar2
	ldr r2, [r2]
	add r0, r1, r2
	bx lr

pointerVar1 : .word var1

pointerVar2 : .word var2
