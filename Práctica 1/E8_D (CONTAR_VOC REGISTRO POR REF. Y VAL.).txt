      ORG 1000h
vocales db "aeiouAEIOU"
palabra   db "hola"
fin     db ?

           ORG 3000h
CONTAR_VOC:CMP AL,0
	   JZ FIN
	   MOV  AH, OFFSET letra - OFFSET vocales; DIML DE VOCALES
	   PUSH BX
	   MOV BX,DX
           MOV CH,BYTE PTR[BX];paso la palabra
	   POP BX
           JMP ES_VOCAL
	   INC DX; ME MUEVO EN LA PALABRA
           DEC AL
           JMP CONTAR_VOC
ES_VOCAL:  CMP CH,[BX]
           JZ SUMAR
           INC BX
           DEC AH
           JNZ ES_VOCAL
           JMP CONTAR_VOC
SUMAR:     INC CL
           RET
         
         ORG 2000h
         MOV  DX, OFFSET palabra
         MOV  BX, OFFSET vocales
         MOV  AL, OFFSET fin- OFFSET palabra; DIML DE PALABRA
         MOV  CL, 0
         CALL CONTAR_VOC
         HLT
         END


