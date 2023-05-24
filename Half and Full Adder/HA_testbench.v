`include "half_adder.v"
module tb;
reg a,b;
wire sum,carry;
parameter design_delay=10;//assuming that design has a 10 time unit delay;
half_adder dut(.a(a),.b(b),.sum(sum),.carry(carry));

initial begin
	$display("half_adder Truth Table");
	#design_delay; 
	a=0;
	b=0;
	#design_delay; 
	a=0;
	b=1;
	#design_delay; 
	a=1;
	b=0;
	#design_delay; 
	a=1;
	b=1;
	#75;
	$finish;
end
	initial begin
	$monitor("Time=%0t,\ta=%b,,\tb=%b,\tSum=%b,\tCarry=%b",$time,a,b,sum,carry);
end
endmodule

