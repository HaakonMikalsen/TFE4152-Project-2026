//-----------------------------------------------------------------------------
//
// Title       : clockedInverter
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/clockedInverter.v
// Generated   : Tue Oct 20 12:38:35 2026
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
//{module {clockedInverter}}

module clockedInverter ( CLK ,CLK_N ,D ,Q );

input CLK;
wire CLK;
input CLK_N;
wire CLK_N;
input D;
wire D;
output Q;
wire Q;

//}} End of automatically maintained section

wire pmos1_pmos2;
pmos pmos1(pmos1_pmos2, 1,D);

pmos pmos2(Q, pmos1_pmos2,CLK_N);

wire nmos1_nmos2;
nmos nmos1(nmos1_nmos2, 0,D);

nmos nmos2(Q, nmos1_nmos2,CLK);


endmodule
