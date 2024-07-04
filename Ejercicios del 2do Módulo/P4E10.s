.data
cadena: .asciiz "adbdcdedfdgdhdid" # cadena a analizar
car: .asciiz "d" # caracter buscado
cant: .word 0 # cantidad de veces que se repite el caracter car en cadena.

.code
ld $a1,car($0); CAR
daddi $a0,$0,cadena; DIRE CADENA
jal CONT
sd $v0, cant($0)
halt

CONT:   daddi $sp,$sp,-8
	sd $t1,0,($sp)
	daddi $v0,$0,0
LOOP:   lbu $t0,0($a0);COPIA DIRE CADENA
	beqz $t0,FIN
	beq $t0,$a1,SUM
	daddi $a0,$a0,1
	j LOOP
SUM:    daddi $v0,$v0,1
	daddi $a0,$a0,1
	j LOOP
FIN:    ld $t1,0,($sp)
	daddi $sp,$sp,8
	jr $ra