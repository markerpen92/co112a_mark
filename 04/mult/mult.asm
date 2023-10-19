// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// refernece https://github.com/ptdriscoll/nand2tetris/blob/master/project4/Mult.asm
// Understand the reference once and then rewrite it

// step1 - 

@R0
D=M

@i
M=D

@sum
M=0

(LOOP)
@i
D=M
@STOP
D;JEQ

@sum
D=M
@R1
D=D+M
@sum
M=D

@i
M=M-1

@LOOP
0;JMP

(STOP)
@sum
D=M
@R2
M=D

(END)
@END
0;JMP