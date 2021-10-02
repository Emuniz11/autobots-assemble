
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx, 05h

repeat:
    dec cx  
    cmp cx, 00h
    
    mov ah, 09h
    mov dx, offset msg1
    int 21h
    
    mov ah, 01h
    int 21h  
    
    mov store, al
    
    mov ah, 09h
    mov dx, offset msg2
    int 21h
             
    mov dl, store
    mov ah, 02h
    int 21h 
    
    mov ah, 09h
    mov dx, offset space
    int 21h
    
    je exit
    jmp repeat
    
exit:

ret
 
msg1 DB "Enter a character $"
msg2 DB " You entered $"
space DB " $"
store DB ?


