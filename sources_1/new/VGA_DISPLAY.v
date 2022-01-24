module vga_display_with_sound #(parameter color_len=4)
(
    input vga_clk,//25HZ
    input rst,//复位信号，高电平有效
    input warning_signal,//警报信号，决定读取图片的位置
    input close_warning,//关闭警报
    input pause_pic,//暂停图片
    input [15:0] pic_data,//读入的16位图片的数据，这个图片可能是摄像头中的也可能是图片中的,需要截断处理
    output hor_syn, //行同步信号
    output ver_syn, //场同步信号
    output reg pic_select=0,//选择是摄像头还是警报图片
    output reg[color_len-1:0] rgb_red,//红色
    output reg[color_len-1:0] rgb_green,//绿色
    output reg[color_len-1:0] rgb_blue,//蓝色
    output reg[18:0] pic_addr//读入图像的地址
    
    );
    //先来判断当前的x和y的位置，其中只有处于合适的信号区间才能输出

    parameter hor_syn_time=96;//行脉冲同步
    parameter hor_back_porch_add_left_border=40+8;//显示图像之前的backporch和leftborder
    parameter hor_front_porch_add_right_border=8+8;//显示图像之后的frontporch和rightborder
    parameter hor_total_time=800;//行信号的总时间

    parameter ver_syn_time=2;//场脉冲同步
    parameter ver_back_porch_add_left_border=25+8;//显示图像之前的backporch和leftborder
    parameter ver_front_porch_add_right_border=2+8;//显示图像之后的frontporch和rightborder
    parameter ver_total_time=525;//场信号的总时间
    
    parameter x_pic_min=hor_syn_time+hor_back_porch_add_left_border;//x初始
    parameter x_pic_max=hor_total_time-hor_front_porch_add_right_border;//x最大

    parameter y_pic_min=ver_syn_time+ver_back_porch_add_left_border;//y初始
    parameter y_pic_max=ver_total_time-ver_front_porch_add_right_border;//y最大
  
    //摄像头显示图片的大小
    parameter x_ov2640_pic_size=640;
    parameter y_ov2640_pic_size=480;

    //警报图片显示的大小
    parameter x_warning_pic_size=300;//300
    parameter y_warning_pic_size=168;//168

    parameter x_warning_pic_display_min=x_pic_min+170;//警报图像显示位置xmin 640-300 /2
    parameter x_warning_pic_display_max=x_warning_pic_display_min+x_warning_pic_size;//警报图像显示位置xmax

    parameter y_warning_pic_display_min=y_pic_min+156;//警报图像显示位置ymin 480-156 /2
    parameter y_warning_pic_display_max=y_warning_pic_display_min+y_warning_pic_size;//警报图像显示位置ymax
    
    //注意这里图片的大小和位置要人为保证正确
    //必须要使得x和y在对应的图像显示区域内才行
    reg [11:0] x_pos;
    reg [11:0] y_pos;
    wire display_pic;//判断是否输出图像
  always @(posedge vga_clk ) begin
      if(rst)//复位
      begin
          x_pos<=0;
          y_pos<=0;
      end
      else
      begin
          if(x_pos==hor_total_time-1)//最后一个
          begin
              x_pos<=0;//复位
              if(y_pos==ver_total_time-1)//复位
              begin
                    y_pos<=0;
              end
              else
              y_pos<=y_pos+1;
          end
          else
          x_pos<=x_pos+1;
      end
  end
  assign hor_syn=(x_pos<=hor_syn_time)?0:1;//行同步时间
  assign ver_syn=(y_pos<=ver_syn_time)?0:1;//场同步时间
  //必须要在对应的显示图像区段才能显示图像
  assign display_pic=(x_pos>=x_pic_min)&&(x_pos<=x_pic_max)&&(y_pos>=y_pic_min)&&(y_pos<=y_pic_max);
   reg warning_delay=0; 
   reg [50:0] delay_count=0;

     //下面根据信号来输出图像
  
 
     
     always @ (posedge vga_clk) begin
         rgb_red<=0;
         rgb_blue<=0;
         rgb_green<=0;
         
         pic_select<=0;//默认为摄像头
         
         //初始先设为0
         if(display_pic)begin
             //可以输出图像，根据输出性质考虑
             //如果说是在警报图片内，需要特殊考虑，其他都无所谓
             if(x_pos>=x_warning_pic_display_min&&x_pos<=x_warning_pic_display_max&&y_pos>=y_warning_pic_display_min&&y_pos<=y_warning_pic_display_max)
                begin
                  if(close_warning==0&&pause_pic==0)
                  begin
                    if(warning_signal==1||delay_count!=0)
                    begin
                   if(warning_signal)
                    delay_count<=1;
                  
                   if(delay_count<=25000000/10)
                   begin
                    pic_addr<=(y_pos-y_warning_pic_display_min)*x_warning_pic_size+(x_pos-x_warning_pic_display_min);
                                      pic_select<=1;
                                      end
                                      
                   else if(delay_count<=50000000/10)
                   begin
                     pic_addr<=(y_pos-y_pic_min)*x_ov2640_pic_size+(x_pos-x_pic_min);
                     end
                     
                    else if(delay_count<=75000000/10)
                   begin
                     pic_addr<=(y_pos-y_warning_pic_display_min)*x_warning_pic_size+(x_pos-x_warning_pic_display_min);
                                      pic_select<=1;
                                      end
                    else if(delay_count<=100000000/10)
                   begin
                      pic_addr<=(y_pos-y_pic_min)*x_ov2640_pic_size+(x_pos-x_pic_min);
                      end
                    
                    else if(delay_count<=125000000/10)
                                       begin
                                         pic_addr<=(y_pos-y_warning_pic_display_min)*x_warning_pic_size+(x_pos-x_warning_pic_display_min);
                                                                                                 pic_select<=1;
                                         end
                                         
                    else if(delay_count<=150000000/10)
                                       begin
                                           pic_addr<=(y_pos-y_pic_min)*x_ov2640_pic_size+(x_pos-x_pic_min);
                                                          end
                    else  if(delay_count<=175000000/10)
                                       begin
                                        pic_addr<=(y_pos-y_warning_pic_display_min)*x_warning_pic_size+(x_pos-x_warning_pic_display_min);
                                                                   pic_select<=1;
                                          end
                                          
                    else if(delay_count<=200000000/10)
                                       begin
                                         pic_addr<=(y_pos-y_pic_min)*x_ov2640_pic_size+(x_pos-x_pic_min);
                                         end
                    
                    else if(delay_count<=225000000/10)
                                        begin
                                        pic_addr<=(y_pos-y_warning_pic_display_min)*x_warning_pic_size+(x_pos-x_warning_pic_display_min);
                                        pic_select<=1;
                                        end
                    else if(delay_count<=250000000/10)
                                        begin
                    pic_addr<=(y_pos-y_pic_min)*x_ov2640_pic_size+(x_pos-x_pic_min);
                                            end
                                                            
                     else if(delay_count<=275000000/10)
                      begin
                       pic_addr<=(y_pos-y_warning_pic_display_min)*x_warning_pic_size+(x_pos-x_warning_pic_display_min);
                             pic_select<=1;
                              end
                                                                                 
                  else if(delay_count<=300000000/10)
                        begin
                             pic_addr<=(y_pos-y_pic_min)*x_ov2640_pic_size+(x_pos-x_pic_min);
                                                                                   end
                            
                     else if(delay_count<=325000000/10)
                                  begin
                      pic_addr<=(y_pos-y_warning_pic_display_min)*x_warning_pic_size+(x_pos-x_warning_pic_display_min);
                                                                pic_select<=1;
                                    end
                        else if(delay_count<=350000000/10)
                                  begin
              pic_addr<=(y_pos-y_pic_min)*x_ov2640_pic_size+(x_pos-x_pic_min);
                                                 end
                                                                                          
                                else if(delay_count<=375000000/10)
                                                         begin
                     pic_addr<=(y_pos-y_warning_pic_display_min)*x_warning_pic_size+(x_pos-x_warning_pic_display_min);
                                                        pic_select<=1;
                                                             end
                                                                                                                                                                   
                                                       else 
                                     begin
                    pic_addr<=(y_pos-y_pic_min)*x_ov2640_pic_size+(x_pos-x_pic_min);
                                           end
                    if(delay_count==400000000/10)
                    delay_count<=0;
                    else
                    delay_count<=delay_count+1;
                    
                    end
                    
                   
                    else
                    begin
                    // pic_addr<=(y_pos-y_warning_pic_display_min)*x_warning_pic_size+(x_pos-x_warning_pic_display_min);
                   //  pic_select<=1;
                    pic_addr<=(y_pos-y_pic_min)*x_ov2640_pic_size+(x_pos-x_pic_min);
 
                    end
                    end
                    else
                    pic_addr<=(y_pos-y_pic_min)*x_ov2640_pic_size+(x_pos-x_pic_min);
                end
            else
                begin
                    pic_addr<=(y_pos-y_pic_min)*x_ov2640_pic_size+(x_pos-x_pic_min);
                   
                end
                rgb_red<=pic_data[15:12];
                rgb_green<=pic_data[10:7];
                rgb_blue<=pic_data[4:1];
                //16位转12位。。可能会有掉色
     end
     end
    
endmodule
