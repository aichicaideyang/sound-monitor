module MP3_DISPLAY(
input clk,
input dreq, //��������
input rst, //��λ�ź�,��������
input warning_signal,
output reg xreset=0, //Ӳ����λ �͵�ƽ��Ч
output reg xcs=1, //Ƭѡ���� �͵�ƽ��Ч
output reg xdcs=1, //����Ƭѡ/�ֽ�ͬ�� �͵�ƽ��Ч
output reg si, //SPI ��������
output reg sclk=0 //SPI ʱ��
);
parameter CMD_RECEIVE=0; //��ʼдָ��
parameter CMD_WRITE=1; //��һ��ָ��ȫ��д��
parameter DATA_RECEIVE=2; //��ʼд����
parameter DATA_WRITE=3; //��һ������ȫ��д��
parameter WAIT=4; //�ȴ����� 
reg [20:0]addr=0;
reg [15:0] _Data;
wire [15:0] my_data;
wire clk_1m;
reg [31:0]cmd=32'h02000804;
reg [2:0] status=CMD_RECEIVE;
reg [13:0] cnt=0; //λ����
reg cmd_over=0; 
reg [50:0] delay_sound=0;


Divider_mp3 Divider_mp3_1(clk,clk_1m);



blk_mem_gen_2 warning_mp3_rom(
  .clka(clk_1m),    // input wire clka
  .ena(1),      // input wire ena
  .addra(addr),  // input wire [17 : 0] addra
  .douta(my_data)  // output wire [15 : 0] douta
);
always @(posedge clk_1m) 
begin
if(!warning_signal)
delay_sound<=115000000;
else
begin
if(delay_sound!=0)
delay_sound<=delay_sound-1;
else
delay_sound<=0;
end
if(delay_sound!=0)
begin
 if(~rst) 
 begin
 xcs<=1;
 xdcs<=1;
 xreset<=0;
 cmd_over<=0;
 status<=WAIT;
 sclk<=0;
 cnt<=0;
 addr<=0;
 end
 else 
begin
 case(status)
 CMD_RECEIVE:
begin
 sclk<=0;
 if(cmd_over) status<=DATA_RECEIVE;
 else if(dreq) 
begin
 xcs<=0;
 status<=CMD_WRITE; 
 si<=cmd[31];
 cmd<={cmd[30:0],cmd[31]}; 
 cnt<=1;
 end
 end
 
 CMD_WRITE:
 begin
 if(dreq) 
begin
 if(sclk) 
begin
 if(cnt>=32)
begin
 xcs<=1;
 cnt<=0;
 cmd_over<=1;
 status<=CMD_RECEIVE;
 end
 else 
begin
 si<=cmd[31];
 cmd<={cmd[30:0],cmd[31]}; 
 cnt<=cnt+1; 
 end
 end
 sclk<=~sclk;
 end
 end
 
 DATA_RECEIVE:
begin
if(dreq) 
 begin
 xdcs<=0;
 sclk<=0;
 si<= my_data[15];
 _Data<={ my_data[14:0], my_data[15]};
 cnt<=1;
 status<=DATA_WRITE; 
 end
 end
 
 DATA_WRITE:
begin 
 if(sclk)
begin
 if(cnt>=16)
begin
 xdcs<=1;
 addr<=addr+1;
 status<=DATA_RECEIVE;
 end
 else 
begin
 cnt<=cnt+1;
 _Data<={_Data[14:0],_Data[15]};
 si<=_Data[15];
 end
 end
 sclk<=~sclk;
 end
 
 WAIT:begin
 if(cnt<1000) cnt<=cnt+1;
 else 
 begin
 cnt<=0;
 status<=CMD_RECEIVE;
 xreset<=1;
 end
 end
default:;
 endcase
 end
  end
end
endmodule

                                    

