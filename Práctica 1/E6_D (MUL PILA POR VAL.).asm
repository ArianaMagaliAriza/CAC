     org 1000h
op1   db 3
op2   db 2
res   dW 0

      org 3000h
MUL:  MOV BX,SP
      ADD BX,2
      MOV CH, BYTE PTR [BX];op2
      ADD BX, 2
      MOV AL, BYTE PTR [BX];op1
BUCLE:ADD CL, CH
      DEC AL
      JNZ BUCLE
      RET

      org 2000h
      MOV AX, op1
      MOV BX, op2
      MOV CL, res
      PUSH AX
      PUSH BX
      CALL MUL
      POP BX
      POP AX
      HLT
      END
