//-----------------------------------------------------------------------------
//
// Title       : nand3
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/nand3.v
// Generated   : Sun Oct 25 12:03:55 2026
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
//{module {nand3}}

module nand3 ( D1 ,D2 ,D3 ,Q );

input D1;
wire D1;
input D2;
wire D2;
input D3;
wire D3;
output Q;
wire Q;

//}} End of automatically maintained section

wire D1_D2;
and and1(D1_D2, D1, D2);

nand nan1(Q, D1_D2, D3);

endmodule
