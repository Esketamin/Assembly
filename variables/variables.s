/* Calculating the sum of two numbers, that are stored in RAM rather than
directly computing the sum in registers. This is written to learn the
ARMv7 assembly language. In this case especially for learning how to load
variables from RAM to the CPU registers.
	Author: Stefan
	Version: 0.1
	Date: August 10, 2016
*/

.data
.balign 4
var1:
	.word 13
.balign 4
var2:
	.word 42

.text
.balign 4
.global main
main:
	ldr r1, =var1
	ldr r1, [r1]
	ldr r2, =var2
	ldr r2, [r2]
	add r0, r1, r2
	bx lr
