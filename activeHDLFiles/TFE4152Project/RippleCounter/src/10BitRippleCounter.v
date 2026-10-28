//-----------------------------------------------------------------------------
//
// Title       : \10BitRippleCounter\ 
// Design      : RippleCounter
// Author      : haakonkm
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/hakmi/Documents/TFE4152-Project-2026/activeHDLFiles/TFE4152Project/RippleCounter/src/10BitRippleCounter.v
// Generated   : Tue Oct 20 15:47:49 2026
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1 ms / 1 us

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {\10BitRippleCounter\ }}

module \10BitRippleCounter\  ( Q8 ,Q9 ,R_N ,CLK );

output Q8;
wire Q8;
output Q9;
wire Q9;
input R_N;
wire R_N;
input CLK;
wire CLK;

//}} End of automatically maintained section
// creates CLK from CLK inverted
wire CLK_N;
not not1(CLK_N,CLK);

// creates R inverted from R
wire R;
not not2(R, R_N);


// creates 8 Q and 10 Q_N wires from index 0 to 7  and 0-9
wire [9:0]Q; 
wire [9:0]Q_N;

TFF TFF0(
	.CLK(CLK),
	.CLK_N(CLK_N),	  
	.R(R),
	.R_N(R_N),
	.Q(Q[0]),
	.Q_N(Q_N[0])
);

genvar i;
generate
	for (i=1; i < 8; i++) begin : stages
		TFF TFF_i (
			.CLK(Q_N[i-1]),
			.CLK_N(Q[i-1]),	  
			.R(R),
			.R_N(R_N),
			.Q(Q[i]),
			.Q_N(Q_N[i])
		);
	end
endgenerate

// This is not optimal but i am unsure if we are allowed to use assign
TFF TFF8 (
	.CLK(Q_N[7]),
	.CLK_N(Q[7]),	  
	.R(R),
	.R_N(R_N),
	.Q(Q8),
	.Q_N(Q_N[8])
);

TFF TFF9 (
	.CLK(Q_N[8]),
	.CLK_N(Q8),	  
	.R(R),
	.R_N(R_N),
	.Q(Q9),
	.Q_N(Q_N[9])
);

// Only for nice debug
assign Q[8] = Q8;
assign Q[9] = Q9;


/*
wire [9:0]Q;
wire [9:0]Q_N;


TFF TFF0(
	.CLK(CLK),
	.R(R),
	.R_N(R_N), 
	.CLK_N(CLK_N), 
	.Q(Q[0]),
	.Q_N(Q_N[0]) 
);

TFF TFF1(
	.CLK(Q[0]),
	.CLK_N(Q_N[0]),
	.R(R),
	.R_N(R_N), 
	.Q(Q[1]),
	.Q_N(Q_N[1]) 
);

TFF TFF2(
	.CLK(Q[1]),
	.CLK_N(Q_N[1]),
	.R(R),
	.R_N(R_N), 
	.Q(Q[2]),
	.Q_N(Q_N[2]) 
);

TFF TFF3(
	.CLK(Q[2]),
	.CLK_N(Q_N[2]),
	.R(R),
	.R_N(R_N), 
	.Q(Q[3]),
	.Q_N(Q_N[3]) 
);

TFF TFF4(
	.CLK(Q[3]),
	.CLK_N(Q_N[3]),
	.R(R),
	.R_N(R_N), 
	.Q(Q[4]),
	.Q_N(Q_N[4]) 
);

TFF TFF5(
	.CLK(Q[4]),
	.CLK_N(Q_N[4]),
	.R(R),
	.R_N(R_N), 
	.Q(Q[5]),
	.Q_N(Q_N[5]) 
);

TFF TFF6(
	.CLK(Q[5]),
	.CLK_N(Q_N[5]),
	.R(R),
	.R_N(R_N), 
	.Q(Q[6]),
	.Q_N(Q_N[6]) 
);

TFF TFF7(
	.CLK(Q[6]),
	.CLK_N(Q_N[6]),
	.R(R),
	.R_N(R_N), 
	.Q(Q[7]),
	.Q_N(Q_N[7]) 
);

TFF TFF8(
	.CLK(Q[7]),
	.CLK_N(Q_N[7]),
	.R(R),
	.R_N(R_N), 
	.Q(Q[8]),
	.Q_N(Q_N[8]) 
);

TFF TFF9(
	.CLK(Q[8]),
	.CLK_N(Q_N[8]),
	.R(R),
	.R_N(R_N), 
	.Q(Q[9]),
	.Q_N(Q_N[9]) 
);


 */

endmodule
