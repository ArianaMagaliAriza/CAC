     org 1000h
op1   db 2
op2   db 5
res   db 0

      org 3000h
MUL:  MOV BX,[BX]
      MOV CH,BYTE PTR[BX]; OP2
      MOV BX,CX
      MOV BX,[BX]
      MOV AL, BYTE PTR[BX]; OP1
BUCLE:ADD CL,CH
      DEC AL
      JNZ BUCLE
      RET

      org 2000h
      MOV AX, OFFSET op1
      MOV BX, OFFSET op2
      MOV CL, res
      CALL MUL
      HLT
      END
