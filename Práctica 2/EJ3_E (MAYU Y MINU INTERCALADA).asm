     ORG 1000H
  MAY DB 'A'
  MIN DB 'a'
  
  
      ORG 2000H
      MOV BX, OFFSET MAY
      MOV AX, OFFSET MIN
      MOV AL,1
BUCLE:INT 7
      INC BYTE PTR [BX]
      PUSH BX
      MOV BX, AX
      INT 7
      INC BYTE PTR [BX]
      POP BX
      CMP BYTE PTR [BX],5BH
      JNZ BUCLE
      INT 0
      END
