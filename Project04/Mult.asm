@R1	//n=RAM[1]
D=M
@n
M=D
@i	//i=1
M=1
@mul	//mul=0
M=0

(LOOP)
@i
D=M
@n
D=D-M
@STOP
D;JGT	//Jump to STOP if (i-n)>0

@R0
D=M
@mul
M=M+D	//mul+=RAM[0]
@i
M=M+1	//i++
@LOOP
0;JMP	//Jump to LOOP

(STOP)
@mul
D=M
@R2
M=D	//R2=mul

(END)
@END
0;JMP	//Inf loop