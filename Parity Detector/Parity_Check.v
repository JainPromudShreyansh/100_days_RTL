//////////////////////////////////////////////////////////////////////////////////
//Designer: Shreyansh Promud Jain
// Design Name:Parity Detector 
// Module Name:Parity Detector
// Project Name: 100 days RTL.
// Description: Designing a simple 4 bit Parity Detector.
/////////////////////////////////////////////////////////////////////////////////
module parity_logic (A,P);
parameter n=4;
input [n-1:0] A;
output P;
//genvar i;
//assign P=A[0]^A[1];
//for(i=2;i<n;i=i+1) begin 
  	//assign P=P^A[i];
//end
assign P=A[3]^A[2]^A[1]^A[0];
endmodule
