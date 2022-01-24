module ov2640_driver(clk_reg,rst, pclk,xclk,href,vsync,camera_data,sio_d,sio_c, resetb, pwdn,write_en,camera_pic_data,camera_pic_addr);
    input clk_reg;//���üĴ���ʱ�� 24mhz
    input rst;
    input pclk;//����ͬ��ʱ���ź�
    input xclk;//�ⲿ�ź�
    input href;//��ͬ���ź�
    input vsync;//֡ͬ���ź�
    input [7:0]camera_data;//ͼ������ D[9]:D[2]
    inout sio_d;//SCCB������
    
    
    output sio_c;//SCCBʱ����
    output resetb;//ϵͳ��λ�ܽ�,�͵�ƽ��Ч
    output pwdn;//ʡ��ģʽ���ߵ�ƽ��Ч
    output reg write_en;
    output reg[11:0]camera_pic_data;
    output reg[18:0]camera_pic_addr;
   
     wire [15:0]config_addr_add_data;
     wire next_reg;
     wire valid_reg;
     reg [15:0]temp_data=0;
     reg [18:0]temp_addr=0;
     reg [1:0] merge_signal=0;//�����ж��Ƿ�����λ�ϳɵ�һλ
   
    assign resetb=1;//��λΪ�͵�ƽ��Ч
    assign pwdn=0;//��ʡ��
    pullup up (sio_d);//����������
    assign xclk=clk_reg; //�ⲿʱ��
  
    
    
    ov2640_reg_config reg_config(
    .clk(clk_reg),
    .rst(rst),
    .config_addr_add_data(config_addr_add_data),//�Ĵ�����ַ+����
    .valid_reg(valid_reg),// ��ʾ��ǰreg��ֵ����ҺϷ�
    .next_reg(next_reg)// sccbЭ�鴫��������źţ�������һ��reg�������
    );


    ov2640_sccb_control sccb_control(
    .clk(clk_reg),
    .rst(rst),
    .sio_d(sio_d),//SCCB������
    .sio_c(sio_c),//SCCBʱ����
    .valid_reg(valid_reg),// ��ʾ��ǰreg��ֵ����ҺϷ�
    .next_reg(next_reg),//��֪reg_config�üĴ���������ϣ���ʼ������һ��
    .reg_addr(config_addr_add_data[15:8]),//�Ĵ�����ַ ��8λ
    .reg_data(config_addr_add_data[7:0])//�������� ��8λ
    );


    //�������֮��Ӧ���Ƕ�ͼƬ���ж�ȡ���Ҵ��뵽rom��
    //�����ȴ����һ֡
    
    
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
               merge_signal<={merge_signal[0],(href&&!merge_signal[0])};//�����λ
               if(merge_signal[1])
               
         
               temp_addr<=temp_addr+1;
          end
     end
    
endmodule
