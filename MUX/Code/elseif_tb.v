`include "ifelse.v"
module tb;
reg [2:0] a,b;
reg s;
wire [2:0] y;
mux dut(a,b,s,y);
initial begin 
	#10;
	a=3;
	b=5;
	s=0;
	$display("s=%0d, a= %0d, b=%0d, y=%0d",s,a,b,y);
	#10;
	s=1;
	$display("s=%0d, a= %0d, b=%0d, y=%0d",s,a,b,y);
	#10;
	s=1;
	$display("s=%0d, a= %0d, b=%0d, y=%0d",s,a,b,y);
end


endmodule
