;XCHG KEYWORD - works like mov keyword, exchanges two elements/words

INCLUDE 'EMU8086.INC'   ;to include built-in macro functions
.MODEL SMALL    ;include model size (small)
.STACK 100H     ;stack 100 hexadecimal space in stack memory as procedual input
.DATA           
;all of the variable would be declared here                              

.CODE           
;code segment

    
MAIN PROC   ;int main
    ;code statement 

    
    ;###################################################;         
    
    MOV BL , 53     ; 5 = 53 in ascii
    mov BH , 55     ; 7
    
    XCHG BH , BL
    
    ;print BL, value of BL got changed with 7
    MOV AH , 2
    MOV DL , BL
    INT 21H                                  
    
    ;NEW LINE
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H
    
    ;print BH, which is 5
    MOV AH , 2
    MOV DL , BH
    INT 21H
    
    ;NEW LINE
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H
    
    ;###################################################;
                                                         
    ;MACRO FUNCTIONS
    ;PRINT - print a string without new line
    PRINT "HELLO WORLD 1"
    PRINT " HELLO WORLD 2" 
    
    ; just a new line
    PRINTN
    
    ;PRINTN - print a string with new line
    PRINTN "HELLO WORLD 3"
    PRINTN "HELLO WORLD 4"                                                         
                                                         
                                                         
    ;###################################################;
                                                         
    MOV AH , 4CH
    INT 21H       
    MAIN ENDP   
END MAIN        ;return 0