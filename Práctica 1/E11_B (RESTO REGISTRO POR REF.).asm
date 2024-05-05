          ORG 1000H ; Datos
DIVIDENDO DW 11
DIVISOR	  DW 2
	
          ORG 3000H  ; Subrutina
RESTO:    MOV CX,[BX]
	  MOV BX,AX
	  MOV AX,[BX]
BUCLE:    CMP AX, BX
 	  JS FIN
          SUB AX, BX
          JMP BUCLE
FIN:      MOV CX,AX
          RET
          
          ORG 2000H   ; Programa Principal
          MOV AX, offset DIVIDENDO 
          MOV BX, offset DIVISOR
	  CALL RESTO
  	  HLT
    	  END
