//-----------------------------------------------------------------------------
//
// Title       : timer
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/timer.v
// Generated   : Tue Oct 27 11:54:12 2026
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1 ms / 1 us

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {timer}}

module timer ( CLK ,T ,R_N );

input CLK;
wire CLK;
output T;
wire T;
input R_N;
wire R_N;

//}} End of automatically maintained section

wire Q8;
wire Q9;


\10BitRippleCounter\ RC(
	.CLK(CLK),
	.R_N(R_N),
	.Q8(Q8),
	.Q9(Q9)
);

and and1(T, Q8, Q9);

endmodule
