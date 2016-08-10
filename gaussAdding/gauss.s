/* This is a minimal program computing the sum of all numbers from 0 to 20.
It is written using the ARMv7 assembly language. In this case especially for
learning how to use loops and use the add und move instructions.
	Author: Stefan
	Version: 0.1
	Date: August 09, 2016
*/

.global main /* Make main as entry point globally available */

main:
	mov r0, #0	/* Put the number 0 into register r0 */
	mov r1, #1	/* Put the number 1 into register r1 */
.loop:
	add r0, r0, r1	/* Add the contents of registers r0 and r1 and store to r0 */
	add r1, r1, #1  /* Increment r1 */
	cmp r1, #20	/* Compare content of r1 with 20 */
	ble .loop	/* Branch if less or equal to label .loop */
	bx lr		/* Branch and exchange to link register */
