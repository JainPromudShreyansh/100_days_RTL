`include "up_down.v"
module tb;
reg clk,rst,load_en,up_down;
reg [2:0] data_in;
wire [2:0] q_out;
up_down dut(clk,rst,data_in,load_en,up_down,q_out);

initial begin 
	forever begin
	clk=0;
	#5;
	clk=1;
	#5;
end
end
initial begin
rst=0;
#20;
rst=1;
#100;
load_en=1;
data_in=5;
#50;
rst=0;
#500;
$finish;
end
endmodule
