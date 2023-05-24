//////////////////////////////////////////////////////////////////////////////////
//Designer: Shreyansh Promud Jain
// Design Name:Half Adder 
// Module Name:half_adder
// Project Name: Half_Adder
// Description: Designing a simple 2 bit adder known as Half Adder
//////////////////////////////////////////////////////////////////////////////////

module half_adder(a,b,sum,carry);
input a,b;
output reg sum,carry;

always @(*) begin
	sum=a^b; 
	carry=a&b;
end

endmodule
