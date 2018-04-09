
;(a+c*b)/d-2*c

.DATA

A DB 0
B DB 0
C DB 0
D DB 0

RESULT1 DB ?
RESULT2 DB ?

MES1 DB 13,10,"A=$" 
MES2 DB 13,10,"B=$"
MES3 DB 13,10,"C=$"
MES4 DB 13,10,"D=$"
MES5 DB 13,10,"Quotient=$"
MES6 DB 13,10,"Reminder=$" 

ENDS

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
       
       ;FOR C:
       
    MOV AX,SEG MES3      
    MOV DS,AX
    MOV DX,OFFSET MES3   
    MOV AH,9H
    INT 21H
    MOV AH,1H
    INT 21H
    SUB AL,30H  
    MOV C,AL
    
       ;FOR D:
       
    MOV AX,SEG MES4     
    MOV DS,AX
    MOV DX,OFFSET MES4   
    MOV AH,9H
    INT 21H
    MOV AH,1H
    INT 21H
    SUB AL,30H  
    MOV D,AL  
          
                                   ;CALCULATION
                                      
                                MOV AL,B      
                                MUL C
                                MOV CL,A
                                MOV CH,0    
                                ADD AX,CX
                                                            
                                MOV BL,C
                                MOV BH,0
                                SHL BX,1     
                                SUB D,BL
                                MOV BL,D
                                MOV BH,0
                                
                                MOV DX,0
                                DIV BX
                                
                                MOV RESULT1,AL
                                MOV RESULT2,DL
                                
                                ADD RESULT1,30H
                                ADD RESULT2,30H
                                
                                MOV AL,RESULT1
                                MOV BL,RESULT2
    
        ;FOR DISPLAY (Quatient) 
        
    MOV AX,SEG MES5
    MOV DS,AX
    MOV DX,OFFSET MES5
    MOV AH,9H                                        
    INT 21H
    MOV AL,RESULT1
    MOV DL,AL
    MOV AH,2H
    INT 21H
    
    
        ;FOR DISPLAY (REMINDER) 
        
    MOV AX,SEG MES6
    MOV DS,AX
    MOV DX,OFFSET MES6
    MOV AH,9H
    INT 21H
    MOV AL,RESULT2
    MOV DL,BL
    MOV AH,2H
    INT 21H
    
    MOV AX,4CH
    INT 21H
ENDS
END START                                    
    