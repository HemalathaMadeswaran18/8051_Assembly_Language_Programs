ORG 0000H
LJMP MAIN
ORG 40H
MAIN: MOV R0,#40H
MOV R1,#6H
MOV R2,#1H
LOOP:MOV A,@R0
ADD A,R2
MOV @R0,A
INC R0
INC R2
DJNZ R1,LOOP
HLT: SJMP HLT

