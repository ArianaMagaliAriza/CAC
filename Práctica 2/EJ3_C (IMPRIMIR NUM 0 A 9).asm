    ORG 1000H
  MSJ DB "0123456789"
  FIN DB ?
  
      ORG 2000H
      MOV BX, OFFSET MSJ
      MOV AL,OFFSET FIN- OFFSET MSJ
      INT 7
      INT 0
      END
