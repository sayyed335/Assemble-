.DATA
    MES DB "SAYED MAIMUNUR RAHMAN.$" 
    MESS DB "SYLHET INTERNATIONAL UNIVERSITY:$"
    X DB ?
ENDS

.CODE
START:

      MOV AX,DATA    ;INIATIALIZATION DATA
      MOV DS,AX
      
      LEA DX,MES  ;LOAD EFFECT ADDRESS
      
      MOV AH,9    ;PRINT/OUTPUT     
      INT 21H   
               
                                 
      MOV AH,2
      MOV DL,0DH   ;NEW LINE
      INT 21H
      MOV DL,0AH
      INT 21H                           
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
      LEA DX,MESS  ;LOAD EFFECT ADDRESS
      
      MOV AH,9    ;PRINT/OUTPUT     
      INT 21H  
      
      
      
      MOV AH,1
      INT 21H
      MOV X,AL       ;USER given VALUE  / INPUT

ENDS
END START
      

