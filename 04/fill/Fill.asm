// reference https://github.com/ptdriscoll/nand2tetris/blob/master/project4/Fill.asm
// Understand the reference once and then rewrite it

// M-memory   |    D-data    |    A-addr

// step1 - a value '24575' storage in arg 'screenend' {@'value' \n D=A \n @'arg' \n M=D}
// step2 - loop an adress 'SCEEN adress' in arg 'i' {(LOOP) @'Adress Name' D=A @'arg' M=D}
// step3 - set white color '0' in 'color adress' {@color M=0}
// step4 - if condition is true exe code and goto 'SCREENLOOP' {@'keyboard adress' D=M @'loop label' D;JEQ} 
//         D;JEQ - to check KeyboardAdress has input or not
// step5 - set white color '1' in 'color adress' {@color M=1}
// step6 - a SCREELOOP label {(SCREENLOOP)}  end of screenloop?
// step7 - start painting all pixels {@i D=M @'screenend addr' D=D-M @'Loop addr' D;JGT}    
//         D;JGT - to check if D is larger than 1 or not
//         get i addr to memory to data ->  get 'screenend addr' to memory -> data i minus screenend to check is end or not & to data -> if data > 0 means not end
// step8 - set pixel color {@'color addr' D=M @'SCREEN addr' A=M M=D @'SCREEN addr'=@'SCREEN addr'+1}
// step9 - define SCREENLOOP {@SCREENLOOP 0;JMP} if 0 end SCREENLOOP

@24575
D=A
@screenend
M=D

(LOOP)
@screenaddr 
D=A
@i
M=D

@color
M=0

//@KeyIsInput
@KBD
D=M

@SCREENLOOP
D;JEQ
@color
M=-1
(SCREELOOP)

@i
D=M
@screenend
D=D-M
@LOOP
D;JGT

@color
D=M
@i
A=M
M=D
M=M+1

@SCREENLOOP
0;JGT