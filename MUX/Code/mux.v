module mux(i1,i2,sel,o);
input [2:0] i1,i2;
input sel;
output o;
assign o=sel?i1:i2;
endmodule
