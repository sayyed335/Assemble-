.DATA
     NUM1 DB 9H
     NUM2 DB 7H
ENDS
.CODE 
START:
      MOV AX,DATA    ;INITIALIZED DATA
      MOV DS,AX
     
      MOV AL,NUM1    ;LOAD THE DATA INTO REGIS
      MOV BL,NUM2
        
      XCHG AL,NUM2   ;EXCHANGE THE DATA
      XCHG BL,NUM1 
     
ENDS 

END START