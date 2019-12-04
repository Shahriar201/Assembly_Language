.STACK 100H
.MODEL SAMLL
.DATA
    A DW "    E$"
    B DW "    O$"

.CODE
    MAIN PROC
         MOV AX, @DATA
         MOV DS, AX
        
        ;SCAN 
        MOV AH, 1
        INT 21H
        
        
        
        ;COMPARE
        CMP AL, '1'
        JE O
        CMP AL, '3'
        JE O
        
        CMP AL, '2'
        JE E
        CMP AL, '4'
        JE E 
        
        O:
        LEA DX, B
        MOV AH, 9
        INT 21H
        
        JMP END_CASE
        
        E: 
        LEA DX, A
        MOV AH, 9
        INT 21H
        
        END_CASE:
           
           
        
    MAIN ENDP
    END MAIN 