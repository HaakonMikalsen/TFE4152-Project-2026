//-----------------------------------------------------------------------------
//
// Title       : fullSetup
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/fullSetup.v
// Generated   : Tue Oct 27 13:02:52 2026
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
//{module {fullSetup}}

module fullSetup ( H,CLK ,P);

input H;
wire H;
input CLK;
wire CLK;
output P;
wire P;

//}} End of automatically maintained section

wire T;
wire R_N;
timer timer1(
	.CLK(CLK),
	.T(T),
	.R_N(R_N)
);


stateMachine sm1(
	.CLK(CLK),
	.H(H),
	.T(T),
	.P(P),
	.R_N(R_N) 
);

endmodule
