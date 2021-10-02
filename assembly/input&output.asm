
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov dl, 31h

mov ah, 02h ;subcommand to print a char  //never overwritten so only needed once                                      
            
int 21h     

mov dl, 32h

int 21h    

mov ah, 01h ;subcammand for READING a char

            ;the READ input goes to al
int 21h     ;this will execute the command
            ;since the input is automatically put in al then 
            ;to print out the input then you need to move al too dl
            ;dl is where all print char goes
mov dl, al
mov ah, 02h ;the subcommand is different because this will print a char
int 21h


ret




