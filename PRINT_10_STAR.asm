.STACK 100H
.MODEL SMALL
.DATA

.CODE
    MAIN PROC
        MOV CX, 10
        
        MOV AH, 2
        MOV DL, '*'
        
        TOP:
        INT 21H
        
        LOOP TOP
        
        
        MAIN ENDP
    END MAIN