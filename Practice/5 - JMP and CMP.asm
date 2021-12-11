;UNCONDITIONAL JUMP
;JMP KEYWORD

;CONDITIONAL JUMPS
;CHP KEYWORD

;CMP COMPARED TO COMPARED WITH 
;CMP BX, CX MEANING IS BX> OR <CX OR ==

;JE/JZ      Jump Equal or Jump Zero                 ZF
;JNE/JNZ    Jump not Equal or Jump Not Zero         ZF 
;JG/JNLE    Jump Greater or Jump Not Less/Equal     OF , SF , ZF
;JGE/JNL    Jump Greater/Equal or Jump Not Less     OF , SF
;JL/JNGE    Jump Less or Jump Not Greater/Equal     OF , SF
;JLE/JNG    Jump Less/Equal or Jump Not Greater     OF , SF , ZF

;JE/JZ      Jump Equal or Jump Zero                 ZF
;JNE/JNZ    Jump not Equal or Jump Not Zero         ZF
;JA/JNBE    Jump Above or Jump Not Below/Equal      CF , ZF
;JAE/JNB    Jump Above/Equal or Jump Not Below      CF
;JB/JNAE    Jump Below or Jump Not Above/Equal      CF
;JBE/JNA    Jump Below/Equal or Jump Not Above      AF , CF

;JXCZ       Jump if CX is Zero none
;JC         Jump If Carry                           CF
;JNC        Jump if No Carry                        CF
;JO         Jump if Overflow                        OF
;JNO        Jump if No Overflow                     OF
;JP/JPE     Jump Parity or Jump Parity Even         PF
;JNP/JPO    Jump No Parity or Jump Parity Odd       PF
;JS         Jump Sign (negative value)              SF
;JNS        Jump No Sign (positive value)           SF


INCLUDE 'EMU8086.INC'   ;include built in macros
.MODEL SMALL            ;include model size (small)
.STACK 100H             ;stack 100 hexadecimal space in stack memory as procedual input
.DATA           
;all of the variable would be declared here                              

.CODE           
;code segment

    
MAIN PROC   ;int main
    ;code statement 
               
    ; IMPORTING DATA
    MOV AX , @DATA
    MOV DS , AX
    
    ;INCREMENTS
    ;INC BX ; BX = BX + 1 ; BX++
                                
    ;DECREMENTS
    ;DEC BX ; BX = BX - 1 ; BX--
    
    ;###################################################;
    
    ;unconditional jump, making an infinite loop
    ;UCJ:
    
    ;PRINTN "UNCONDITIONAL JUMP"
    ;JMP UCJ
                                           
    ;###################################################;
    
    ;conditional jump
    MOV CX , 5  ; given
    MOV BX , 0  ;initialise ; INT I = 0
    
    CJ:
    CMP BX , CX ; CONDITION CHECK; I < N ; BX < CX
    
    JE LAST     ;if equal, loop breaks
    PRINTN "CONDITIONAL JUMP"
    
    INC BX    
    JNE CJ      ; if not equal, increments BX and returns to CJ
    
    LAST:
    PRINTN "LOOP BROKE"

    ;###################################################;
                                                         
    MOV AH , 4CH
    INT 21H       
    MAIN ENDP   
END MAIN        ;return 0
