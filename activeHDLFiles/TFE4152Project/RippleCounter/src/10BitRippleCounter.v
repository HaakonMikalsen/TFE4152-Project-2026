//-----------------------------------------------------------------------------
//
// Title       : \10BitRippleCounter\ 
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/10BitRippleCounter.v
// Generated   : Tue Oct 20 15:47:49 2026
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {\10BitRippleCounter\ }}

module \10BitRippleCounter\  ( Q8 ,Q9 ,R_N ,CLK );

output Q8;
wire Q8;
output Q9;
wire Q9;
input R_N;
wire R_N;
input CLK;
wire CLK;

//}} End of automatically maintained section
wire CLK_N;
not not1(CLK_N,CLK);

wire R;
not not2(R, R_N);

wire Q0;
wire Q1;
wire Q2;

wire Q_N_0;
wire Q_N_1;
wire Q_N_2;

TFF TFF0(
	.CLK(CLK),
	.R(R),
	.R_N(R_N), 
	.CLK_N(CLK_N), 
	.Q(Q0),
	.Q_N(Q_N_0) 
);

TFF TFF1(
	.CLK(Q_N),
	.R(R),
	.R_N(R), 
	.CLK_N(Q_N_0), 
	.Q(Q1),
	.Q_N(Q_N_1) 
);

TFF TFF2(
	.CLK(Q_0),
	.R(R),
	.R_N(R_N), 
	.CLK_N(Q_N_1), 
	.Q(Q2),
	.Q_N(Q_N_2) 
);


endmodule
