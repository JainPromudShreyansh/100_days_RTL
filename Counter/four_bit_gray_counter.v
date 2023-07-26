module four_bit_gray_counter(clk,rst,Bin,Gout);
parameter n=3;
input clk,rst;
input [n-1:0]Bin;
output reg [n-1:0]Gout;
if (rst) Gout=0;
else
Gout[3]<=Bin[3];
Gout[2]<=Bin[3] xor Bin[2];
Gout[1]<=Bin[2] xor Bin[1];
Gout[1]<=Bin[1] xor Bin[0];
endmodule

