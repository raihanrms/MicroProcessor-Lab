; Course - MicroProcessor Lab
; Name: Raihan Munim
; ID: 181400138

.MODEL SMALL    ;include model size (small)
.STACK 100H     ;stack 100 hexadecimal space in stack memory as procedual input

.DATA           ;all of the variable would be declared here
    MSG1 DB "Question 1:$"
    MSG2 DB "Enter 2 numbers: $"
    MSG3 DB "Question 2:$"
    MSG4 DB "Enter two capital letters: $"
    
    VAR1 DB ?
    VAR2 DB ?
    VAR3 DB ?                           

.CODE           ;code segment

    
MAIN PROC   ;int main
    ;code statement
    
    ; import data
    MOV AX , @DATA
    MOV DS , AX

    
    ;###################################################;         

    ; Q1. Write a program to take two numbers as input and 
    ;     put the larger one in a third variable.
    
    ;print message     
    MOV AH , 9
    LEA DX , MSG1
    INT 21H                     
    
    
    ;NEW LINE
    MOV AH , 2
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H
    
    ;print message     
    MOV AH , 9
    LEA DX , MSG2
    INT 21H
    
    ;NEW LINE
    MOV AH , 2
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H
    
    ;input is stored in 'AL' register
    MOV AH , 1
    INT 21H    
    MOV BL , AL     ;save 1st letter to BL
    
    MOV AH , 1
    INT 21H    
    MOV BH , AL     ;save 2nd letter to BH

    MOV AH , 2
    INT 21H
    CMP BL , BH 
    
    JGE GREATER       ; checking if the char in bl is greater than bh
       MOV DL, BL
       INT 21H
 
       MOV DL, BH
       INT 21H
 
       JMP END     ; if no, keep the result
 
     GREATER:         ; if yes, display it in a new line
       
        ;NEW LINE
        MOV AH , 2
        MOV DL , 0AH    ; \n = 0A
        INT 21H
        MOV DL , 0DH    ; return char = 0D
        INT 21H
                    
        MOV VAR3 , BL   ; storing the greater variable in VAR3
        INT 21H
                              
        MOV DL , VAR3   ; printing the new var3 value
        INT 21H
       
     END:    
    
    
    ;###################################################;
    
    ; Q2. Write a program to display a "?", read two capital 
    ;     letters and display them on the next line in alphabetical 
    ;     order with a beep.
    
    ;NEW LINE
    MOV AH , 2
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H
    
    ;print message     
    MOV AH , 9
    LEA DX , MSG3
    INT 21H                   
    
    ;NEW LINE
    MOV AH , 2
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H
           
    ; print a ?       
    MOV AH , 2
    MOV DL , 3FH
    INT 21H
    
    ;NEW LINE
    MOV AH , 2
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H
    
    ;print message     
    MOV AH , 9
    LEA DX , MSG4
    INT 21H
    
    ;NEW LINE
    MOV AH , 2
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H 
    
    
    ;input is stored in 'AL' register
    MOV AH , 1
    INT 21H
    
    MOV BL , AL     ;save 1st letter to BL
    
    MOV AH , 1
    INT 21H
    
        
        
    MOV BH , AL     ;save 2nd letter to BH

    MOV AH , 2
    INT 21H
    CMP BL , BH
    
    JAE ABOVE       ; checking if the char in bl is greater than bh
       MOV DL, BL
       INT 21H
 
       MOV DL, BH
       INT 21H
 
       JMP LAST     ; if no, keep the result
 
     ABOVE:         ; if yes, replace it in alphabetical order
       MOV DL, BH
       INT 21H
 
       MOV DL, BL
       INT 21H
 

    ; DOS beep
    MOV DL , 07H
    MOV AH , 2
    INT 21H
    
    LAST: 
    
                                   
    ;###################################################;
                                                         
    
    MOV AH , 4CH
    INT 21H       
MAIN ENDP   
END MAIN        ;return 0