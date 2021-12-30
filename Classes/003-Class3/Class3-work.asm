; Course - MicroProcessor Lab
; Name: Raihan Munim
; ID: 181400138

.MODEL SMALL    ;include model size (small)
.STACK 100H     ;stack 100 hexadecimal space in stack memory as procedual input

.DATA           ;all of the variable would be declared here
    MSG1 DB "Question 1:$"
    MSG2 DB "Enter 2 numbers: $"
    MSG3 DB "Question 2:$"
    
    CHAR1 DB ?
    CHAR2 DB ?                           

.CODE           ;code segment

    
MAIN PROC   ;int main
    ;code statement
    
    ; import data
    MOV AX , @DATA
    MOV DS , AX

    
    ;###################################################;         

    ; Q1. Write a program to take two numbers as input and 
    ;     put the larger one in a third variable.
    
    ; DOS beep
    MOV DL , 07H
    MOV AH , 2
    INT 21H  
    
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
    MOV AH,2
    MOV DL,3FH
    INT 21H
    
    ; DOS beep
    MOV DL , 07H
    MOV AH , 2
    INT 21H 
    
                                   
    ;###################################################;
                                                         
    MOV AH , 4CH
    INT 21H       
MAIN ENDP   
END MAIN        ;return 0