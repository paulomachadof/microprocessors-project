.text
.syntax unified
.thumb
.type ASM_GPIO_ReadPin, %function
.global ASM_GPIO_ReadPin

.equ IDR, 0x10
.equ RESET_BIT, 0x00

ASM_GPIO_ReadPin:

	ldr r3, [r0, #IDR]
	and r3, r3, r1
	mov r0, r3

	cmp r3, #RESET_BIT
	IT EQ
	moveq r0, #RESET_BIT

BX LR
.end
