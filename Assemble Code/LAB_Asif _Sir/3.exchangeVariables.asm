DATA SEGMENT
     NUM1 DB 9H
     NUM2 DB 7H
ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
     
      MOV AL,NUM1
      MOV BL,NUM2
        
      XCHG AL,NUM2
      XCHG BL,NUM1 
     
      MOV AH,4CH
      INT 21H     
ENDS
END START