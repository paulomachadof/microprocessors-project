.text
.syntax unified
.thumb
.type ASM_GPIO_TogglePin, %function
.global ASM_GPIO_TogglePin

.equ BSRR, 0x18
.equ BARRAR, 0x01

ASM_GPIO_TogglePin:

	eor r2, r1, #BARRAR
	str r2, [r0, #BSRR]
	bx LR

.end
