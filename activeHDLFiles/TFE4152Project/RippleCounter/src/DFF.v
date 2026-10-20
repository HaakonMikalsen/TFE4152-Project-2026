//-----------------------------------------------------------------------------
//
// Title       : DFF
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/DFF.v
// Generated   : Tue Oct 20 12:36:30 2026
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
//{module {DFF}}

module DFF ( D ,CLK ,CLK_N ,R ,R_N ,Q ,Q_N );

input D;
wire D;
input CLK;
wire CLK;
input CLK_N;
wire CLK_N;
input R;
wire R;
input R_N;
wire R_N;
output Q;
wire Q;
output Q_N;
wire Q_N;

//}} End of automatically maintained section


nmos nmos1(Q, D, CLK);
pmos pmos1(Q, D, CLK_N);


endmodule
