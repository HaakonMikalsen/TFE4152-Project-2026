//-----------------------------------------------------------------------------
//
// Title       : DFlipFlop
// Design      : DFlipFliop
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/DFlipFliop/src/DFlipFlop.v
// Generated   : Tue Oct 20 09:39:28 2026
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
//{module {DFlipFlop}}

module DFlipFlop ( D ,CLK ,Q ,Qinv );

input D;
wire D;
input CLK;
wire CLK;
output Q;
wire Q;
output Qinv;
wire Qinv;

//}} End of automatically maintained section

wire Dnot;
not n1(Dnot, D); 

wire D_CLK;
nand nan1(D_CLK, D, CLK);

wire Dnot_CLK;
nand nan2(Dnot_CLK, Dnot, CLK);	  

nand nan3(Q, D_CLK, Qinv);

nand nan4(Qinv, Dnot_CLK, Q);

endmodule
