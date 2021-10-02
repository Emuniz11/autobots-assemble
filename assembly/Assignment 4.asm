
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  

mov ah, 01h           ;getting input
int 21h    

mov store, al         ;storing input

mov ah, 09h           ;stating input
mov dx, offset msg1
int 21h         

mov dl, store         ;storeing store to dl to print the input

mov ah, 02h           ;printing user input
int 21h

cmp store, 35h        ;comparing usuer input to 5
           
je equal              ;jumps to alteri input according to the comparrision to 5
jg greater
jl less


greater:              ;these will alter the user input
        sub al, 05h
        jmp exit
less:
        add al, 05h
        jmp exit
equal:
        add al, 03h
        jmp exit  
exit: 
        mov store, al 
        
mov ah, 09h
mov dx, offset msg2   ;stating new number
int 21h

mov dl, store
mov ah, 02h           ;printing altered user input 
int 21h   

ret

store DB ?
msg1 DB " Your number is $"  
msg2 DB " Your new number is $"


