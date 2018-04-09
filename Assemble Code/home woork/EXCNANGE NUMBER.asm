.DATA

.CODE 
START:   
      MOV AH,1    ;VALUE INPUT FUNCTION
      INT 21H 
      
      MOV BH,1    ;VALUE INPUT FUNCTION
      INT 21H
     
      MOV BL,AL
      MOV CL,BL
        
      XCHG CL,BL
      XCHG BL,CL 
             
            
    MOV AH,2    ;PRINT THE FUNCTION (VALUE PRINT AH,2)
    MOV DL,CL
    INT 21H
    
                
    MOV BH,2    ;PRINT THE FUNCTION (VALUE PRINT AH,2)
    MOV DL,BL
    INT 21H
           
ENDS
END START



