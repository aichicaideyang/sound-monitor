module vga_display_with_sound #(parameter color_len=4)
(
    input vga_clk,//25HZ
    input rst,//��λ�źţ��ߵ�ƽ��Ч
    input warning_signal,//�����źţ�������ȡͼƬ��λ��
    input close_warning,//�رվ���
    input pause_pic,//��ͣͼƬ
    input [15:0] pic_data,//�����16λͼƬ�����ݣ����ͼƬ����������ͷ�е�Ҳ������ͼƬ�е�,��Ҫ�ضϴ���
    output hor_syn, //��ͬ���ź�
    output ver_syn, //��ͬ���ź�
    output reg pic_select=0,//ѡ��������ͷ���Ǿ���ͼƬ
    output reg[color_len-1:0] rgb_red,//��ɫ
    output reg[color_len-1:0] rgb_green,//��ɫ
    output reg[color_len-1:0] rgb_blue,//��ɫ
    output reg[18:0] pic_addr//����ͼ��ĵ�ַ
    
    );
    //�����жϵ�ǰ��x��y��λ�ã�����ֻ�д��ں��ʵ��ź�����������

    parameter hor_syn_time=96;//������ͬ��
    parameter hor_back_porch_add_left_border=40+8;//��ʾͼ��֮ǰ��backporch��leftborder
    parameter hor_front_porch_add_right_border=8+8;//��ʾͼ��֮���frontporch��rightborder
    parameter hor_total_time=800;//���źŵ���ʱ��

    parameter ver_syn_time=2;//������ͬ��
    parameter ver_back_porch_add_left_border=25+8;//��ʾͼ��֮ǰ��backporch��leftborder
    parameter ver_front_porch_add_right_border=2+8;//��ʾͼ��֮���frontporch��rightborder
    parameter ver_total_time=525;//���źŵ���ʱ��
    
    parameter x_pic_min=hor_syn_time+hor_back_porch_add_left_border;//x��ʼ
    parameter x_pic_max=hor_total_time-hor_front_porch_add_right_border;//x���

    parameter y_pic_min=ver_syn_time+ver_back_porch_add_left_border;//y��ʼ
    parameter y_pic_max=ver_total_time-ver_front_porch_add_right_border;//y���
  
    //����ͷ��ʾͼƬ�Ĵ�С
    parameter x_ov2640_pic_size=640;
    parameter y_ov2640_pic_size=480;

    //����ͼƬ��ʾ�Ĵ�С
    parameter x_warning_pic_size=300;//300
    parameter y_warning_pic_size=168;//168

    parameter x_warning_pic_display_min=x_pic_min+170;//����ͼ����ʾλ��xmin 640-300 /2
    parameter x_warning_pic_display_max=x_warning_pic_display_min+x_warning_pic_size;//����ͼ����ʾλ��xmax

    parameter y_warning_pic_display_min=y_pic_min+156;//����ͼ����ʾλ��ymin 480-156 /2
    parameter y_warning_pic_display_max=y_warning_pic_display_min+y_warning_pic_size;//����ͼ����ʾλ��ymax
    
    //ע������ͼƬ�Ĵ�С��λ��Ҫ��Ϊ��֤��ȷ
    //����Ҫʹ��x��y�ڶ�Ӧ��ͼ����ʾ�����ڲ���
    reg [11:0] x_pos;
    reg [11:0] y_pos;
    wire display_pic;//�ж��Ƿ����ͼ��
  always @(posedge vga_clk ) begin
      if(rst)//��λ
      begin
          x_pos<=0;
          y_pos<=0;
      end
      else
      begin
          if(x_pos==hor_total_time-1)//���һ��
          begin
              x_pos<=0;//��λ
              if(y_pos==ver_total_time-1)//��λ
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
  assign hor_syn=(x_pos<=hor_syn_time)?0:1;//��ͬ��ʱ��
  assign ver_syn=(y_pos<=ver_syn_time)?0:1;//��ͬ��ʱ��
  //����Ҫ�ڶ�Ӧ����ʾͼ�����β�����ʾͼ��
  assign display_pic=(x_pos>=x_pic_min)&&(x_pos<=x_pic_max)&&(y_pos>=y_pic_min)&&(y_pos<=y_pic_max);
   reg warning_delay=0; 
   reg [50:0] delay_count=0;

     //��������ź������ͼ��
  
 
     
     always @ (posedge vga_clk) begin
         rgb_red<=0;
         rgb_blue<=0;
         rgb_green<=0;
         
         pic_select<=0;//Ĭ��Ϊ����ͷ
         
         //��ʼ����Ϊ0
         if(display_pic)begin
             //�������ͼ�񣬸���������ʿ���
             //���˵���ھ���ͼƬ�ڣ���Ҫ���⿼�ǣ�����������ν
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
                //16λת12λ�������ܻ��е�ɫ
     end
     end
    
endmodule
