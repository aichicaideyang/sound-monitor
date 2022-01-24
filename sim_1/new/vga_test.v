`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/06 20:30:23
// Design Name: 
// Module Name: vga_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vga_test();
reg clk;
reg rst;
reg warning_signal;
reg [15:0] pic_data;
wire hor_syn;
wire ver_syn;
wire pic_select;
wire [3:0] rgb_red;
wire [3:0] rgb_green;
wire [3:0] rgb_blue;
wire [18:0] pic_addr;

initial begin 
clk=1;
forever begin
#2 clk=~clk;
end
end

initial begin
rst=0;
end
 
initial begin
warning_signal=1;
#10 warning_signal=~warning_signal;
end

initial begin
pic_data=16'hffff;
#10 pic_data=pic_data+1;
end




 vga_display_with_sound uut
(
   .vga_clk(clk),//25HZ
     .rst(rst),//��λ�źţ��ߵ�ƽ��Ч
     .warning_signal(warning_signal),//�����źţ�������ȡͼƬ��λ��
    .pic_data(pic_data),//�����16λͼƬ�����ݣ����ͼƬ����������ͷ�е�Ҳ������ͼƬ�е�,��Ҫ�ضϴ���
    .hor_syn(hor_syn), //��ͬ���ź�
    .ver_syn(ver_syn), //��ͬ���ź�
     .pic_select(pic_select),//ѡ��������ͷ���Ǿ���ͼƬ
     .rgb_red(rgb_red),//��ɫ
  .rgb_green(rgb_green),//��ɫ
   .rgb_blue(rgb_blue),//��ɫ
     .pic_addr(pic_addr)//����ͼ��ĵ�ַ
    
    );







endmodule
