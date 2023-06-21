//MUX using case statement
module mux(a,b,s,y);
input [2:0] a,b;
input s;
output reg [2:0] y;
always @(*) begin
	case(s) 
		1'b0:y=a;
		1'b1:y=b;
	endcase
end
endmodule
