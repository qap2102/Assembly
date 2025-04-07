      

.Model Small 
.Stack 100 
.Data 
			
		ChaoTay	DB 	'Hello PTIT OJ.$'
		ChaoTa	DB 	'chao ban!$'
.Code
MAIN Proc
		
		MOV AX, @Data	
		MOV DS, AX
                             
		
		MOV AH, 9
                                 
        
		                             
		
		
		LEA DX, ChaoTay
		INT 21H      
		
		
		MOV AH, 4CH
		INT 21H
MAIN Endp
END 		
      



