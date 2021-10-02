
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h    


;---------do/while loop--------- 

;mov al, 07h
;
;label1:            ;this loop will check the condition last
;     add al, 0Ah
;     cmp al, 064h  ;comparing al with 64
;     jl label1     ;jump if less
;     jmp exit      ;jump unconditionally
;exit:
;    nop            ;no operation
;ret             
   
   
   
;---------Counter Control Loop--------- 

;mov cl, 0Ah         ;the counter will always decrement after each loop   /if cl was 0 then it would be
;                    ;an almost endless loop
;mov bl, 00h
;
;label1:             
;    add bl, 02h
;    loop label1    
;ret         



;---------While Loop---------

;mov al, 0Ah
;mov bl, 0Ah 
;
;cmp al, bl          ;this is the comparrison   al too bl
;jnl exit            ;jump to exit if NOT less than
;jle body            ;jump to body if less than
;
;body:
;    inc al          ;increments al by 1
;    cmp al, bl
;    jl body
;                    ;if true then repeat 
;exit:
;    nop
;ret

;---------Procedure---------//a group of instructions with a label

;mov al, 03h
;mov bl, 02h
;
;call proc1
;
;mov al, 00h  
;
;ret                  ;this is the point where the program goes back to the OS
;
;proc1 proc           ;this states that proc1 is a procedure
;    add al, num1 
;    add al, num2
;    mov num2, al
;    
;    ret              ;returns to just after the proc1 was called
;    proc1 endp       ;end procedure 
;
;num1 db 05h
;num2 db 01h   


;---------Example of Procedure---------  


;call proc1         ;calls the procedure and goes to address where proc1 is located
;
;ret
;
;proc1 proc         ;begining of procedure 
;    mov bl, 05h
;    mov al, 64h
;    mul bl         ;multiplication only requires one opperand. Multiplies al (100) by bl (5) 
;                   ;this must be a memory to register or register to memory equation!
;    mov result, al ;stores al to result
;    
;    ret
;    proc1 endp     ;marks the end of the procedure with endp
;
;result db 00h  



;---------Arrays---------
                         
mov ax, array1[0]
mov bx, array1[4]

mov cx, array1[0Ah]        ;this accessing an address that does not belong to my program
                           ;reframe from doing this
    
                         
ret

array1 DW 02h, 04h, 06h, 08h, 0Ah    



