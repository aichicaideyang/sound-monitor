    module sound_monitor_top(
input clk,//100mhzϵͳʱ��
input rst,//��λ�źţ��ߵ�ƽ��Ч
input pclk,//����ͬ��ʱ���ź�
input href,//��ͬ���ź�
input vsync,//֡ͬ���ź�
input warning,//�����������źŵ͵�ƽ��Ч
input close_warning,//�ֶ��رվ����źŻ���
input pause_pic,//��ͣͼƬ
input [7:0] camera_data,//[D9]:D[2]
input warning_sound_on,//�򿪾�����
input dreq,//mp3���������ź�
inout sio_d,//SCCB�����ź�
output xreset, //mp3Ӳ����λ �͵�ƽ��Ч
output xcs, //mp3Ƭѡ���� �͵�ƽ��Ч
output xdcs, //mp3����Ƭѡ/�ֽ�ͬ�� �͵�ƽ��Ч
output si, //mp3SPI ��������
output sclk, //mp3SPI ʱ��
output warning_work,//��������������ʱ�ź�
output xclk,
output sio_c,
output pwdn,//ʡ��ģʽ
output resetb,//����ͷϵͳ��λ
output hor_syn,//vga��ͬ��
output ver_syn,//vga��ͬ��
output[7:0] display7_selection,//�߶������Ƭѡ
output[7:0] display7_data_out,//�߶���������
output [3:0] rgb_red,
output [3:0] rgb_green,
output [3:0] rgb_blue
);

wire [11:0]get_cameral_rom_data;
wire [15:0]get_warning_rom_data;
reg [15:0]cur_pic_show;//��ǰҪ��ӡ��ͼ������ݣ���������������ͷ��Ҳ���������ھ���ͼ
wire clk_reg;//24mhz
wire clk_vga;//25mhz
wire clk_mp3;//1mhz
wire write_en;//�Ƿ�����ROM��д������ͷͼ��
wire pic_select;//������ȡ�Ǹ��Ĵ�����ͼ�� 0��������ͷ 1����ͼƬ
wire [11:0]camera_pic_data;//����ͷͼ������
wire [18:0]camera_pic_addr;//����ͷͼ��洢��ַ
wire [18:0]cur_vga_read_addr;//��ǰvgaҪ��ȡ�ĵ�ַ


//��Ҫ�Ƚ��ж�ʱ�ӵķ�Ƶ
clk_wiz_0 clk_divide
(
.clk_in1(clk),      //100mhz
.clk_out1(clk_reg), //24mhz
.clk_out2(clk_vga));//25mhz  


ov2640_driver ov2640_get_pic(
.clk_reg(clk_reg),//���üĴ���ʱ�� 24mhz
.rst(rst),
.pclk(pclk),//����ͬ��ʱ���ź�
.xclk(xclk),
.href(href),//��ͬ���ź�
.vsync(vsync),//֡ͬ���ź�
.camera_data(camera_data),//ͼ������ D[9]:D[2]
.sio_d(sio_d),//SCCB������
.sio_c(sio_c),//SCCBʱ����
.resetb(resetb),//ϵͳ��λ�ܽ�,�͵�ƽ��Ч
.pwdn(pwdn),//ʡ��ģʽ���ߵ�ƽ��Ч
.write_en(write_en),
.camera_pic_data(camera_pic_data),
.camera_pic_addr(camera_pic_addr)
);

 


//�õ���Ӧ������֮���Ӧ�ÿ���д��

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
//������vga����ʾ

blk_mem_gen_1 warning_pic (
.clka(clk),    // input wire clka
.ena(pic_select),      // input wire ena
.addra(cur_vga_read_addr),  // input wire [12 : 0] addra
.douta(get_warning_rom_data)  // output wire [15 : 0] douta
);

//������Ҫ����һ������Ǹ�Ϊvga��ʾ
always @(*)begin 
if(pic_select&&(!pause_pic))//warning
cur_pic_show<=get_warning_rom_data;
else
//cur_pic_show<=16'b1111_1011_1101_0010;
cur_pic_show<={get_cameral_rom_data[11:8],1'b1,get_cameral_rom_data[7:4],2'b11,get_cameral_rom_data[3:0],1'b1};
end

assign warning_work=!warning;//����warningֵ

vga_display_with_sound vga_display
(
.vga_clk(clk_vga),//25HZ
.rst(rst),//��λ�źţ��ߵ�ƽ��Ч
.warning_signal(!warning),//�����źţ�������ȡͼƬ��λ��
.close_warning(close_warning),//�رվ���
.pause_pic(pause_pic),//�ֶ���ͣ
.pic_data(cur_pic_show),//�����16λͼƬ�����ݣ����ͼƬ����������ͷ�е�Ҳ������ͼƬ�е�,��Ҫ�ضϴ���
.hor_syn(hor_syn), //��ͬ���ź�
.ver_syn(ver_syn), //��ͬ���ź�
.pic_select(pic_select),//ѡ��������ͷ���Ǿ���ͼƬ
.rgb_red(rgb_red),//��ɫ
.rgb_green(rgb_green),//��ɫ
.rgb_blue(rgb_blue),//��ɫ
.pic_addr(cur_vga_read_addr)//����ͼ��ĵ�ַ
);

//ͳ�Ƽ�⵽��������


reg[50:0] warning_counts;
wire[31:0] display_num_4_bit;
//reg [31:0] display_num_4;
//ÿ4λ����һ������
always@(negedge warning)begin
//�������ܽ��м���
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
 .dreq(dreq), //��������
 .rst(warning_sound_on), //��λ�ź�
 .warning_signal(warning),
 .xreset(xreset), //Ӳ����λ �͵�ƽ��Ч
 .xcs(xcs), //Ƭѡ���� �͵�ƽ��Ч
 .xdcs(xdcs), //����Ƭѡ/�ֽ�ͬ�� �͵�ƽ��Ч
 .si(si), //SPI ��������
 .sclk(sclk) //SPI ʱ��
 );
 
 

endmodule
