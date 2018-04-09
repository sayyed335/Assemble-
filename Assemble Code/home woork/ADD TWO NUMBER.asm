.DATA


.CODE 


START: 


    MOV AH,1    ;VALUE INPUT FUNCTION
    INT 21H
    
    MOV BL,AL  ;FIRST VALUE INTO "BL" REG.
    INT 21H
    
    MOV CL,AL   ;SECOND VALUE INTO "CL" REG.
    
    ADD BL,CL   ;BL=BL+CL 
    
    
    
                  MOV AH,2
                  MOV DL,0DH   ;NEW LINE
                  INT 21H
                  MOV DL,0AH
                  INT 21H   
                  
      
      
    MOV AH,2    ;PRINT THE FUNCTION (VALUE PRINT AH,2)
    
    
    SUB BL,48 ;FOR ADJUST THE SUMING VALUE
    MOV DL,BL
    INT 21H     
                  
ENDS
END START
