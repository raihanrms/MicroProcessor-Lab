.MODEL SMALL    ;include model size (small)
.STACK 100H     ;stack 100 hexadecimal space in stack memory as procedual input
.DATA           
;all of the variable would be declared here
     
     NUM DB  49 ; 1 represetation through ascii
     CHAR DB 'A'
     MSG DB "My name is Raihan$"
                                

.CODE           
;code segment
    
MAIN PROC   ;int main
    ;code statement 
               
    ; IMPORTING DATA
    MOV AX , @DATA
    MOV DS , AX
    
    ;###################################################;   
    ;Part 1 - Single charachter input/output
    MOV AH , 1
    INT 21H
    
    ;input is stored in 'AL' register
    MOV AH , 2
    MOV DL , AL
    INT 21H 
    
    ;NEW LINE
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H
     
    ;###################################################;
    
    ; PART 2 - New line and print a string                
    MOV AH , 2
    MOV DL , NUM
    INT 21H
    
    ;new line
    ;MOV AH , 2
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H
    
    ;print A 
    ;MOV AH , 2
    MOV DL , CHAR
    INT 21H
    
    ;NEW LINE
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H
    
    ;print message
    MOV AH , 9
    LEA DX , MSG
    INT 21H                                             
    
    ;###################################################;
                                                         
    MOV AH , 4CH
    INT 21H       
    MAIN ENDP   
END MAIN        ;return 0