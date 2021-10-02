
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 05h

mul value2

add al, value1

mov result, al


ret

result DB ?

value1 DB 0Bh
value2 DB 0Fh


