MOV A,#23H
ADD A,#24H
MOV R1,A

MOV A,23H
MOV B,#23H
SUBB A,B
MOV R0,A

MOV A,#2H
MOV B,#3H
MUL AB
MOV R2,A

MOV A,#10H
MOV B,#5H
DIV AB
MOV R3,A
