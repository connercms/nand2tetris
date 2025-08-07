(BEGIN)
	// INITIALIZE R2
	@R2		 
	M=0 	
	
	// IF R0 = 0, JMP END
	@R0 
	D=M
	@END 
	D;JEQ  
	
(LOOP)	     
	// IF R1 = 0, JMP END 
	@R1 
	D=M 
	@END 
	D;JEQ  		
	
	// ADD R0 TO R2
	@R0		 		
	D=M		 
	@R2 	 		
	M=D+M	 
	
	// DECREMENT R1 
	@R1 	 
	M=M-1	 
	
	// JUMP TO START OF LOOP
	@LOOP	 
	0;JMP
	
(END)
	@END
	0;JMP