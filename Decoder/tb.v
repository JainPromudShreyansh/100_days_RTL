`include "3x8_decoder.v"
module tb;
parameter m=2;
parameter n=7;
reg [m:0] x;
reg en;
wire [n:0] y;
decoder dut(x,en,y);
//integer i;
initial begin
	en=0;
	#10;
	en=1;
	#10;
//	for(i=0;i==8;i=i+1) begin
//	x=i;
x=0;
#10;
	$display("en=%0d, x=%0d, y=%b",en,x,y);	
x=1;
#10;
	$display("en=%0d, x=%0d, y=%b",en,x,y);	
x=2;
#10;
	$display("en=%0d, x=%0d, y=%b",en,x,y);	
x=3;
#10;
	$display("en=%0d, x=%0d, y=%b",en,x,y);	
x=4;
#10;
	$display("en=%0d, x=%0d, y=%b",en,x,y);	
x=5;
#10;
	$display("en=%0d, x=%0d, y=%b",en,x,y);	
end
endmodule
