// 3 bit updown counter with reset and load enable

module up_down(clk,rst,data_in,load_en,up_down,q_out);
input clk,rst,load_en,up_down;
input [2:0] data_in;
output reg [2:0] q_out;

always @(posedge clk or negedge rst) begin 
	if(~rst) q_out<=3'b000;
	else if(load_en) q_out<=data_in;
	else 
		if(up_down) q_out=q_out+1;
		else q_out=q_out-1;
end

endmodule

