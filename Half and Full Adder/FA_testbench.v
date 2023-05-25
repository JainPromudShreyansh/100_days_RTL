`include "full_adder.v"
module tb;
reg X,Y,Cin;
wire S,C;
parameter design_delay=10;//assuming that design has a 10 time unit delay;
full_adder dut(X,Y,Cin,S,C);

initial begin
	$display("full_adder Truth Table");
	#design_delay; 
	Cin=0;
	X=0;
	Y=0;
	#design_delay; 
	Cin=0;
	X=0;
	Y=1;
	#design_delay; 
	Cin=0;
	X=1;
	Y=0;
	#design_delay; 
	Cin=0;
	X=1;
	Y=1;
	#design_delay; 
	Cin=1;
	X=0;
	Y=0;
	#design_delay; 
	Cin=1;
	X=1;
	Y=0;
	#design_delay; 
	Cin=1;
	X=1;
	Y=0;
	#design_delay; 
	Cin=1;
	X=1;
	Y=1;
	#150;
	$finish;
end
	initial begin
	$monitor("Time=%0t,\tCin=%b,\tX=%b,,\tY=%b,\tCarry=%b,\tSum=%b",$time,Cin,X,Y,C,S);
end
endmodule

