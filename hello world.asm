
.Model Small

.Stack 100H

.Data 
    
    CRLF DB 13 , 10 , '$'
    MSG DB 'Hello World!$'
    
.Code
MAIN Proc
    MOV AX, @Data
    MOV DS, AX
    MOV AH, 9     ; doc noi dung dia chi o nho DX
    LEA DX ,MSG
    INT 21H
    MOV AH, 4CH
    INT 21H
    
MAIN Endp
END MAIN




