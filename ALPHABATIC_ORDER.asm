.STACK  100H
.MODEL SMALL
.DATA
    A DW "INPUT : ?$"
    B DW "OUTPUT : $"


.CODE
    MAIN PROC 
        
        
        MOV AH, 2
        MOV DL, '?'
        INT 21H
        
        ;SCAN_1
        MOV AH, 1
        INT 21H
        MOV BL, AL 
        
        ;SCAN_2
        MOV AH, 1
        INT 21H
        MOV CL, AL 
        
        ;NEW LINE 
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H
        
       
        ;COMPARE
        
        CMP BL, CL 
        JG GRATTER
        
        MOV AH, 2
        MOV DL, BL
        INT 21H
        
        MOV AH, 2
        MOV DL, CL
        INT 21H
        
        JMP END_IF
        
        GRATTER:
        MOV AH, 2
        MOV DL, CL
        INT 21H
        
        MOV AH, 2
        MOV DL, BL
        INT 21H
        
        END_IF:
        
        
        
        
        
        
    MAIN ENDP 
    END MAIN 