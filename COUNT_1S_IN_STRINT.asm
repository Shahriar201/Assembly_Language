.STACK 100H
.MODEL SMALL
.DATA    
.CODE
MAIN PROC
    
 
    
    MOV CL,'0'
    
    START:
    MOV AH,1 
    INT 21H
    MOV BL,AL
     
    COUNT:
    CMP BL,'1'
    JE EQUAL
    CMP BL, ' '
    JE END_IF
    JMP START
    
    EQUAL:
    INC CL
    JMP START 
    
    END_IF:
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,CL
    INT 21H
    MAIN ENDP
END MAIN