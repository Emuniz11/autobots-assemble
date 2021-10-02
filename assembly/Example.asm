
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  

mov ah, 09h            

mov dx, offset msg

int 21h

mov ah, 01h 

int 21h

mov dl, al      ;stores the input char and stores it in dl

mov ah, 02h

int 21h

ret


msg db "Please enter a character: $"

char db ?