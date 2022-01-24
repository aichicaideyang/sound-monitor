module Divider_mp3
(
 input clk,
 output reg clk_out
);
reg[10:0]cnt_clk=0;
parameter N=100;
always@(posedge clk)
begin
 if(cnt_clk==N/2-1) 
 begin
 clk_out<=~clk_out;
 cnt_clk<=0;
 end
 else cnt_clk<=cnt_clk+1;
end 
endmodule