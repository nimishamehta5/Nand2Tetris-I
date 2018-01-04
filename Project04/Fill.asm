        @8192
        D=A
        @n
        M=D     

	(LABEL)
        @i
        M=0     

	(LOOP1)
        @KBD
        D=M
        @WHITEN
        D;JEQ   
	      //@BLACKEN
	      //D;JGT

	(BLACKEN)
        @i
        D=M
        @SCREEN
        A=A+D   
        M=-1  
	      @i
	      M=M+1  
        @END
        0;JMP   

	(WHITEN)
        @i
        D=M
        @SCREEN
        A=A+D   
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
        @LABEL
        D;JEQ 
        @LOOP1
        0;JMP 
