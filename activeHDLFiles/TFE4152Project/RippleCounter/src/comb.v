//-----------------------------------------------------------------------------
//
// Title       : comb
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/comb.v
// Generated   : Tue Oct 27 12:21:32 2026
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
//{module {comb}}

module comb ( H ,T ,C_MSB ,C_LSB ,R_N ,N_MSB ,N_LSB ,P );

input H;
wire H;
input T;
wire T;
input C_MSB;
wire C_MSB;
input C_LSB;
wire C_LSB;
output R_N;
wire R_N;
output N_MSB;
wire N_MSB;
output N_LSB;
wire N_LSB;
output P;
wire P;

//}} End of automatically maintained section

// P. P = LSB
assign P=C_LSB;


// R_N. R = MSB+LSB, R inv = not (MSB+LSB)
wire R;
orWnand or1(
	.A(C_LSB),
	.B(C_MSB),
	.Q(R)
);

not n1(R_N, R);

// N_MSB, Next MSB = H
assign N_MSB=H;

// N_LSB, NEXT LSB = T * inv(H+R)
wire HR;
orWnand or2(
	.A(H),
	.B(R),
	.Q(HR)
);

wire HR_N;
not n2(HR_N,HR);

and and1(N_LSB, T, HR_N);


endmodule












