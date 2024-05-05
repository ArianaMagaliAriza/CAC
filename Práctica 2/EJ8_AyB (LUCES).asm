;INCISO A
;--------------------------------------------------
     ORG 2000H
     MOV AL,00000000B
     OUT 33H,AL; CB
     MOV AL,11000011B
     OUT 31H,AL; PB
     INT 0
     END

;--------------------------------------------------
;INCISO B
;--------------------------------------------------
     ORG 1000H
PRE DB "Llave prendida"
APA DB "Llave apagada"
AUX db ?

     ORG 2000H
     MOV AL,10000000B
     OUT 32H,AL; CONFIGURO COMO ENTRADA CA
     IN AL,30H;LEO PA
     AND AL,10000000B; veo si está encendida
     JNZ PRENDE
     MOV BX,OFFSET APA
     MOV AL, OFFSET AUX - OFFSET APA
     INT 7
     JMP FIN
PRENDE:MOV BX,OFFSET PRE
       MOV AL, OFFSET APA - OFFSET PRE
       INT 7
FIN:   INT 0
       END
