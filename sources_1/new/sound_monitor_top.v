    module sound_monitor_top(
input clk,//100mhz系统时钟
input rst,//复位信号，高电平有效
input pclk,//像素同步时钟信号
input href,//行同步信号
input vsync,//帧同步信号
input warning,//声音传感器信号低电平有效
input close_warning,//手动关闭警报信号画面
input pause_pic,//暂停图片
input [7:0] camera_data,//[D9]:D[2]
input warning_sound_on,//打开警报声
input dreq,//mp3请求数据信号
inout sio_d,//SCCB数据信号
output xreset, //mp3硬件复位 低电平有效
output xcs, //mp3片选输入 低电平有效
output xdcs, //mp3数据片选/字节同步 低电平有效
output si, //mp3SPI 数据输入
output sclk, //mp3SPI 时钟
output warning_work,//声音传感器工作时信号
output xclk,
output sio_c,
output pwdn,//省电模式
output resetb,//摄像头系统复位
output hor_syn,//vga行同步
output ver_syn,//vga场同步
output[7:0] display7_selection,//七段数码管片选
output[7:0] display7_data_out,//七段数码管输出
output [3:0] rgb_red,
output [3:0] rgb_green,
output [3:0] rgb_blue
);

wire [11:0]get_cameral_rom_data;
wire [15:0]get_warning_rom_data;
reg [15:0]cur_pic_show;//当前要打印的图像的内容，可能来自于摄像头，也可能来自于警报图
wire clk_reg;//24mhz
wire clk_vga;//25mhz
wire clk_mp3;//1mhz
wire write_en;//是否能向ROM中写入摄像头图像
wire pic_select;//决定读取那个寄存器的图像 0读入摄像头 1读入图片
wire [11:0]camera_pic_data;//摄像头图像数据
wire [18:0]camera_pic_addr;//摄像头图像存储地址
wire [18:0]cur_vga_read_addr;//当前vga要读取的地址


//需要先进行对时钟的分频
clk_wiz_0 clk_divide
(
.clk_in1(clk),      //100mhz
.clk_out1(clk_reg), //24mhz
.clk_out2(clk_vga));//25mhz  


ov2640_driver ov2640_get_pic(
.clk_reg(clk_reg),//配置寄存器时钟 24mhz
.rst(rst),
.pclk(pclk),//像素同步时钟信号
.xclk(xclk),
.href(href),//行同步信号
.vsync(vsync),//帧同步信号
.camera_data(camera_data),//图像数据 D[9]:D[2]
.sio_d(sio_d),//SCCB数据线
.sio_c(sio_c),//SCCB时钟线
.resetb(resetb),//系统复位管脚,低电平有效
.pwdn(pwdn),//省电模式，高电平有效
.write_en(write_en),
.camera_pic_data(camera_pic_data),
.camera_pic_addr(camera_pic_addr)
);

 


//得到对应的数据之后就应该考虑写入

blk_mem_gen_0 cameral_pic (
.clka(clk),    // input wire clka
.ena(1),      // input wire ena
.wea(write_en&&(!pause_pic)),      // input wire [0 : 0] wea
.addra(camera_pic_addr),  // input wire [18 : 0] addra
.dina( camera_pic_data),    // input wire [11 : 0] dina
.clkb(clk),    // input wire clkb
.enb(!pic_select),      // input wire enb
.addrb(cur_vga_read_addr),  // input wire [18 : 0] addrb
.doutb(get_cameral_rom_data)  // output wire [11 : 0] doutb
);
//接着在vga上显示

blk_mem_gen_1 warning_pic (
.clka(clk),    // input wire clka
.ena(pic_select),      // input wire ena
.addra(cur_vga_read_addr),  // input wire [12 : 0] addra
.douta(get_warning_rom_data)  // output wire [15 : 0] douta
);

//这里需要抉择一下输出那个为vga显示
always @(*)begin 
if(pic_select&&(!pause_pic))//warning
cur_pic_show<=get_warning_rom_data;
else
//cur_pic_show<=16'b1111_1011_1101_0010;
cur_pic_show<={get_cameral_rom_data[11:8],1'b1,get_cameral_rom_data[7:4],2'b11,get_cameral_rom_data[3:0],1'b1};
end

assign warning_work=!warning;//测试warning值

vga_display_with_sound vga_display
(
.vga_clk(clk_vga),//25HZ
.rst(rst),//复位信号，高电平有效
.warning_signal(!warning),//警报信号，决定读取图片的位置
.close_warning(close_warning),//关闭警报
.pause_pic(pause_pic),//手动暂停
.pic_data(cur_pic_show),//读入的16位图片的数据，这个图片可能是摄像头中的也可能是图片中的,需要截断处理
.hor_syn(hor_syn), //行同步信号
.ver_syn(ver_syn), //场同步信号
.pic_select(pic_select),//选择是摄像头还是警报图片
.rgb_red(rgb_red),//红色
.rgb_green(rgb_green),//绿色
.rgb_blue(rgb_blue),//蓝色
.pic_addr(cur_vga_read_addr)//读入图像的地址
);

//统计监测到的声音数


reg[50:0] warning_counts;
wire[31:0] display_num_4_bit;
//reg [31:0] display_num_4;
//每4位代表一个数字
always@(negedge warning)begin
//配合数码管进行计算
if(rst)
warning_counts<=0;
else
warning_counts<=warning_counts+1;
end

decnum_to_4bit transefer_warning_counts(
.clk(clk_vga),
.rst(rst), 
.dec_num(warning_counts),
.display_num(display_num_4_bit)
);

 display7 display_warning_counts(
.clk(clk_vga),
.rst(rst), 
.data_in(display_num_4_bit),  
.selction(display7_selection),  
.data_out(display7_data_out)   
 );
 
 MP3_DISPLAY play_warning_sound(
 .clk(clk),
 .dreq(dreq), //数据请求
 .rst(warning_sound_on), //复位信号
 .warning_signal(warning),
 .xreset(xreset), //硬件复位 低电平有效
 .xcs(xcs), //片选输入 低电平有效
 .xdcs(xdcs), //数据片选/字节同步 低电平有效
 .si(si), //SPI 数据输入
 .sclk(sclk) //SPI 时钟
 );
 
 

endmodule
