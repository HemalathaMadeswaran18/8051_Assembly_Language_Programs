MOV R1,#2H
MOV R0,#10H
MOV A,#00H

LOOP: ADD A,R1
MOV R2,A
DJNZ R0,LOOP