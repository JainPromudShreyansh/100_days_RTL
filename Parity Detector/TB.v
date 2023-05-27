`include "Parity_Check.v"
module tb;
parameter n=4;
reg [n-1:0] A;
wire P;
integer i;
integer count=0;
parity_logic dut(.A(A),.P(P));
initial begin
repeat(10) begin
	#10;
	A=$random;
	count=0;
	for (i=0;i<n;i=i+1) begin
	if (A[i]) count =count+1;
	end
end
end
//initial begin
//	for (i=0;i<n;i=i+1) begin
//	if (A[i]) count =count+1;
//end
//end 

initial begin
	$monitor("Incoming value of A=%0d( %b )  has number of 1s=%0d and Parity =%b(1=Odd, 0=even)",A,A,count,P);
end
endmodule
