
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 04h
mov bl, 0Ah
mov cl, 00h

repeat:             ;this is a do/while loop
    add cl, 5
    ;inc al         ;increments register or memery value by 1 
    dec bl          ;decrements register or memory value by 1
    cmp al, bl 
    jl repeat 


ret




