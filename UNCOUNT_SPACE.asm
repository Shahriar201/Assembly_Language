.STACK 100H
.MODEL SMALL
.DATA

    ;A DW " 10 CHARACTER:$" 

.CODE


MAIN PROC
          
          
          
      INITIATION:  
      
      MOV AH,1
      INT 21H
      MOV BL,AL 
      
      TOP:
      
      CMP BL,' '
      
      JE END_IF 
      
      JMP INITIATION
      
      
      END_IF:
     
       
    
     MAIN ENDP
END MAIN