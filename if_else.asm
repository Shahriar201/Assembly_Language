.STACK 100H
.MODEL SMALL
.DATA
    A DW "SCAN VALUE1 : $"
    B DW "SCAN VALUE2 : $"
    C DW "GRATTER VALUE3 : $"

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
        
        ;NEW LINE PRINT
        MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV DL, 0AH
        INT 21H
        
        
        ;MASSAGE_2
        LEA DX, B
        MOV AH, 9
        INT 21H
        
        ;SCAN
        MOV AH, 1
        INT 21H
        MOV CL, AL
        
        
        
        ;NEW LINE PRINT 
        MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV DL, 0AH
        INT 21H
        
        ;MASSAGE_3
        LEA DX, C
        MOV AH, 9
        INT 21H   
        
        ;COMPAIRE 
        CMP BL,CL 
        JG GREATER
        
        
        MOV AH, 2
        MOV DL,CL 
        INT 21H 
        JMP END_IF
        
        ;PRINT 
         GREATER:
         MOV AH, 2  
         MOV DL, BL
         INT 21H
        
        
        
       END_IF: 
        
        
    MAIN ENDP
    END MAIN 

