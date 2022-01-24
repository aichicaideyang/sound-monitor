module ov2640_reg_config(clk,rst,config_addr_add_data,valid_reg,next_reg);
   input clk;
   input rst;
   output reg [15:0]config_addr_add_data;//8位寄存器地址+8位数据
   output valid_reg;//该寄存器合法
   input next_reg;//下一位寄存器信号，由sccb给出

    parameter reg_nums=176;
    reg [8:0] reg_index=0;
    always @ (posedge clk)
    case (reg_index)
    8'h00:
    config_addr_add_data <= 16'hFF01;
    8'h01 :
    config_addr_add_data <= 16'h1280;
    8'h02 :
    config_addr_add_data <= 16'hFF00;
    8'h03 :
    config_addr_add_data <= 16'h2CFF;
    8'h04 :
    config_addr_add_data <= 16'h2EDF;
    8'h05 :
    config_addr_add_data <= 16'hFF01;
    8'h06 :
    config_addr_add_data <= 16'h3C32;
    8'h07 :
    config_addr_add_data <= 16'h1101;
    8'h08 :
    config_addr_add_data <= 16'h0902;
    8'h09 :
    config_addr_add_data <= 16'h0420;
    8'h0A :
    config_addr_add_data <= 16'h13E5;
    8'h0B :
    config_addr_add_data <= 16'h1448;
    8'h0C :
    config_addr_add_data <= 16'h2C0C;
    8'h0D :
    config_addr_add_data <= 16'h3378;
    8'h0E :
    config_addr_add_data <= 16'h3A33;
    8'h0F :
    config_addr_add_data <= 16'h3BFB;
    8'h10 :
    config_addr_add_data <= 16'h3E00;
    8'h11 :
    config_addr_add_data <= 16'h4311;
    8'h12 :
    config_addr_add_data <= 16'h1610;
    8'h13 :
    config_addr_add_data <= 16'h3992;
    8'h14 :
    config_addr_add_data <= 16'h35DA;
    8'h15 :
    config_addr_add_data <= 16'h221A;
    8'h16 :
    config_addr_add_data <= 16'h37C3;
    8'h17 :
    config_addr_add_data <= 16'h2300;
    8'h18 :
    config_addr_add_data <= 16'h34C0;
    8'h19 :
    config_addr_add_data <= 16'h361A;
    8'h1A :
    config_addr_add_data <= 16'h0688;
    8'h1B :
    config_addr_add_data <= 16'h07C0;
    8'h1C :
    config_addr_add_data <= 16'h0D87;
    8'h1D :
    config_addr_add_data <= 16'h0E41;
    8'h1E :
    config_addr_add_data <= 16'h4C00;
    8'h1F :
    config_addr_add_data <= 16'h4800;
    8'h20 :
    config_addr_add_data <= 16'h5B00;
    8'h21 :
    config_addr_add_data <= 16'h4203;
    8'h22 :
    config_addr_add_data <= 16'h4A81;
    8'h23 :
    config_addr_add_data <= 16'h2199;
    8'h24 :
    config_addr_add_data <= 16'h2440;
    8'h25 :
    config_addr_add_data <= 16'h2538;
    8'h26 :
    config_addr_add_data <= 16'h2682;
    8'h27 :
    config_addr_add_data <= 16'h5C00;
    8'h28 :
    config_addr_add_data <= 16'h6300;
    8'h29 :
    config_addr_add_data <= 16'h4600;
    8'h2A :
    config_addr_add_data <= 16'h0C3C;
    8'h2B :
    config_addr_add_data <= 16'h6170;
    8'h2C :
    config_addr_add_data <= 16'h6280;
    8'h2D :
    config_addr_add_data <= 16'h7C05;
    8'h2E :
    config_addr_add_data <= 16'h2080;
    8'h2F :
    config_addr_add_data <= 16'h2830;
    8'h30 :
    config_addr_add_data <= 16'h6C00;
    8'h31 :
    config_addr_add_data <= 16'h6D80;
    8'h32 :
    config_addr_add_data <= 16'h6E00;
    8'h33 :
    config_addr_add_data <= 16'h7002;
    8'h34 :
    config_addr_add_data <= 16'h7194;
    8'h35 :
    config_addr_add_data <= 16'h73C1;
    8'h36 :
    config_addr_add_data <= 16'h1240;
    8'h37 :
    config_addr_add_data <= 16'h1711;
    8'h38 :
    config_addr_add_data <= 16'h1839;
    8'h39 :
    config_addr_add_data <= 16'h1900;
    8'h3A :
    config_addr_add_data <= 16'h1A3C;
    8'h3B :
    config_addr_add_data <= 16'h3209;
    8'h3C :
    config_addr_add_data <= 16'h37C0;
    8'h3D :
    config_addr_add_data <= 16'h4FCA;
    8'h3E :
    config_addr_add_data <= 16'h50A8;
    8'h3F :
    config_addr_add_data <= 16'h5A23;
    8'h40 :
    config_addr_add_data <= 16'h6D00;
    8'h41 :
    config_addr_add_data <= 16'h3D38;
    8'h42 :
    config_addr_add_data <= 16'hFF00;
    8'h43 :
    config_addr_add_data <= 16'hE57F;
    8'h44 :
    config_addr_add_data <= 16'hF9C0;
    8'h45 :
    config_addr_add_data <= 16'h4124;
    8'h46 :
    config_addr_add_data <= 16'hE014;
    8'h47 :
    config_addr_add_data <= 16'h76FF;
    8'h48 :
    config_addr_add_data <= 16'h33A0;
    8'h49 :
    config_addr_add_data <= 16'h4220;
    8'h4A :
    config_addr_add_data <= 16'h4318;
    8'h4B :
    config_addr_add_data <= 16'h4C00;
    8'h4C :
    config_addr_add_data <= 16'h87D5;
    8'h4D :
    config_addr_add_data <= 16'h883F;
    8'h4E :
    config_addr_add_data <= 16'hD703;
    8'h4F :
    config_addr_add_data <= 16'hD910;
    8'h50 :
    config_addr_add_data <= 16'hD382;
    8'h51 :
    config_addr_add_data <= 16'hC808;
    8'h52 :
    config_addr_add_data <= 16'hC980;
    8'h53 :
    config_addr_add_data <= 16'h7C00;//////
    8'h54 :
    config_addr_add_data <= 16'h7D00;///////
    8'h55 :
    config_addr_add_data <= 16'h7C03;////////
    8'h56 :
    config_addr_add_data <= 16'h7D48;/////////
    8'h57 :
    config_addr_add_data <= 16'h7D48;/////////
    8'h58 :
    config_addr_add_data <= 16'h7C08;////////
    8'h59 :
    config_addr_add_data <= 16'h7D20;
    8'h5A :
    config_addr_add_data <= 16'h7D10;
    8'h5B :
    config_addr_add_data <= 16'h7D0E;
    8'h5C :
    config_addr_add_data <= 16'h9000;
    8'h5D :
    config_addr_add_data <= 16'h910E;
    8'h5E :
    config_addr_add_data <= 16'h911A;
    8'h5F :
    config_addr_add_data <= 16'h9131;
    8'h60 :
    config_addr_add_data <= 16'h915A;
    8'h61 :
    config_addr_add_data <= 16'h9169;
    8'h62 :
    config_addr_add_data <= 16'h9175;
    8'h63 :
    config_addr_add_data <= 16'h917E;
    8'h64 :
    config_addr_add_data <= 16'h9188;
    8'h65 :
    config_addr_add_data <= 16'h918F;
    8'h66 :
    config_addr_add_data <= 16'h9196;
    8'h67 :
    config_addr_add_data <= 16'h91A3;
    8'h68 :
    config_addr_add_data <= 16'h91AF;
    8'h69 :
    config_addr_add_data <= 16'h91C4;
    8'h6A :
    config_addr_add_data <= 16'h91D7;
    8'h6B :
    config_addr_add_data <= 16'h91E8;
    8'h6C :
    config_addr_add_data <= 16'h9120;
    8'h6D :
    config_addr_add_data <= 16'h9200;
    8'h6E :
    config_addr_add_data <= 16'h9306;
    8'h6F :
    config_addr_add_data <= 16'h93E3;
    8'h70 :
    config_addr_add_data <= 16'h9305;
    8'h71 :
    config_addr_add_data <= 16'h9305;
    8'h72 :
    config_addr_add_data <= 16'h9300;
    8'h73 :
    config_addr_add_data <= 16'h9304;
    8'h74 :
    config_addr_add_data <= 16'h9300;
    8'h75 :
    config_addr_add_data <= 16'h9300;
    8'h76 :
    config_addr_add_data <= 16'h9300;
    8'h77 :
    config_addr_add_data <= 16'h9300;
    8'h78 :
    config_addr_add_data <= 16'h9300;
    8'h79 :
    config_addr_add_data <= 16'h9300;
    8'h7A :
    config_addr_add_data <= 16'h9300;

    8'h7B :
    config_addr_add_data <= 16'h9600;
    8'h7C :
    config_addr_add_data <= 16'h9708;
    8'h7D :
    config_addr_add_data <= 16'h9719;
    8'h7E :
    config_addr_add_data <= 16'h9702;
    8'h7F :
    config_addr_add_data <= 16'h970C;
    8'h80 :
    config_addr_add_data <= 16'h9724;
    8'h81 :
    config_addr_add_data <= 16'h9730;
    8'h82 :
    config_addr_add_data <= 16'h9728;
    8'h83 :
    config_addr_add_data <= 16'h9726;
    8'h84 :
    config_addr_add_data <= 16'h9702;
    8'h85 :
    config_addr_add_data <= 16'h9798;
    8'h86 :
    config_addr_add_data <= 16'h9780;
    8'h87 :
    config_addr_add_data <= 16'h9700;
    8'h88 :
    config_addr_add_data <= 16'h9700;
    8'h89 :
    config_addr_add_data <= 16'hC3ED;
    8'h8A :
    config_addr_add_data <= 16'hA400;
    8'h8B :
    config_addr_add_data <= 16'hA800;///////
    8'h8C :
    config_addr_add_data <= 16'hC511;////////
    8'h8D :
    config_addr_add_data <= 16'hC651;/////////
    8'h8E :
    config_addr_add_data <= 16'hBF80;/////////
    8'h8F :
    config_addr_add_data <= 16'hC710;////////
    8'h90 :
    config_addr_add_data <= 16'hB666;
    8'h91 :
    config_addr_add_data <= 16'hB8A5;
    8'h92 :
    config_addr_add_data <= 16'hB764;
    8'h93 :
    config_addr_add_data <= 16'hB97C;
    8'h94 :
    config_addr_add_data <= 16'hB3AF;
    8'h95 :
    config_addr_add_data <= 16'hB497;
    8'h96 :
    config_addr_add_data <= 16'hB5FF;
    8'h97 :
    config_addr_add_data <= 16'hB0C5;
    8'h98 :
    config_addr_add_data <= 16'hB194;
    8'h99 :
    config_addr_add_data <= 16'hB20F;
    8'h9A :
    config_addr_add_data <= 16'hC45C;
    8'h9B :
    config_addr_add_data <= 16'hC050;
    8'h9C :
    config_addr_add_data <= 16'hC13C;
    8'h9D :
    config_addr_add_data <= 16'h8C00;
    8'h9E :
    config_addr_add_data <= 16'h863D;
    8'h9F :
    config_addr_add_data <= 16'h5000;
    8'hA0 :
    config_addr_add_data <= 16'h51A0;
    8'hA1 :
    config_addr_add_data <= 16'h5278;
    8'hA2 :
    config_addr_add_data <= 16'h5300;
    8'hA3 :
    config_addr_add_data <= 16'h5400;
    8'hA4 :
    config_addr_add_data <= 16'h5500;
    8'hA5 :
    config_addr_add_data <= 16'h5AA0;
    8'hA6 :
    config_addr_add_data <= 16'h5B78;
    8'hA7 :
    config_addr_add_data <= 16'h5C00;
    8'hA8 :
    config_addr_add_data <= 16'hD382;
    8'hA9 :
    config_addr_add_data <= 16'hC3ED;
    8'hAA :
    config_addr_add_data <= 16'h7F00;
    8'hAB :
    config_addr_add_data <= 16'hDA08;
    8'hAC :
    config_addr_add_data <= 16'hE51F;
    8'hAD :
    config_addr_add_data <= 16'hE167;
    8'hAE :
    config_addr_add_data <= 16'hE000;
    8'hAF :
    config_addr_add_data <= 16'hDD7F;
    8'hB0 :
    config_addr_add_data <= 16'h0500;
    endcase
   
    always @ (posedge clk)
        begin
            if(rst)
                reg_index<=0;
            else if(valid_reg&&next_reg)
                reg_index<=reg_index+1;
        end
        
    assign valid_reg=reg_index<=reg_nums;
endmodule