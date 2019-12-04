.STACK 100H
.MODEL SMALL
.DATA
    
    I DW "IPUT IS WRONG!$"


.CODE
    MAIN PROC 
        MOV AX, @DATA
        MOV DS, AX
        
        ;SCAN
        MOV AH, 1
        INT 21H
        MOV BL, AL
        
        ;NEW LINE PRINT
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H
        
        ;COMPARE
        CMP BL, 'Y' 
        JE E
        CMP BL, 'y'
        JE E
        
        JG LESS
        JB LESS
        
        E:
        MOV AH, 2
        MOV DL, BL
        INT 21H
         
        JMP END_IF
        
        LESS:
        LEA DX, I
        MOV AH, 9
        INT 21H
        
        
        
        END_IF: 
        
        
        MAIN ENDP
    END MAIN