(BEGIN)  
	@n
	M=0
	
(LOOP)
	// if (n==8192) goto BEGIN and start at pos 0,0 again
	@n
	D=M
	@8192
	D=D-A
	@BEGIN
	D;JEQ
	
	// Go to @SCREEN + @n
	@n
	D=M
	@SCREEN
	D=D+A	
	@ADDR
	M=D
	// If kbd == 0, goto WHITE. Else, fall through to black
	@KBD
	D=M
	@WHITE
	D;JEQ 
	
(BLACK)
	// Color the pixel black, then jump forward to continue
	@ADDR
	A=M
	M=-1
	@CONT
	0;JMP
	
	
(WHITE)
	// Color the pixel white	
	@ADDR
	A=M
	M=0
	
(CONT)
	// Increment @n by 1
	@n
	M=M+1
	
	// goto LOOP
	@LOOP
	0;JMP
	
(END)
	@END
	0;JMP
	