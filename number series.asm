           .model small
.data
    
   msg1 db "FIBONACCI FIRST 5 TERMS$"
.stack 100h
.code
main proc 
    call fibonacci
main endp
fibonacci proc
    lea DX, msg1           
    mov AH, 09h            
    int 21h                                               
                            
    mov DL, 20h             
    mov AH, 02h             
    int 21h                          
 
    mov BH, 1
	mov DH, 1 
    mov CX, 5 
    fibLoop:
    or DL, 30h
		mov AH, 02h
		int 21h
		mov DL, DH
		mov DH, BH
		    
		push DX
	        mov AL, DL
	        mov AH, DH
	        add AH, AL
	        mov BH, AH 
	    pop DX
	loop fibLoop
		
	ret
    fibonacci endp

end main