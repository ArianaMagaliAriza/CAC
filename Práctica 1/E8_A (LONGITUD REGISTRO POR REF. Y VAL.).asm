         org 1000h
cadena db "cadena"
res db 0
hola
         org 3000h
LONGITUD:MOV AH, [BX]
         CMP AH,00H
         JZ FIN
         INC AL
         INC BX
         JMP LONGITUD
FIN:     ret
         
         org 2000h
         MOV BX,offset cadena
         MOV AL, res
         CALL LONGITUD
         HLT
         END
