.STACK 100H
.MODEL SMALL
.DATA


.CODE

MAIN PROC
    
    ;SCAN_1
    MOV AH,1
    INT 21H
    MOV BL,AL
           
    ;SCAN_2       
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    ;SCAN_3
    MOV AH,1
    INT 21H
    MOV DH,AL
    
    ;NEW_LINE
    MOV AH,2
    
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H 
    
    
    ;NEW_LINE
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    
    ;NEW_LINE
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,DH
    INT 21H
    
    MAIN ENDP
END MAIN