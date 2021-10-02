
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov sum, 00h  
mov al, 00h

repeat:
    inc al
    add sum, al
    cmp al, 0Ah
    je exit
    jmp repeat 

exit:

ret

sum DB ?


