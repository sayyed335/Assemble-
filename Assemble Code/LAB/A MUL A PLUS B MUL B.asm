;{A*A+B*B}

.DATA

A DB 0
B DB 0


RESULT1 DB ?


MES1 DB 13,10,"A=$" 
MES2 DB 13,10,"B=$"
MES3 DB 13,10,"ANS=$"


.CODE

START:
    
    MOV AX,DATA   
    MOV DS,AX
       
       
       ;FOR A:
       
    MOV AX,SEG MES1     
    MOV DS,AX
    MOV DX,OFFSET MES1   
    MOV AH,9H
    INT 21H
    MOV AH,1H
    INT 21H
    SUB AL,30H  
    MOV A,AL  
    
       ;FOR B:
       
    MOV AX,SEG MES2     
    MOV DS,AX
    MOV DX,OFFSET MES2                                             
    MOV AH,9H
    INT 21H
    MOV AH,1H
    INT 21H
    SUB AL,30H  
    MOV B,AL
  
                                      
                                   ;CALCULATION
                                      
                                MOV AL,A     ;A*A   
                                MUL A
                                
                                    
                                MOV CL,B     ;B*B
                                MUL B  
                                
                                ADD AX,CX
                                
                             
                                MOV RESULT1,AL
                           
                                
                                ADD RESULT1,30H
                             
                                
                                MOV AL,RESULT1
                           
    
    
    
    
        ;FOR DISPLAY (ANS) 
        
    MOV AX,SEG MES3
    MOV DS,AX
    MOV DX,OFFSET MES3
    MOV AH,9H                                        
    INT 21H
    MOV AL,RESULT1
    MOV DL,AL
    MOV AH,2H
    INT 21H

    
    MOV AX,4CH
    INT 21H
ENDS
END START                                    
    