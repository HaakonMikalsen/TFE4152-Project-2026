//-----------------------------------------------------------------------------
//
// Title       : DFFStatic
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/DFFStatic.v
// Generated   : Sun Oct 25 11:49:15 2026
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
//{module {DFFStatic}}

module DFFStatic ( CLK ,CLK_N ,D ,R_N ,Q ,Q_N );

input CLK;
wire CLK;
input CLK_N;
wire CLK_N;
input D;
wire D;
input R_N;
wire R_N;
output Q;
wire Q;
output Q_N;
wire Q_N;

//}} End of automatically maintained section

wire QM;
wire QM_N;

DLatchStatic master(
	.EN(CLK_N),
	.R_N(R_N),
	.D(D),
	.Q(QM),
	.Q_N(QM_N)
);

DLatchStatic slave(
	.EN(CLK),
	.R_N(R_N),
	.D(QM),
	.Q(Q),
	.Q_N(Q_N)
);



endmodule
