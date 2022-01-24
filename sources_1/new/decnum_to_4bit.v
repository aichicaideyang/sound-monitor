module decnum_to_4bit(
input clk,
input rst, 
input [10:0] dec_num,
output reg[31:0] display_num
);
always @(clk) begin
//将每位转换即可
if(rst)
display_num<=0;
else
display_num[3:0]<=dec_num%10;
display_num[7:4]<=dec_num%100/10;
display_num[11:8]<=dec_num%1000/100;
display_num[15:12]<=dec_num%10000/1000;
display_num[19:16]<=dec_num%100000/10000;
display_num[23:20]<=dec_num%1000000/100000;
display_num[27:24]<=dec_num%10000000/1000000;
display_num[31:28]<=dec_num%100000000/10000000;

   
 end
    
    
    
    
endmodule
