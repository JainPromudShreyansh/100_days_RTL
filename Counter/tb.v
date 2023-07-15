`include "n_down_counter.v"
module tb;
reg [2:0] data_in;
reg clk,reset_n,load_en;
wire [2:0] q_out;
Down_counter dut(clk,reset_n,load_en,data_in,q_out);
initial begin
	forever begin
		clk=0;
		#40;
		clk=1;
		#40;
	end
end

initial begin
reset_n=0;
#120;
reset_n=1;
#240;
load_en=1;
data_in=2;
#120;
load_en=0;
#240
$finish;
end

//initial begin
//$monitor("Time=%0t, Q_out=%b",$time,Q_out);
//end
endmodule
