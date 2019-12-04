.STACK 100H
.MODEL SMALL
.DATA
    A DW "ENTER A HEX DIGIT : $"
    B DW "IN DECIMAL : 1$"


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
        
        ;COMVERT 
        SUB BL, 11H
        INT 21H  
        
        ;MASSAGE_2
        LEA DX, B
        MOV AH, 9
        INT 21H
        
        ;PRINT
        MOV AH, 2
        MOV DL, BL
        INT 21H
        
        
        
    MAIN ENDP
    END MAIN 