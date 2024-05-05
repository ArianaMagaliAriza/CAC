;FORMA 1(MÁS INTERRUPCIONES MENOS MEMORIA OCUPADA)
;-------------------------------------------------
     ORG 1000H
  MSJ DB 0
  FIN DB 255

      ORG 2000H
      MOV BX, OFFSET MSJ
      MOV AH, 255
      MOV AL,1
BUCLE:INT 7
      INC BYTE PTR [BX]
      DEC AH
      JNZ BUCLE
      INT 0
      END

;FORMA 2(MÁS MEMORIA OCUPADA MENOS INTERRUPCIONES)
;-------------------------------------------------
     ORG 1000h
     msj db ?

      org 2000h 
      mov bx,offset msj
      mov ah,255
      mov al,0

      bucle: mov [bx],al
        inc bx
        inc al
        dec ah
        jnz bucle
        mov bx,offset msj
        int 7
        hlt 
        end
