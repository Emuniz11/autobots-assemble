
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cl, 05h 

mov ah, 09h

mov dx, offset msg

int 21h 

mov ah, 01h         ;this does not need to go in the loop

input: 
    int 21h 
    loop input

ret

char1 db ?
char2 db ?
holder db ?
msg db "Print 5 characters $"
