.STACK 100H
.MODEL SMALL
.DATA
     A DW "SCAN VALUE : $"
     B DW "PRINT VALUE : $"
     

.CODE
    MAIN PROC 
        MOV AX, @DATA
        MOV DS, AX 
        
        ;MESSAGE
        LEA DX, A
        MOV AH, 9
        INT 21H
        
        ;SCAN_1
        MOV AH, 1
        INT 21H
        MOV BL, AL 
        
        ;SCAN_2
        MOV AH, 1
        INT 21H
        MOV CL, AL
        
        ;SCAN_3
        MOV AH, 1
        INT 21H
        MOV BH, AL
        
       
        
        ;NEW LINE  PRINT
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H 
        
        ;CONVERT
        ADD BL, 1 
        ADD CL, 1
        ADD BH, 1
                 
        LEA DX, B
        MOV AH, 9
        INT 21H
                 
        MOV AH, 2
        MOV DL, BL
        INT 21H
        
        MOV AH, 2
        MOV DL, CL
        INT 21H
        
        MOV AH, 2
        MOV DL, BH
        INT 21H
        
        
        
        
        MAIN ENDP
    END MAIN