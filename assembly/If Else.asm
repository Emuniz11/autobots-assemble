
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 'a'
mov bl, 00h

cmp al, char1            ;this is a compare  //  is al greater/less/equal to char1?

je  equal                ;jump if equal too
jl  less                 ;jump if less than
jg  greater              ;jump if greater than
 
equal:
       add bl, 2         ;if they are equal then add 2 to bl  
       jmp exit
            
less: 
       sub bl, 2         ;if al is less than char1 the program jmps here 
       jmp exit          ;so not every case is executed we have to jmp to an exit!!
                   
greater:                
       mov ah, 02h       
       mov dl, 'g'
       int 21h     
       jmp exit
exit:                
               
ret

char1 db 'b'


