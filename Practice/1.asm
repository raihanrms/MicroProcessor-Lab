; Syntax Structure, Basic Instructions and Importing data

.MODEL SMALL    ;include model size (small)
.STACK 200H     ;stack 200 hexadecimal space in stack memory as procedual input
.DATA           
;all of the data would be declared here
;DEFINE BYTE - 8bits register
;DEFINE WORD - 16 bits register

    ;BH BL 8 bits register - 1 byte
    ;BX    16 bits register - 1 word
    ;DB - define byte
    
    ; variable declaration
    NUM1 DB 'd' ;  d = 100 (ascii representation)
    NUM2 DB ?
    CHAR DB '#'
    STR DB "My name is Raihan"
    CHAR2 DB ?        
    
                                 

.CODE           
;code segment
    
MAIN PROC   ;int main
    ;code statement
    
    ;Instruction Destination , Source
    
    ; importing data
    MOV AX , @DATA    ; AX gets the 16bit address of data segment
    MOV DS , AX

                               
                               
    MOV AH , 4CH
    INT 21H
        
    MAIN ENDP   ;end of main function
END MAIN        ;return 0
