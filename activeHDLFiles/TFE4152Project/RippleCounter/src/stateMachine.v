//-----------------------------------------------------------------------------
//
// Title       : stateMachine
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/stateMachine.v
// Generated   : Tue Oct 27 12:47:22 2026
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
//{module {stateMachine}}

module stateMachine ( CLK ,H ,T ,P ,R_N );

input CLK;
wire CLK;
input H;
wire H;
input T;
wire T;
output P;
wire P;
output R_N;
wire R_N;

//}} End of automatically maintained section
wire CLK_N;
not n1(CLK_N, CLK);

wire N_LSB;
wire C_LSB;
wire QLSB_N;

DFFStatic LSB_REG(
	.CLK(CLK),
	.CLK_N(CLK_N),
	.D(N_LSB),
	.R_N(1),
	.Q(C_LSB),
	.Q_N(QLSB_N)
); 

wire N_MSB;
wire C_MSB;
wire QMSB_N;

DFFStatic  MSB_REG(
	.CLK(CLK),
	.CLK_N(CLK_N),
	.D(N_MSB),
	.R_N(1),
	.Q(C_MSB),
	.Q_N(QMSB_N)
);

comb comb1(
	.H(H),
	.T(T),
	.C_LSB(C_LSB),
	.C_MSB(C_MSB),
	.N_LSB(N_LSB),
	.N_MSB(N_MSB),
	.R_N(R_N),
	.P(P)
);

endmodule
