      ORG 1000H
  MSJ DB "01234566789"
  FIN DB ?
  SALTO DB 10
  
      ORG 2000H
      MOV BX, OFFSET MSJ
      MOV AH, OFFSET FIN-OFFSET MSJ
      MOV AL,1
BUCLE:INT 7
      INC BX
      PUSH BX
      MOV BX,OFFSET SALTO
      INT 7
      POP BX
      DEC AH
      JNZ BUCLE
      INT 0
      END
