module d_ff(d_in,load_en,clk,reset_n,q_out);
input d_in,load_en,clk,reset_n;
output q_out;

  always @(posedge clk or negedge reset_n)
  begin
    if(~reset_n) q_out <=1'b0;
    else if(load_en) q_out<=1'b1;
    else q_out <= d_in;
  end
endmodule
