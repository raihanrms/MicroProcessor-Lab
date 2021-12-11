.MODEL SMALL    ;include model size (small)
.STACK 100H     ;stack 100 hexadecimal space in stack memory as procedual input
.DATA           
;all of the variable would be declared here                              

.CODE           
;code segment

    A DB ?      ; value not yet assigned
    B DB ?
    
MAIN PROC   ;int main
    ;code statement 
               
    ; IMPORTING DATA
    MOV AX , @DATA
    MOV DS , AX
    
    ;###################################################;   
             
    ;Input  A , B
    ;Output A + B
    
    ;input
    MOV AH , 1
    INT 21H ;taking input with this
    
    ;save input
    ;INSTRUCTION DESTINATION , SOURCE
    MOV A , AL
    SUB A , 48 ;ascii rep so, A = A - 48
    
    INT 21H
    MOV B , AL                          
    SUB B , 48 ;ascii rep so B = B - 48
    
    
    ; as most of the numbers are represented with ascii value we have
    ; to factor that in, so we are adding 48 back to BH to get the
    ; exact number
    
    MOV BH , A      ; BH = A
    ADD BH , B      ; BH = BH + B
    ADD BH , 48     ; BH = BH + 48
    
    MOV AH , 2
    
    ;NEW LINE
    MOV DL , 0AH    ; \n = 0A
    INT 21H
    MOV DL , 0DH    ; return char = 0D
    INT 21H
    
    
    ;output of the sum
    MOV DL , BH
    INT 21H 
                                                 
    
    ;###################################################;
                                                         
    MOV AH , 4CH
    INT 21H       
    MAIN ENDP   
END MAIN        ;return 0