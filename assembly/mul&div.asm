
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah, 09h         ;this is the command      //sub command "for this interupt I need to print something"

mov dx, offset msg

int 21h             ;executes the command    //interupts normal flow to go to the BIOS

mov al, var1        
mov bl, var2
mul bl              ;this is saying bl * al = # in al
mov product, al 

mov al, var1
mov bl, var2
div bl

ret

var1 db 5h
var2 db 6h

var3 db 0Dh
var4 db 0Ch

product db ?

msg db "Hello world! $"


