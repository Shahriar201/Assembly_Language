.STACK 100H
.MODEL SMALL
.DATA
    A DW "CAPITAL LETTER IS : $"
    B DW "CONVERTED SMALL LETTER IS : $"

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
        
        ;CONVERTED
        ADD BL, 32
        INT 21H
        
        ;MASSAGE_2
        LEA DX, B
        MOV AH, 9
        INT 21H
        
        ;PRINT
        MOV AH, 2
        MOV DL, BL
        INT 21H
        
        MOV DL, 0DH
        INT 21H
        
        
        
    MAIN ENDP
    END MAIN 

