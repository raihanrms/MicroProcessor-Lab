; Course - MicroProcessor Lab
; Name: Raihan Munim
; ID: 181400138

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
    
    ; PUT YOUR CODE HERE
    
                                   
    ;###################################################;
                                                         
    MOV AH , 4CH
    INT 21H       
    MAIN ENDP   
END MAIN        ;return 0