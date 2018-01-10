        @8192		//To fill all 256 rows (256*32)
        D=A
        @n
        M=D     	//n=8192

	(LABEL)		
        @i
        M=0     	

	(LOOP1)		//Continuous Loop
        @KBD
        D=M
        @WHITEN
        D;JEQ   	//WHITEN if RAM[KBD]=0
	//@BLACKEN
	//D;JGT

	(BLACKEN)
        @i
        D=M
        @SCREEN
        A=A+D   	//Setting all pixels to 1's
        M=-1  
	@i
      	M=M+1  
        @END
        0;JMP   

	(WHITEN)
        @i
        D=M
        @SCREEN
        A=A+D   	//Setting all pixels to 0's
        M=0     
      	@i
      	M=M+1
      	@END
      	0;JMP

	(END)   
        @i
        D=M
        @n
        D=D-M
        @LABEL		//Reset i when last pixel is reached
        D;JEQ 
        @LOOP1
        0;JMP 
