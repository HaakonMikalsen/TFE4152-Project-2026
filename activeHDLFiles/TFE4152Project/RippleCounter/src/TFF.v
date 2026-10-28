//-----------------------------------------------------------------------------
//
// Title       : TFF
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/TFF.v
// Generated   : Tue Oct 20 14:39:44 2026
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
//{module {TFF}}

module TFF ( CLK ,R ,R_N ,CLK_N ,Q ,Q_N );

input CLK;
wire CLK;
input R;
wire R;
input R_N;
wire R_N;
input CLK_N;
wire CLK_N;
output Q;
wire Q;
output Q_N;
wire Q_N;

//}} End of automatically maintained section

// STATIC
DFFStatic DFF1(
	.R_N(R_N),
	.CLK_N(CLK_N),
	.CLK(CLK),
	.D(Q_N),
	.Q(Q),
	.Q_N(Q_N));

/*	
// NOT STATIC
DFF DFF1(
	.R(R),
	.R_N(R_N),
	.CLK_N(CLK_N),
	.CLK(CLK),
	.D(Q_N),
	.Q(Q),
	.Q_N(Q_N)
); 
*/
endmodule
