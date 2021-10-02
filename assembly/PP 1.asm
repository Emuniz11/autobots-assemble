
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah, 01h

int 21h

mov char1, ah

mov ah, 01h

int 21h

mov char2, al


ret

char1 db ?
char2 db ?


