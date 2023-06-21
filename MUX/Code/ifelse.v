//MUX using ifelse statement
module mux(a,b,s,y);
input [2:0] a,b;
input s;
output reg [2:0] y;
always @(*) begin
	if(s) y=b;
	else y=a;
end
endmodule

