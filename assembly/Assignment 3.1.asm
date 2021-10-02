
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov bl, num1  ;num1 is moved to register bl

add bl, num2  ;adding num2 to bl
add bl, num3  ;adding num3 to bl

mov result, bl  ;the value in bl is then stored in result

ret

result DB ? 

num1 DB 17h   ;These are the hex equivilant
num2 DB 22h
num3 DB 2Dh


