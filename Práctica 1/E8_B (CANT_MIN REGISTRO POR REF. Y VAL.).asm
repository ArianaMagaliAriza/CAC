         org 1000h
cadena db "cadenAP"
res db 0

         org 3000h
CONTAR_MIN:MOV AH, [BX]
         CMP AH,00H
         JZ FIN
         CMP AH, 61H
         JNS COND
         JMP NOVO
COND:    CMP AH,7AH
         JNS NOVO
         INC AL
NOVO:    INC BX
         JMP CONTAR_MIN
FIN:     ret
         
         org 2000h
         MOV BX,offset cadena
         MOV AL, res
         CALL CONTAR_MIN
         HLT
         END
