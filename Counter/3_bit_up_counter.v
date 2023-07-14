module 3bit_up_counter(data_in,clk,load_en,reset_n,q_out);
  input [2:0] data_in;
  input reset_n,clk, load_en;
  output reg [2:0] q_out;
  always @(posedge clk or negedge reset_n) begin
    if(~reset_n) q_out <= 3'b000;
    else if (load_en) q_out <=data_in;
    else q_out=q_out+1'b1;
  end
endmodule
