.data
TABLA: .word 1,2,3,4,5,6,7,8,9,10
RES: .word 0,0,0,0,0,0,0,0,0,0
CANT: .word 0
X: .word 4

.code
daddi $t3,$t3,10 #diml
ld $t0,X($0)
ld $t1,TABLA($0)
ld $t2,RES($0)

bucle:stl $t2,$t0,$t1
sd $t2,RES($0)
daddi $t3,$t3,-1
daddi $t4,t4,$t2 #sumo CANT
bnez $t3,bucle

sd, $t4,CANT($0)
halt