MOV R1,#00H
MOV R2,#00H
MOV R3,#00H
MOV R4,#00H
MOV R5,#00H
MOV R6,#00H
MOV R7,#00H
MOV R0,#00H


MOV TMOD,#20H
MOV SCON,#50H
MOV TH1,#0FAH
SETB TR1

MOV SBUF,A ;SEND (SHOW ON TX)
CHECK1: JNB TI,CHECK1
CHECK: JNB RI,CHECK ;RECEIVE
; (WHAT IS TYPED ON RX)
MOV A,SBUF





;MOV A,#04H  ;number 
MOV B,#02H
DIV AB
MOV R7,B
CJNE R7, #00H, NOT_ZERO2
MOV R1,#01H   ; IF ZERO (IE NOT PRIME)
NOT_ZERO2 : MOV R2,#01H ; (COULD BE PRIME)
;MOV A,#04H  ;number
MOV A,SBUF
MOV B,#03H
DIV AB
MOV R7,B
CJNE R7, #00H, NOT_ZERO3
MOV R3,#01H ; NOT PRIME
NOT_ZERO3 : MOV R4,#01H ; COULD BE PRIME
;MOV A,#04H  ;number
MOV A,SBUF
MOV B,#05H
DIV AB
MOV R7,B
CJNE R7, #00H, NOT_ZERO5
MOV R5,#01H ; NOT PRIME
NOT_ZERO5 : MOV R6,#01H

MOV A,#00H
ADD A,R1
ADD A,R3
ADD A,R5
CJNE A,#00H,NOT_PRIME
MOV R6,#01H ; PRIME
NOT_PRIME : MOV R0,01H ; NOT PRIME