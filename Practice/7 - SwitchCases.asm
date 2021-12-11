; IF ELSE LADDER / SWITCH CASES
; A NUMBER IS >= 100 ? OR >= 80 ? OR >= 60 ? OR >= 40 ? OR >= 20 ? OR < 20
; >= 100 - THE NUMBER IS GREATER OR EQUAL TO 100

INCLUDE 'EMU8086.INC'   ;to include built-in macro functions
.MODEL SMALL            ;include model size (small)
.STACK 100H             ;stack 100 hexadecimal space in stack memory as procedual input

.DATA                   ;all of the variable would be declared here                              


.CODE                   ;code segment

    
MAIN PROC               ;int main
    ;code statement 

    
    ;###################################################;         
   
    ; FIND OUT IF THE NUMBER IS NEGATIVE OR POSITIVE
    
    MOV BX , 100  ;random number
                         
    CMP BX , 100    ;COMPARE >= 100                                                                
    JGE IF1
    
    CMP BX , 80     ;COMPARE >= 80                                                                
    JGE IF2
              
    CMP BX , 60     ;COMPARE >= 60
    JGE IF3
    
    CMP BX , 40     ;COMPARE >= 40
    JGE IF4
    
    CMP BX , 20     ;COMPARE >= 20
    JGE IF5
    
    JMP ELSE        ;default case
    
    IF1:
    PRINTN "The number is greater or equal to 100!"
    JMP END_IF
    
    IF2:
    PRINTN "The number is greater or equal to 80!"
    JMP END_IF
    
    IF3:
    PRINTN "The number is greater or equal to 60!"
    JMP END_IF
    
    IF4:
    PRINTN "The number is greater or equal to 40!"
    JMP END_IF
    
    IF5:
    PRINTN "The number is greater or equal to 20!"
    JMP END_IF
    
    ELSE:
    PRINTN "The number is less than 20!"
    ;JMP END_IF 
    
    
    END_IF:
        
       
    ;###################################################;
                                                        
    MOV AH , 4CH
    INT 21H       
    MAIN ENDP   
END MAIN        ;return 0

