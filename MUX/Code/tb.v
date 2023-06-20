`include "mux.v"
module tb;
reg [2:0] i1,i2;
reg sel;
wire o;
mux dut(i1,i2,sel,o);
initial begin 
	#10;
	i1=3;
	i2=5;
	sel=0;
	$display("sel=%0d, i1= %0d, i2=%0d, output=%0d",sel,i1,i2,o);
	#10;
	sel=1;
	$display("sel=%0d, i1= %0d, i2=%0d, output=%0d",sel,i1,i2,o);
	#10;
	sel=0;
	$display("sel=%0d, i1= %0d, i2=%0d, output=%0d",sel,i1,i2,o);

	
end

endmodule
