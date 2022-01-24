module sccb_test(); 
 reg CLK; 
 reg RST_n; 
 wire SIOC; 
 wire SIOD; 
 reg OV_VSYNC; 
 reg OV_HREF; 
 reg OV_PCLK; 
 wire OV_XCLK; 
 reg [7:0]OV_DATA; 
 wire OV_RST; 
 wire OV_PWDN; 
 
 wire Frame_vsync; 
 wire Frame_href; 
 wire [15:0]Frame_data; 
 wire Frame_clken; 
 wire [7:0]Fps_rate; 
 
 wire read_en; 
 wire sccb_out; 
 reg sccb_in; 
 wire yes; 
 wire [6:0]oData; 
 wire [7:0]bit_ctrl; 
 wire done; 
 
 initial 
 CLK = 0; 
 always 
 #1 CLK = ~CLK; 
 
 initial 
 begin 
 RST_n = 0; 
 #3 RST_n = 1; 
 end 
 
 initial 
 sccb_in = 0; 
 
 initial 
 OV_PCLK = 0; 
 always 
 #1 OV_PCLK = ~OV_PCLK; 
 
 initial 
 OV_DATA = 0; 
 always 
 #2 OV_DATA = OV_DATA + 1'b1; 
 
 initial 
 begin 
 OV_VSYNC = 1; 
 OV_HREF = 1; 
 end 
 
 assign SIOD = (read_en) ? sccb_in : 1'bz;//
向模块写入数据
 assign sccb_out = (~read_en) ? SIOD : 
1'bz;//从模块读出数据
 
 Show_ID uut( 
 .OV_SIOC(SIOC), 
 .OV_SIOD(SIOD), 
 .OV_VSYNC(OV_VSYNC), 
 .OV_HREF(OV_HREF), 
 .OV_PCLK(OV_PCLK), 
 .OV_XCLK(OV_XCLK), 
 .OV_DATA(OV_DATA), 
 .OV_RST(OV_RST), 
 .OV_PWDN(OV_PWDN), 
 .Frame_vsync(Frame_vsync), 
 .Frame_href(Frame_href), 
 .Frame_data(Frame_data), 
 .Frame_clken(Frame_clken), 
 .Fps_rate(Fps_rate), 
 
 .oData(oData), 
 .bit_ctrl(bit_ctrl), 
 
 .YES(yes), 
 
 .RST_n(RST_n), 
 .CLK(CLK), 
 .Read_en(read_en), 
 .done(done) 
 ); 
endmodule 
