.STACK 100H
.MODEL SMALL
.DATA
     A DW "SCAN VALUE : $"
     B DW "CONVERTED VALUE : $"
     

.CODE
    MAIN PROC 
        MOV AX, @DATA
        MOV DS, AX 
        
        ;MESSAGE
        LEA DX, A
        MOV AH, 9
        INT 21H
        
        ;SCAN
        MOV AH, 1
        INT 21H
        MOV BL, AL
        
        ;NEW LINE  PRINT
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H 
        
        ;COMPARE
        CMP BL, 65
        CMP BL, 90
        JLE G 
        
        CMP BL, 97
        CMP BL, 122 
        JLE E 
        
        E:
        SUB BL, 32
        INT 21H
       
        LEA DX, B
        MOV AH, 9
        INT 21H
        
        MOV AH, 2
        MOV DL, BL
        INT 21H 
        
         JMP END_IF
        
        G:
        ADD BL, 32
        INT 21H
        
        LEA DX, B
        MOV AH, 9
        INT 21H
        
        MOV AH, 2
        MOV DL, BL
        INT 21H
       
        
        END_IF:
        
        
        
        
        MAIN ENDP
    END MAIN