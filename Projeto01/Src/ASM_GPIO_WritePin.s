.text //inicio da se��o de c�digo
.syntax unified
.thumb
.type ASM_GPIO_WritePin, %function //diretiva
.global ASM_GPIO_WritePin //Label

.equ BSRR, 0x18 //offset do registrador BSRR
.equ RESET_BIT, 0x00

ASM_GPIO_WritePin:

	cmp r2, #RESET_BIT //compara se o estado o pino est� zerado (RESET)
	IT EQ //Se forem iguais, fa�a a proxima linha
	lsleq r1, r1, #16 //desloca o "valor" de R1 em 16 posi��es para realizar o RESET
	str r1, [r0, #BSRR] //escreve o valor de R1 no registrador BSRR na porta informada por R0

BX LR
.end //finaliza arquivo
