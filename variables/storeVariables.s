/*
This is a programm loading two numbers from variables in RAM and store the
sum of those two in RAM as well. Finally, the result is stored in the register
r0 thus returned as errorcode to the OS. This is written to learn the
ARMv7 assembly language, in this case loading and storing to memory pointers.
	Author: Stefan
	Version: 0.1
	Date: August 10, 2016
*/

.data
.balign 4
a:
	.word 112

.balign 4
b:
	.word 42

.balign 4
result:
	.word 0

.text

.balign 4
.global main

main:
	ldr r1, =a
	ldr r1, [r1]
	ldr r2, =b
	ldr r2, [r2]
	ldr r3, =result
	add r4, r1, r2
	str r4, [r3]
	ldr r0, =result
	ldr r0, [r0]
	bx lr 
