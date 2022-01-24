module ov2640_sccb_control(clk,rst,sio_d, sio_c,valid_reg,next_reg,reg_addr,reg_data);
    input clk;//24mhz
    input rst;//复位信号，高电平有效
    input valid_reg;//成功获取寄存器数据
    input [7:0]reg_addr;//寄存器地址
    input [7:0]reg_data;//寄存器配置数据
    inout sio_d;//SCCB数据线
    output reg sio_c;//SCCB时钟线
    output reg next_reg=0;//可以进行下一个寄存器读取
    
    reg [20:0]simulate_sio_c=0;
    reg [31:0] reg_write_order;
    always @ (posedge clk)
    begin
        if(rst)
            reg_write_order<=32'hffffffff;
        else
        begin
            if(simulate_sio_c==0&&valid_reg==1)
            //10是下降沿，开始写入 011是上升沿，结束写入
                reg_write_order<={2'b10,8'h60,1'bx,reg_addr,1'bx,reg_data,1'bx,3'b011};
            else if(simulate_sio_c[10:0]==0)
                reg_write_order<=reg_write_order<<1;//向左移位
        end
    end
    

    always @ (posedge clk)
    begin
        case(simulate_sio_c[20:11])
        0:sio_c<=1;
        30:sio_c<=1;
        31:sio_c<=1;//sio_c需要保持高电平等待sio_d的变化
        1:
        case(simulate_sio_c[10:9])
        2'b11:
        sio_c<=0;//这里是了保证sio_d被成功接受
        default:
        sio_c<=1;
        endcase
        29:
        case(simulate_sio_c[10:9])
        2'b00:
        sio_c<=0;//这里是了保证sio_d被成功接受
        default:
        sio_c<=1;
        endcase
        default:
        case(simulate_sio_c[10:9])
        2'b00:sio_c<=0;//模拟sio_c上升下降 进行数据读入
        2'b11:sio_c<=0;
        default:
        sio_c<=1;
        endcase
        endcase
    end


   


    always @ (posedge clk)
    begin
        if(simulate_sio_c==0)
            simulate_sio_c<=valid_reg;//关键！！如果说没有读取到寄存器的话，这个地方一直是0，而且由于这个地方一变 next_reg可以是1
        else
            if(simulate_sio_c[20:11]==31)//0-31位，一共有32位，读取一个寄存器数据的时间
                simulate_sio_c<=0;
            else
                simulate_sio_c<=simulate_sio_c+1;
    end
     always @ (posedge clk)
       begin
           //下一个数据
           next_reg<=(simulate_sio_c==0)&&(valid_reg==1);
       end


    assign sio_d=reg_write_order[31];
endmodule