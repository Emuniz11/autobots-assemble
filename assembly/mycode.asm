
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, number1     ; copy the value in number1 to register al
mov bl, number2     ; copy the value in number2 to register bl
mov cl, 5h          ; initialize the counter to a literal value of 5
         
add al, bl          ; add the content in register al and bl and store the result in al        
           
mov result, al      ; store the result in the variable result           
            
mov dl, var1
sub dl, var2        ; This is a memory to register operation *** Only one variable needs to be in register!            
        
mov ah, 09h         ; Always move the subcommand to register ah! ah is the dedicated register        
                    ; to print a string, the subcomman is 09h 
mov dx, offset msg  ;must move the offset of the string to register
                    ;printing port is dx
                
int 21h             ; 21h is the BIO command to execute                  
ret                

; Variables are placed after the return!

number1 DB 2h       ; declare a variable named number1 and initialize it to the hex value of 2
number2 DB 0Ah      ; 
result DB ?         ; result is declared but not initialized. Use a ? to indicate there is no value

var1 DB 07h
var2 DB 0Dh  

msg DB "Eric $" 