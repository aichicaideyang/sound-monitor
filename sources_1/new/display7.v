module display7(
           input        clk,
           input        rst,
           input  [31:0] data_in,  

           output reg [7:0] selction,  
           output reg [7:0] data_out    
       );


reg [17:0] cnt_ctrl;       
reg [3:0]  curr_data;     

always@(posedge clk, posedge rst) begin
    if(rst)
        cnt_ctrl <= 0;
    else
        cnt_ctrl <= cnt_ctrl + 1;
end

//select display segment
always@(cnt_ctrl[17:15]) begin
    case(cnt_ctrl[17:15])
        3'b000:
            selction <= 8'b1111_1110;
        3'b001:
            selction <= 8'b1111_1101;
        3'b010:
            selction <= 8'b1111_1011;
        3'b011:
            selction <= 8'b1111_0111;
        3'b100:
            selction <= 8'b1110_1111;
        3'b101:
            selction <= 8'b1101_1111;
        3'b110:
            selction <= 8'b1011_1111;
        3'b111:
            selction <= 8'b0111_1111;
    endcase
end

//put data into segment
always@(cnt_ctrl[17:15]) begin
    case(cnt_ctrl[17:15])
        3'b000:
            curr_data <= data_in[3:0];
        3'b001:
            curr_data <= data_in[7:4];
        3'b010:
            curr_data <= data_in[11:8];
        3'b011:
            curr_data <= data_in[15:12];
        3'b100:
            curr_data <= data_in[19:16];
        3'b101:
            curr_data <= data_in[23:20];  
        3'b110:
            curr_data <= data_in[27:24];
        3'b111:
            curr_data <= data_in[31:28];   
        default:
            curr_data <= 4'b1111;
    endcase
end

//actual display segment
always@(curr_data) begin
    case(curr_data)
        4'h0:
            data_out <= 8'hc0;
        4'h1:
            data_out <= 8'hf9;
        4'h2:
            data_out <= 8'ha4;
        4'h3:
            data_out <= 8'hb0;
        4'h4:
            data_out <= 8'h99;
        4'h5:
            data_out <= 8'h92;
        4'h6:
            data_out <= 8'h82;
        4'h7:
            data_out <= 8'hf8;
        4'h8:
            data_out <= 8'h80;
        4'h9:
            data_out <= 8'h90;
        default:
            data_out <= 8'hff;
    endcase
end

endmodule
