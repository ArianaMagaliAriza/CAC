	   org 1000h
car db "a"
cadena db "hola%alo"

           org 3000h
CONTAR_CAR:mov bx,sp
	   add bx,2
	   push bx
           mov bx,ax
           mov cl, byte ptr [bx]; GUARDO CAR EN CL
           pop bx
           mov dl,0
bucle:     cmp bx,00h
           jz fin
           mov ch, [bx]; GUARDO CADENA EN CH
           cmp ch,cl
           jz suma
           inc bx
	   jmp bucle
suma:      inc dl 
           inc bx
           jmp bucle
fin:       hlt
	   ret

           org 2000h
	   mov bx, offset cadena
	   mov ax, car
	   push bx
	   push ax
	   call CONTAR_CAR
	   pop ax
           pop bx
	   end
