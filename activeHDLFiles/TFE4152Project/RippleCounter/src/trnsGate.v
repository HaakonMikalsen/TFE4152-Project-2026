//-----------------------------------------------------------------------------
//
// Title       : trnsGate
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/trnsGate.v
// Generated   : Tue Oct 20 12:30:30 2026
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
//{module {trnsGate}}

module trnsGate ( D ,EN ,EN_N ,Q );

input D;
wire D;
input EN;
wire EN;
input EN_N;
wire EN_N;
output Q;
wire Q;

//}} End of automatically maintained section	

nmos nmos1(Q, D, EN);
pmos pmos1(Q, D, EN_N);	

endmodule
