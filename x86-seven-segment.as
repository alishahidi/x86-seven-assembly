seven0: db "01111110" 
seven1: db "00110000" 
seven2: db "01101101" 
seven3: db "01111001" 
seven4: db "00110011"  
seven5: db "01011011"  
seven6: db "01011111"
seven7: db "01110000" 
seven8: db "01111111" 
seven9: db "01111011"

error: db "input error"

start:
    mov ah, 0x1              
    int 0x21
    mov ah, 2
    
    cmp al, 0x30
    jl err_print
    cmp al, 0x39
    jg err_print   
    
    cmp al, 0x30
    je n0
    
    cmp al, 0x31
    je n1
    
    cmp al, 0x32
    je n2
    
    cmp al, 0x33
    je n3
    
    cmp al, 0x34
    je n4
    
    cmp al, 0x35
    je n5
    
    cmp al, 0x36
    je n6
    
    cmp al, 0x37
    je n7
    
    cmp al, 0x38
    je n8

    cmp al, 0x39
    je n9
    
    n0:
        mov bp, offset seven0
        jmp print_bin
    n1:
        mov bp, offset seven1
        jmp print_bin
    n2:
        mov bp, offset seven2
        jmp print_bin
    n3:
        mov bp, offset seven3
        jmp print_bin
    n4:
        mov bp, offset seven4
        jmp print_bin
    n5:
        mov bp, offset seven5
        jmp print_bin
    n6:
        mov bp, offset seven6
        jmp print_bin
    n7:
        mov bp, offset seven7
        jmp print_bin
    n8:
        mov bp, offset seven8
        jmp print_bin
    n9:
        mov bp, offset seven9
        jmp print_bin

    print_bin:
        MOV AH, 0x13            ; move BIOS interrupt number in AH
        MOV CX, 8              ; move length of string in cx
        MOV BX, 0               ; mov 0 to bx, so we can move it to es
        MOV ES, BX              ; move segment start of string to es, 0
        MOV DL, 0               ; start writing from col 0
        int 0x10                ; BIOS interrupt

    jmp eop
    
;; help from https://github.com/YJDoc2/8086-Emulator/blob/master/examples/hello_world.s
err_print: ;; bios video
    MOV AH, 0x13            ; move BIOS interrupt number in AH
    MOV CX, 15              ; move length of string in cx
    MOV BX, 0               ; mov 0 to bx, so we can move it to es
    MOV ES, BX              ; move segment start of string to es, 0
    MOV BP, OFFSET error    ; move start offset of string in bp
    MOV DL, 0               ; start writing from col 0
    int 0x10                ; BIOS interrupt
    
eop: 
   HLT