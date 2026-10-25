//-----------------------------------------------------------------------------
//
// Title       : DLatchStatic
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/DLatchStatic.v
// Generated   : Sun Oct 25 11:47:04 2026
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
//{module {DLatchStatic}}

module DLatchStatic ( EN ,D ,R_N ,Q ,Q_N );

input EN;
wire EN;
input D;
wire D;
input R_N;
wire R_N;
output Q;
wire Q;
output Q_N;
wire Q_N;

//}} End of automatically maintained section


wire D_N;
not n1(D_N, D);

wire DEN;
nand nan1(DEN, D, EN);

nand nan2(Q, DEN, Q_N);

wire D_NEN;
nand nan3(D_NEN, D_N, EN);

nand3 nan4(
	.D1(Q),
	.D2(D_NEN),
	.D3(R_N),
	.Q(Q_N)
);

endmodule
