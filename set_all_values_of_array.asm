org 0000h 
ljmp main
org 40h
main: mov r0,#40h
mov r1,#06h
loop: mov a,#01h
mov @r0,a
INC R0
djnz r1,loop

