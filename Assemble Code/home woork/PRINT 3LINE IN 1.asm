.DATA
  MES1 DB "SAYED $"
  MES2 DB "MAIMUNUR $"
  MES3 DB "RAHMAN:$"
  X DB ?
ENDS
.CODE
START:
  
  MOV AX,DATA
  MOV DS,AX
  
  LEA DX,MES1
  
  MOV AH,9
  INT 21H
  
  LEA DX,MES2
  
  MOV AH,9
  INT 21H
  
  LEA DX,MES3
  
  MOV AH,9
  INT 21H
  
  MOV AH,1
  INT 21H
  MOV X,AL
  
  MOV AH,4CH
  INT 21H
  
ENDS
END START      