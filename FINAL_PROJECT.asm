.STACK 100H
.MODEL SMALL
.DATA
     A DW "******WELCOME TO OUR PROJECT *******$"
     B DW "MULCIPLE QUIZ SYSTEM (MCQ) $"
     C DW "IF YOUR ANSWER IS CORRECT THEN GET 1 POINT $"
     D DW "YOU GET : $"
     MSGR DW "YOUR ANSWER IS CORRECT $"
     MSGW DW "YOUR ANSWER IS WRONG $" 
     
     MSG DW "IF YOU AGREE THEN PRESS ENTER OTHER WISE PRESS ANY KEY$"
     
     Q1 DW "1. WHICH DATE IS CALLED INTERNATIONAL MOTHER LANGUAGE DAY? $"
     Q1A DW "A) 16 DECEMBER B) 21 FEBRUARY C) 26 MARCH D) 14 APRIL $"
     
     Q2 DW "2. WHAT IS THE VALUE OF PI? $"
     Q2A DW "A) 3.14159 B) 9.8 C) 3.1312 D) 3.4455 $"
     
     Q3 DW "3. WHO IS THE INVENTOR OF MODERN COMPUTER? $"
     Q3A DW "A) MARKONI B) CHARLS BABBAG C) MACK MILAN D) ALEXGENDER $"
     
     Q4 DW "4. WHO IS THE CEO OF GOOGLE ? $"
     Q4A DW "A) SATYA NADELLA B) SUNDAR PICHAI  C) MARK ZUCKERBERG D) TIM COOK $"
     
     Q5 DW "5. H20 MEANS.... $"
     Q5A DW " A) RESTURANT B) WATER C) OCTEN D) ICE $"
     LAST_1 DW "THANKS FOR PARTICIPATE$"
     LAST_2 DW "IF YOU WANT TO PLAY AGAIN PRESS 1 OTHER WISE PREE ANY KEY $"
     

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX 
        
       
        
        ;GENERAL_MESSAGE
        
        LEA DX, A
        MOV AH, 9
        INT 21H 
        CALL NEW_LINE
        
        LEA DX, B
        MOV AH, 9
        INT 21H
        CALL NEW_LINE
        
        LEA DX, C
        MOV AH, 9
        INT 21H 
        
        CALL NEW_LINE
        CALL NEW_LINE
        
        
        LEA DX, MSG
        MOV AH, 9
        INT 21H
        CALL NEW_LINE
        
        
        ;START_CODE
        
        CALL SCAN
        
       
        CMP BL, 0DH
        JL EXIT
        JE Q_1
        JG EXIT
        CALL NEW_LINE 
                     
                     
     
        ;QUESTION
         
        Q_1:
        
        MOV CL, '0'
        
        CALL NEW_LINE
        CALL NEW_LINE
        
        LEA DX, Q1
        MOV AH, 9
        INT 21H
        CALL NEW_LINE
        
        LEA DX, Q1A
        MOV AH, 9
        INT 21H 
        
        CALL NEW_LINE
        CALL SCAN 
        
        
        CMP BL, 'B'
        JL QN2
        JE Q_2
        JG QN2
        
        ;N_2
        
        QN2:
        
        CALL NEW_LINE
        CALL WRONG
        
        CALL NEW_LINE
        CALL NEW_LINE
        LEA DX, Q2
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE
        LEA DX, Q2A
        MOV AH, 9
        INT 21H
        
        
        CALL NEW_LINE
        CALL SCAN
        
      
        CMP BL, 'A'
        JL QN3
        JE Q_3
        JG QN3
        
        ;R_2
        
        Q_2:
        
        CALL NEW_LINE
        CALL RIGHT
        INC CL
        
        CALL NEW_LINE
        CALL NEW_LINE
        LEA DX, Q2
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE
        
        LEA DX, Q2A
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE
        CALL SCAN
        
        
        CMP BL, 'A'
        JL QN3
        JE Q_3
        JG QN3
        
        ;N3
        
        QN3:
                
        CALL NEW_LINE                
        CALL WRONG
        
        CALL NEW_LINE
        CALL NEW_LINE
        LEA DX, Q3
        MOV AH, 9
        INT 21H 
        
        CALL NEW_LINE 
        LEA DX, Q3A
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE
        CALL SCAN
        
        
        CMP BL, 'B'
        JL QN4
        JE Q_4
        JG QN4 
        
        ;R3
        
        Q_3:
        
        
        CALL NEW_LINE
        CALL RIGHT
        INC CL
        
        CALL NEW_LINE
        CALL NEW_LINE
        LEA DX, Q3
        MOV AH, 9
        INT 21H 
        
        CALL NEW_LINE
        LEA DX, Q3A
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE
        CALL SCAN
        
        
        CMP BL, 'B'
        JL QN4
        JE Q_4
        JG QN4 
        
        
        ;N4
        
        QN4:
        
        CALL NEW_LINE
        CALL WRONG   
        
        CALL NEW_LINE
        CALL NEW_LINE
        LEA DX, Q4
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE
        LEA DX, Q4A
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE
        CALL SCAN
        
      
        CMP BL, 'B'
        JL QN5 
        JE Q_5
        JG QN5 
        
        ;R4
        
        Q_4:
        
        INC CL
        CALL NEW_LINE
        CALL RIGHT
        
        
        CALL NEW_LINE
        CALL NEW_LINE
        LEA DX, Q4
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE
        LEA DX, Q4A
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE
        CALL SCAN
        
        
        CMP BL, 'B'
        JL QN5 
        JE Q_5
        JG QN5 
        
        ;N5
        
        QN5:
        
        CALL NEW_LINE
        CALL WRONG  
        
        CALL NEW_LINE
        CALL NEW_LINE
        LEA DX, Q5
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE 
        LEA DX, Q5A
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE
        CALL SCAN
        
                 
        CMP BL, 'B'
        JL QN6
        JE Q_6
        JG QN6 
        
        ;R5
        
        Q_5:
        
        CALL NEW_LINE
        CALL RIGHT
        CALL NEW_LINE
        INC CL      
        
        CALL NEW_LINE
        CALL NEW_LINE
        LEA DX, Q5
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE
        LEA DX, Q5A
        MOV AH, 9
        INT 21H
        
        CALL NEW_LINE
        CALL SCAN
        
                 
        CMP BL, 'B'
        JL QN6
        JE Q_6
        JG QN6       
        
        ;N6
        
        QN6:
        CALL NEW_LINE
        CALL WRONG
        
        CALL NEW_LINE 
        JMP DISPLAY
        JMP EXIT
        
        ;R6
        
        Q_6:
        CALL NEW_LINE
        CALL RIGHT
        INC CL 
         
        CALL NEW_LINE 
        JMP DISPLAY
        
        DISPLAY:
        CALL NEW_LINE
        CALL NEW_LINE
        LEA DX, D
        MOV AH, 9
        INT 21H 
        
        MOV AH, 2
        MOV DL, CL
        INT 21H
        
        CALL NEW_LINE
        CALL NEW_LINE
        
        LEA DX, LAST_1
        MOV AH, 9
        INT 21H
        
        
        CALL NEW_LINE
        CALL NEW_LINE
        
        LEA DX,LAST_2 
        MOV AH,9
        INT 21H
        
        CALL NEW_LINE
        CALL SCAN
        
        CMP BL,'1'
        JL EXIT
        JE Q_1
        JG EXIT 
        
        JMP EXIT
        
        
        RIGHT:
        LEA DX, MSGR
        MOV AH, 9
        INT 21H
        RET
        
        WRONG:
        LEA DX, MSGW
        MOV AH, 9
        INT 21H
        RET
        
        ;SCAN
        SCAN:
        MOV AH, 1
        INT 21H
        MOV BL, AL 
        RET
        
        
        ;NEW LINE
        NEW_LINE:
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H
        RET
        
        
        
        
        
        EXIT:
        
        
        MAIN ENDP
    END MAIN