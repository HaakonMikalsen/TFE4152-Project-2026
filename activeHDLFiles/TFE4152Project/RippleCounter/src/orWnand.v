//-----------------------------------------------------------------------------
//
// Title       : orWnand
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/orWnand.v
// Generated   : Tue Oct 27 12:23:51 2026
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
//{module {orWnand}}

module orWnand ( A ,B ,Q );

input A;
wire A;
input B;
wire B;
output Q;
wire Q;

//}} End of automatically maintained section

wire A_N;
not n1(A_N,A);

wire B_N;
not n2(B_N,B);

nand nan1(Q,B_N,A_N);

endmodule
