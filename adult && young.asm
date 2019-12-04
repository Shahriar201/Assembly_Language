.STACK 100H
.MODEL SMALL
.DATA
     A DW "ADULT$"
     B DW "YOUNG$"
     

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
       
        
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
        CMP BL, '1'
        JG ADULT
        JE YOUNG
        JL XOSS
        
         
        XOSS:
        LEA DX, B
        MOV AH, 9
        INT 21H
        
       
  
        
        JMP END_IF
         
        YOUNG:
        
        CMP CL,'8'
        JG ADULT
        JE ADULT
        JL XOSS 
        
        JMP END_IF
         
        ADULT:
        LEA DX, A
        MOV AH, 9
        INT 21H
        
        
        END_IF: 
        
        
        MAIN ENDP
    END MAIN