//negative edge triggered latch
module (D,E,Q);
input D,E;
output E;
always @(D or E) begin
	if(~E) Q<=E;
end
endmodule
