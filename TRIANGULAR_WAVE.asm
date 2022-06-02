                                                                                                                                                                     CLR P0.7
AGAIN: MOV A,#00H
UP: MOV P1,A
ADD A,#3H
CJNE A,#39H, UP

DOWN: MOV P1,A
SUBB A,#3H
CJNE A,#00H,DOWN

SJMP AGAIN