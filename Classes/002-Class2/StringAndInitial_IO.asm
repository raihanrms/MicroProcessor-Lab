; Course - MicroProcessor Lab
; Name: Raihan Munim
; ID: 181400138
; Program: 1. Print a message to get the initial
;          2. Take the inilial of the name and print it in a new line.             

.MODEL SMALL    ;include model size (small)
.STACK 100H     ;stack 100 hexadecimal space in stack memory as procedual input
.DATA           
;all of the variable would be declared here
     
    MSG1 DB "Enter your first initial: $"
                                

.CODE           
;code segment
    
MAIN PROC   ;int main
    ;code statement 
               
    ; IMPORTING DATA
    MOV AX , @DATA
    MOV DS , AX      
    
    ;###################################################;
    
    ; PART 1 - Print message to get the initial
    
    ;print the string
    MOV AH , 9
    LEA DX , MSG1
    INT 21H 
    
    ;NEW LINE
    MOV AH , 2
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H         

    
    ;###################################################;
       
    ;Part 2 - First initial input/output
    
    ;input is stored in 'AL' register
    MOV AH , 1
    INT 21H
    
    MOV BL , AL     ;we move it to BL

    MOV AH , 2
    MOV DL , 0DH
    INT 21H     
    
    MOV DL , 0AH
    INT 21H
    
    MOV DL , BL     ;again moved from BL to DL
    INT 21H
                                           
    
    ;###################################################;
                                                         
    MOV AH , 4CH
    INT 21H       
    MAIN ENDP   
END MAIN        ;return 0