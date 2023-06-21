`include "ifelse.v"
module tb;
reg [2:0] a,b;
reg s;
wire [2:0] y;
mux dut(a,b,s,y);
initial begin 
	a=3;
	b=5;
	s=0;
	#10;
	$display("s=%0d, a= %0d, b=%0d, y=%0d",s,a,b,y);
	s=1;
	#10;
	$display("s=%0d, a= %0d, b=%0d, y=%0d",s,a,b,y);
	s=0;
	#10;
	$display("s=%0d, a= %0d, b=%0d, y=%0d",s,a,b,y);
end


endmodule
