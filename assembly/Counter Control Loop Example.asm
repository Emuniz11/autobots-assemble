
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cl, 0Ah             ;cx is a dedicated counter register     
                        ;for a counter control loop you initialize the
                        ;cx/cl register
mov dl, 00h             
                        ;repeat is a label under which the group of intructions 
                        ;function as one
repeat: 
    add dl, 1 
    loop repeat         ;loop will repeatedly execute the labeled code 
                        ;until the counter is zero

ret




