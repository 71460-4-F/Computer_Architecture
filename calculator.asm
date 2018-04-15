; -----------------------------------------
; Program: Calculator -Neander-
; Discipline: Computer Architecture
; Date: 02/05/2016
; -----------------------------------------

A  EQU  80H
B  EQU  81H
X  EQU  82H
Y  EQU  83H 
S  EQU  84H
T  EQU  85H
SX EQU  86H
SY EQU  87H
     
LDI 06H 
STA SY  
LDI 0AH
STA T
LDI 01H
STA B

READ1: IN 1
       AND B
       JZ READ1
       IN 0 
       STA A
       OUT 00H              
       LDI 01H 
       STA X
	   
READ2: IN 1
       AND X
       JZ READ2
       IN 0
       STA Y
       OUT 00H
                    
SUM:  LDA A
       ADD Y
       STA S
       STA SX  
IF:    LDA SX
       SUB T
       JN ELSE
       JZ DO
       JMP DO

DO: LDA S
       ADD SY
       OUT 00H
       JMP LAST

ELSE:  LDA S
       OUT 00H
       JMP LAST

LAST:   JMP LAST
