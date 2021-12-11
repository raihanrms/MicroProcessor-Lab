INCLUDE 'EMU8086.INC'   ;to include built-in macro functions
.MODEL SMALL            ;include model size (small)
.STACK 100H             ;stack 100 hexadecimal space in stack memory as procedual input
.DATA                   ;all of the variable would be declared here                              

.CODE                   ;code segment

    
MAIN PROC               ;int main
    ;code statement 

    
    ;###################################################;         
   
    ; FIND OUT IF THE NUMBER IS NEGATIVE OR POSITIVE
    MOV BX , 10  ;random number
    
    ;compare if bx is JL(jump less) = (-ve), JGE(jump greater or equal) = (+ve)                     
    CMP BX , 0                                                                 
    
    JL IF
    JGE ELSE
    
    IF:
    PRINTN "Number is negative! "
    JMP END_IF:     
    
    ELSE:
    PRINTN "Number is positive! "
    JMP END_IF:     
    
    END_IF:   ;or else it will continue printing all the msg's
                                                        
    MOV AH , 4CH
    INT 21H       
    MAIN ENDP   
END MAIN        ;return 0