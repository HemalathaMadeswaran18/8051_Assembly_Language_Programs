org 0000h
LJMP MAIN
ORG 000BH
CPL P1.2
RETI
ORG 0030H
MAIN: MOV TMOD ,#02H
MOV TH0,#0B6H
MOV IE,#82H
SETB TR0
BACK: MOV P0,#'Y'
MOV P2,#'N'
SJMP BACK
 END