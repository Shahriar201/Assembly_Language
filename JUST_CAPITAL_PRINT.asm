.STACK 100H
.MODEL SMALL
.DATA
     A DW "YOUR LETTER IS : $"
     B DW "EXIT$"


.CODE
    MAIN PROC 
        MOV AX, @DATA
        MOV DS, AX
        
        ;MESSAGE_1
        LEA DX, A
        MOV AH, 9
        INT 21H
        
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
        CMP BL, 65  
        CMP BL, 90
        JLE E 
        
        CMP BL, 97
        CMP BL, 122
        JLE L
        
        E:
        MOV AH, 2
        MOV DL, BL
        INT 21H
        
        JMP END_IF
        
        ;MESSAGE-2 
        L:
        LEA DX, B
        MOV AH, 9
        INT 21H
        
        
        
       END_IF: 
        
        
        MAIN ENDP
    END MAIN