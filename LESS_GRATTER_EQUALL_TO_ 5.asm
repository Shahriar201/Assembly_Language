.STACK 100H
.MODEL SMALL
.DATA
    A DW "PLEASE SCAN A DIGIT(0-9) : $"
    B DW "YOUR VALUE IS EQUIVALENT TO  5$"
    
    C DW "YOUR VALUE IS GREATER THAN 5 $" 
    
    D DW "YOUR VALUE IS LESS THAN 5 $"

.CODE
    MAIN PROC 
        MOV AX, @DATA
        MOV DS, AX
        
        ;MASSAGE_1
        LEA DX, A
        MOV AH, 9
        INT 21H
        
        ;SCAN
        MOV AH, 1
        INT 21H
        MOV BL, AL
        
        ;NEW LINE 
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H
        
  
        
          
        ;COMPAIRE 
        CMP BL,'5' 
        JG GREATER
        JL LESS
        JE EQUALL
        
        GREATER:
        LEA DX, C
        MOV AH, 9
        INT 21H
        JMP END_IF
        
        LESS:
        LEA DX, D
        MOV AH, 9
        INT 21H
        JMP END_IF
        
        EQUALL:
        LEA DX, B
        MOV AH, 9
        INT 21H
        JMP END_IF
       
        
      END_IF:
        
        
    MAIN ENDP
    END MAIN