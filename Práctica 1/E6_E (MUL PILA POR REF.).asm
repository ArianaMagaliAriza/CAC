     org 1000h
op1   db 3
op2   db 2
res   db 0

      org 3000h
MUL:  MOV BX,SP
      ADD BX,2
      MOV BX,[BX]
      MOV CH, BYTE PTR [BX]; OP2
      ADD BX,2
      MOV BX,[BX]
      MOV AL, BYTE PTR [BX]; OP1
BUCLE:ADD CL,AH
      DEC CH
      JNZ BUCLE
      RET

      org 2000h
      MOV AX, OFFSET op1
      MOV BX, OFFSET op2
      MOV CL, res
      PUSH AX
      PUSH BX
      CALL MUL
      POP BX
      POP AX
      HLT
      END
