     ORG 1000H
  MSJ DB 'A'
  
      ORG 2000H
      MOV BX, OFFSET MSJ
      MOV AL,1
BUCLE:INT 7
      INC BYTE PTR [BX]
      CMP BYTE PTR [BX],5BH
      JNZ BUCLE
      INT 0
      END
