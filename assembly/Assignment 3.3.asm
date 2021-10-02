
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

mov ah, 02h

mov dl, 31h
int 21h  

mov dl, 32h
int 21h   

mov dl, 33h
int 21h

mov dl, 34h
int 21h    

mov ah, 09h         

mov dx, offset msg1
int 21h

mov dx, offset msg2 
int 21h

ret

msg1 DB "Good Morning! $"
msg2 DB "Let's begin. $"


