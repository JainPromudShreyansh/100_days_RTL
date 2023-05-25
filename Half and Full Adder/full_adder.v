//////////////////////////////////////////////////////////////////////////////////
//Designer: Shreyansh Promud Jain
// Design Name:Full Adder 
// Module Name:full_adder
// Project Name: Binary Adder
// Description: Designing a simple Full adder design using 2 Half Adders.
//////////////////////////////////////////////////////////////////////////////////

`include "half_adder.v"

module full_adder(X,Y,Cin,S,C);
input X,Y,Cin;
output S,C;
wire w1,w2,w3; 
half_adder h1(.a(X),.b(Y),.sum(w1),.carry(w2));
half_adder h2(.a(Cin),.b(w1),.sum(S),.carry(w3));
assign C=w2 | w1;
endmodule


