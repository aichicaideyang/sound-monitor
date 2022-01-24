module ov2640_sccb_control(clk,rst,sio_d, sio_c,valid_reg,next_reg,reg_addr,reg_data);
    input clk;//24mhz
    input rst;//��λ�źţ��ߵ�ƽ��Ч
    input valid_reg;//�ɹ���ȡ�Ĵ�������
    input [7:0]reg_addr;//�Ĵ�����ַ
    input [7:0]reg_data;//�Ĵ�����������
    inout sio_d;//SCCB������
    output reg sio_c;//SCCBʱ����
    output reg next_reg=0;//���Խ�����һ���Ĵ�����ȡ
    
    reg [20:0]simulate_sio_c=0;
    reg [31:0] reg_write_order;
    always @ (posedge clk)
    begin
        if(rst)
            reg_write_order<=32'hffffffff;
        else
        begin
            if(simulate_sio_c==0&&valid_reg==1)
            //10���½��أ���ʼд�� 011�������أ�����д��
                reg_write_order<={2'b10,8'h60,1'bx,reg_addr,1'bx,reg_data,1'bx,3'b011};
            else if(simulate_sio_c[10:0]==0)
                reg_write_order<=reg_write_order<<1;//������λ
        end
    end
    

    always @ (posedge clk)
    begin
        case(simulate_sio_c[20:11])
        0:sio_c<=1;
        30:sio_c<=1;
        31:sio_c<=1;//sio_c��Ҫ���ָߵ�ƽ�ȴ�sio_d�ı仯
        1:
        case(simulate_sio_c[10:9])
        2'b11:
        sio_c<=0;//�������˱�֤sio_d���ɹ�����
        default:
        sio_c<=1;
        endcase
        29:
        case(simulate_sio_c[10:9])
        2'b00:
        sio_c<=0;//�������˱�֤sio_d���ɹ�����
        default:
        sio_c<=1;
        endcase
        default:
        case(simulate_sio_c[10:9])
        2'b00:sio_c<=0;//ģ��sio_c�����½� �������ݶ���
        2'b11:sio_c<=0;
        default:
        sio_c<=1;
        endcase
        endcase
    end


   


    always @ (posedge clk)
    begin
        if(simulate_sio_c==0)
            simulate_sio_c<=valid_reg;//�ؼ��������˵û�ж�ȡ���Ĵ����Ļ�������ط�һֱ��0��������������ط�һ�� next_reg������1
        else
            if(simulate_sio_c[20:11]==31)//0-31λ��һ����32λ����ȡһ���Ĵ������ݵ�ʱ��
                simulate_sio_c<=0;
            else
                simulate_sio_c<=simulate_sio_c+1;
    end
     always @ (posedge clk)
       begin
           //��һ������
           next_reg<=(simulate_sio_c==0)&&(valid_reg==1);
       end


    assign sio_d=reg_write_order[31];
endmodule