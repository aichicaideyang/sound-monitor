module ov2640_driver(clk_reg,rst, pclk,xclk,href,vsync,camera_data,sio_d,sio_c, resetb, pwdn,write_en,camera_pic_data,camera_pic_addr);
    input clk_reg;//配置寄存器时钟 24mhz
    input rst;
    input pclk;//像素同步时钟信号
    input xclk;//外部信号
    input href;//行同步信号
    input vsync;//帧同步信号
    input [7:0]camera_data;//图像数据 D[9]:D[2]
    inout sio_d;//SCCB数据线
    
    
    output sio_c;//SCCB时钟线
    output resetb;//系统复位管脚,低电平有效
    output pwdn;//省电模式，高电平有效
    output reg write_en;
    output reg[11:0]camera_pic_data;
    output reg[18:0]camera_pic_addr;
   
     wire [15:0]config_addr_add_data;
     wire next_reg;
     wire valid_reg;
     reg [15:0]temp_data=0;
     reg [18:0]temp_addr=0;
     reg [1:0] merge_signal=0;//用来判断是否是两位合成的一位
   
    assign resetb=1;//复位为低电平有效
    assign pwdn=0;//非省电
    pullup up (sio_d);//拉高数据线
    assign xclk=clk_reg; //外部时钟
  
    
    
    ov2640_reg_config reg_config(
    .clk(clk_reg),
    .rst(rst),
    .config_addr_add_data(config_addr_add_data),//寄存器地址+数据
    .valid_reg(valid_reg),// 表示当前reg赋值完毕且合法
    .next_reg(next_reg)// sccb协议传输过来的信号，代表上一个reg配置完毕
    );


    ov2640_sccb_control sccb_control(
    .clk(clk_reg),
    .rst(rst),
    .sio_d(sio_d),//SCCB数据线
    .sio_c(sio_c),//SCCB时钟线
    .valid_reg(valid_reg),// 表示当前reg赋值完毕且合法
    .next_reg(next_reg),//告知reg_config该寄存器配置完毕，开始配置下一个
    .reg_addr(config_addr_add_data[15:8]),//寄存器地址 高8位
    .reg_data(config_addr_add_data[7:0])//配置数据 低8位
    );


    //配置完毕之后应当是对图片进行读取并且存入到rom内
    //考虑先存放满一帧
    
    
  //  wire one_frame_set=0;
   // wire [20:0] count_frame=0;
     always @(posedge pclk ) begin
          if(vsync==0)
          begin
              temp_data<=0;
              temp_addr<=0;
              merge_signal<=0;
          end
          else
          begin
               camera_pic_addr<=temp_addr;
               write_en<=merge_signal[1];
               camera_pic_data<={temp_data[15:12],temp_data[10:7],temp_data[4:1]};
               temp_data<={temp_data[7:0],camera_data};
               merge_signal<={merge_signal[0],(href&&!merge_signal[0])};//完成移位
               if(merge_signal[1])
               
         
               temp_addr<=temp_addr+1;
          end
     end
    
endmodule
