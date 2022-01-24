// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Sat Jan 08 14:48:44 2022
// Host        : LAPTOP-SVDUSDKV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/86180/video_monitor_with_sound_sensor/video_monitor_with_sound_sensor.srcs/sources_1/ip/blk_mem_gen_2/blk_mem_gen_2_sim_netlist.v
// Design      : blk_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_2,blk_mem_gen_v8_3_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_3,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_2
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "3" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.858693 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_2.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_2.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "6282" *) 
  (* C_READ_DEPTH_B = "6282" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "6282" *) 
  (* C_WRITE_DEPTH_B = "6282" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_2_blk_mem_gen_v8_3_3 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module blk_mem_gen_2_bindec
   (ram_ena,
    addra,
    ena);
  output ram_ena;
  input [2:0]addra;
  input ena;

  wire [2:0]addra;
  wire ena;
  wire ram_ena;

  LUT4 #(
    .INIT(16'h4000)) 
    ENOUT_inferred__5
       (.I0(addra[0]),
        .I1(addra[2]),
        .I2(ena),
        .I3(addra[1]),
        .O(ram_ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_2_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire [8:0]ram_douta;
  wire ram_ena__0;
  wire ram_ena_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_14 ;
  wire \ramloop[2].ram.r_n_15 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;

  blk_mem_gen_2_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[12:10]),
        .ena(ena),
        .ram_ena(ram_ena__0));
  blk_mem_gen_2_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra[12:10]),
        .clka(clka),
        .douta(douta),
        .ena(ena),
        .ram_douta(ram_douta));
  LUT2 #(
    .INIT(4'h4)) 
    ram_ena
       (.I0(addra[12]),
        .I1(ena),
        .O(ram_ena_n_0));
  blk_mem_gen_2_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena(ena),
        .ena_0(ram_ena_n_0),
        .ram_douta(ram_douta));
  blk_mem_gen_2_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ramloop[1].ram.r_n_9 ),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOPADOP(\ramloop[1].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .ena(ena));
  blk_mem_gen_2_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[9:0]),
        .clka(clka),
        .\douta[15] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .ena(ena),
        .ram_ena(ram_ena__0));
  blk_mem_gen_2_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .\douta[15] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 }),
        .ena(ena),
        .ena_0(ram_ena_n_0));
  blk_mem_gen_2_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[10:0]),
        .\addra[11] (\ramloop[1].ram.r_n_9 ),
        .clka(clka),
        .\douta[15] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 }),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_2_blk_mem_gen_mux
   (douta,
    ena,
    addra,
    clka,
    DOADO,
    ram_douta,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram );
  output [15:0]douta;
  input ena;
  input [2:0]addra;
  input clka;
  input [7:0]DOADO;
  input [8:0]ram_douta;
  input [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input [0:0]DOPADOP;
  input [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;

  wire [15:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [6:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire [8:0]ram_douta;
  wire [2:0]sel_pipe;
  wire [2:0]sel_pipe_d1;

  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[0]_INST_0 
       (.I0(DOADO[0]),
        .I1(ram_douta[0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [0]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[10]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [10]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[11]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [11]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[12]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [3]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [12]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[12]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[13]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [4]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [13]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[13]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[14]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [5]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [14]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[14]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[15]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [6]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [15]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[15]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[1]_INST_0 
       (.I0(DOADO[1]),
        .I1(ram_douta[1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [1]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[2]_INST_0 
       (.I0(DOADO[2]),
        .I1(ram_douta[2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [2]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[3]_INST_0 
       (.I0(DOADO[3]),
        .I1(ram_douta[3]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [3]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[4]_INST_0 
       (.I0(DOADO[4]),
        .I1(ram_douta[4]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [4]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[5]_INST_0 
       (.I0(DOADO[5]),
        .I1(ram_douta[5]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [5]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[6]_INST_0 
       (.I0(DOADO[6]),
        .I1(ram_douta[6]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [6]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[7]_INST_0 
       (.I0(DOADO[7]),
        .I1(ram_douta[7]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [7]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[8]_INST_0 
       (.I0(DOPADOP),
        .I1(ram_douta[8]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [8]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'h00F0AAAACCCCCCCC)) 
    \douta[9]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [9]),
        .I3(sel_pipe_d1[0]),
        .I4(sel_pipe_d1[1]),
        .I5(sel_pipe_d1[2]),
        .O(douta[9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_2_blk_mem_gen_prim_width
   (ram_douta,
    clka,
    ena_0,
    ena,
    addra);
  output [8:0]ram_douta;
  input clka;
  input ena_0;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire ena;
  wire ena_0;
  wire [8:0]ram_douta;

  blk_mem_gen_2_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena(ena),
        .ena_0(ena_0),
        .ram_douta(ram_douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_2_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    ena,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input ena;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [12:0]addra;
  wire clka;
  wire ena;

  blk_mem_gen_2_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_2_blk_mem_gen_prim_width__parameterized1
   (\douta[15] ,
    clka,
    ram_ena,
    ena,
    addra);
  output [15:0]\douta[15] ;
  input clka;
  input ram_ena;
  input ena;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [15:0]\douta[15] ;
  wire ena;
  wire ram_ena;

  blk_mem_gen_2_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[15] (\douta[15] ),
        .ena(ena),
        .ram_ena(ram_ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_2_blk_mem_gen_prim_width__parameterized2
   (\douta[15] ,
    clka,
    ena_0,
    ena,
    addra);
  output [6:0]\douta[15] ;
  input clka;
  input ena_0;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [6:0]\douta[15] ;
  wire ena;
  wire ena_0;

  blk_mem_gen_2_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[15] (\douta[15] ),
        .ena(ena),
        .ena_0(ena_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_2_blk_mem_gen_prim_width__parameterized3
   (\douta[15] ,
    clka,
    \addra[11] ,
    ena,
    addra);
  output [6:0]\douta[15] ;
  input clka;
  input \addra[11] ;
  input ena;
  input [10:0]addra;

  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [6:0]\douta[15] ;
  wire ena;

  blk_mem_gen_2_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .\addra[11] (\addra[11] ),
        .clka(clka),
        .\douta[15] (\douta[15] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_2_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    clka,
    ena_0,
    ena,
    addra);
  output [8:0]ram_douta;
  input clka;
  input ena_0;
  input ena;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire ena;
  wire ena_0;
  wire [8:0]ram_douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000003F520000040B57B78FB374000000000000000008152443),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'hEDC56CD26F856801404000000000000000000000000000000000000000000000),
    .INITP_03(256'hD2A5D644892901093C3B66630A4A08A33419D7E0E21C76B9D55EA663AE4EDCD8),
    .INITP_04(256'h7B9212E5961378C4673E11F58E6D1F951632191889838DF290FD933194269D29),
    .INITP_05(256'hA67329A11ACE63A30EE245F5C768039A46A5278243FF24BFB0D812E120DD92BE),
    .INITP_06(256'h196592D4F8E8CCA5420044B2A04A64AB5A34A8B13FEE332D30DB7D8CF61AECB4),
    .INITP_07(256'hC1121961353180E2EC880E82D70C630E2F44F241AF95FBAA1F6DFC490204F1EC),
    .INITP_08(256'h5DA2CF4315CE5D90143C32180462323EB56631D6C2482221C6D297DD2A4C06CA),
    .INITP_09(256'h3AED131B51606568E28BB8108CC4309A491564ECE155E3086818024CA58172D1),
    .INITP_0A(256'hDA1FAC2D0BF2DC386670A4EB13D4D0895BF255E346F4A7105A27D9C6C450C4B0),
    .INITP_0B(256'hC53B120182B6C018D86210AC0F9A3133B2E9FF3C8AA735666E90B824D6687A84),
    .INITP_0C(256'h8E820A33FD8152B30AEE5B244034B4A4CE6245AFF188DD93355C790B023C3A07),
    .INITP_0D(256'hA0615E8CD7554B081B9E067C248556185B080300D04BCD05489361F103028229),
    .INITP_0E(256'hC23E004D40A86A1AFF8895BCC5AF160390130A68CA624E15E863FA9623D335AC),
    .INITP_0F(256'h141E05C2B4C7025719E212770F0F936E8FC4E63DC28F81E0BBF3B7F12FDC7C05),
    .INIT_00(256'h45545845FF008700585800FE010000004F5450F3AFFF00090031506200000344),
    .INIT_01(256'h38223A224449524F48545541222C2230223A2244494D55424C41227BFF00444E),
    .INIT_02(256'h58547D22333839393335353232223A224449474E4F5358494D222C2232383537),
    .INIT_03(256'h00000000000000000000000000000000000000FE00000000000000FE01000000),
    .INIT_04(256'h6F697373615020656C70727550FF003100324900000000000000000000000000),
    .INIT_05(256'h000000000000000000000000000000FE01000000435429B5476576694C28206E),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h002000080069000F64FB00000000000000000000000000000000000000000000),
    .INIT_16(256'h133021580460391E456400254220640E0DE6671B217270760400340000000100),
    .INIT_17(256'h9F512B1BF579A4F20DBFAE3B50FEDD3C39C3BC52F8F80CDBE8C22E4004045F41),
    .INIT_18(256'h00FF61F5544FF33030B71BDDFCBCBCC3FCAC79CFF85879F7E5178697C96EE53F),
    .INIT_19(256'hF7D58A34E0884BE246F117901CD06FE6884304C703C616581349C81F06D0FE04),
    .INIT_1A(256'h410301385048B7E671FB1F108DFFF0FC2070A0E2E781C4CB1085FAD8A1C678E3),
    .INIT_1B(256'hF803234C174DE493D474C8D0EC160306619C7C0301A35109074B91306C2EDCF9),
    .INIT_1C(256'h875CE6E5FF464A72F0820D098C786901000D00000000F0BE92FF372260F3FA36),
    .INIT_1D(256'h1FE321A8A70921B91F857C28EF808908976AA21840C6436100F7D376C6C0E19F),
    .INIT_1E(256'h63321B079AA9BDE9024030A2A8F8721A050200005411774F290946E98E5385EF),
    .INIT_1F(256'h5A7B447B7E3784A4BAE225CEF269EE5C45EA44A1B22A3B0A86C342852D771764),
    .INIT_20(256'hCE95882028AB020008C47294CEE040F5821103BF40A77A9E59F79DA60DA94F2C),
    .INIT_21(256'h7CD391869B4B87855B7EA7DD1AE95EA840D13ECFB074F876542D681798E4EE01),
    .INIT_22(256'h995B60063C03F392FFC4A19E17112A8F4432F46BAD77BBEB58499F9DB17637D5),
    .INIT_23(256'hCD6CDE8E43619A402481BBE0208C4A022F1DB10B6D30A980EB9811CC49EC00C8),
    .INIT_24(256'h48070508FC5676ECDEBE6FD65C8CE5279CCA57C93BA1D5A69AF303908BA3699D),
    .INIT_25(256'h84464A3DE47D53ACD1375E8AD7D95F13E0B18EC38852D1A9D7299C0014860C1A),
    .INIT_26(256'hB534A7F2AE8F1C8417582A5563B0D9CD826407FC984931E0445909C2DF09307A),
    .INIT_27(256'hC6E932A42B0FAE47D76DEE543F2283010010953BD67F438B16D14F9289764D3A),
    .INIT_28(256'hB02DBB4DA3E03EB83401007552835323C38D55D9FCE2B51EB2A726AB52D0710B),
    .INIT_29(256'h27737A27C8ED0E5C16D13C50503E611A4B78033103C492FF1944D94810494C3F),
    .INIT_2A(256'h5E4C4DEDE0BC138741B6D649D669A3E88C360F9B3572E20A3A9C281D72A90908),
    .INIT_2B(256'h567C02E42FA08017FDBC2AB31299570B29784B24223371DD7E5C23B3B7BC462B),
    .INIT_2C(256'h8CF8875F7DE890B8B45C67B8BB9A5C77280D10CBAB900B4098969C21B5F070D9),
    .INIT_2D(256'h272712432FBA76BCB16A1FA720164244CC20BBA78D455761A978A76F7EC2FCF3),
    .INIT_2E(256'h93D9513E0873E2C5F25B53987AC624DF964861D4B1D55986F1E5224B0B8E2C9A),
    .INIT_2F(256'h4AB32E63D292FF938A5D1015FD631851A77992010051BB379DF5FD113195C811),
    .INIT_30(256'h2E191DB910A885F7541204A09D76DFE6322B6A5686A51D98C93C53C4C2653A68),
    .INIT_31(256'h418DA247D34121009C5C2071187D8CB2A7A2C3D1AE655E99724DB057D75C11D8),
    .INIT_32(256'hEB944F828632B55A37EC3203A76048D34820A72E26DFB61CE75C35F3F4B05907),
    .INIT_33(256'h5CDA1D1B90101C260294B2B7605E35B1E80C939C448A190EA18DA4DCEDDB56B7),
    .INIT_34(256'h0CECF52160C0A639050252D593322121A1D68EB0D279948A727E4008528A874E),
    .INIT_35(256'h18545C5CAAD035C721683729C6395959AD8D65BD83BA21D26C97097CC62CE959),
    .INIT_36(256'h0418C19C640118DABD4E286E673A7C371331F3CD92FFA840961AC71A6022C4D4),
    .INIT_37(256'h84725D1CBBACC87716B94E4D4061133194200F0B9EA088B1BE136D4D45121D82),
    .INIT_38(256'hBA9B8B0987CA13028890D89804AEBAA611AED1956D91B622D08C6796F4A58258),
    .INIT_39(256'hE34C11B097971443615E2960A11C9E36D0C02E0048566AA50A602781C42E6F00),
    .INIT_3A(256'h84C41D0791A160198000A03B2611AC21DDD835ABC84D87B92FA36B87936CCBC3),
    .INIT_3B(256'h3E129430808595FEA4979510EC7646ACC2D56904E3845603547940D24942B271),
    .INIT_3C(256'h31648892FFB4084C081000E3188B1D4C30094C58304F3010D5C8D410E466626A),
    .INIT_3D(256'h87910959980A156B1A84310E086108DC09D190BE211809EF382CD43C7A5EC083),
    .INIT_3E(256'h20735284032480D8548246273C48681882F2490668702396533CE02A066164A4),
    .INIT_3F(256'h58A52E121E1DA9A801435338A1340E825FC6C91042AA6456E1B42A9B84968E01),
    .INIT_40(256'hB334DCAD1DE9A82206DF5C0C9CAAEC5459D14E5F28B0E89A0AD663DBF410A690),
    .INIT_41(256'h58600A819992198322AF85027AA595E102907B613D612F753FBBBAF9698D927C),
    .INIT_42(256'hCB441518D2403889FCED9A1D6041D2AA27F800948C0C10131D8E95B85080B089),
    .INIT_43(256'hE5A40FA81949E950F0D03D3A67C40331243892FF9AA4E414F2ACE74F5512F1D4),
    .INIT_44(256'h9020A167690950DE7F730000000019B7CAE32799887F85CB399BD4EDCDF9D7C8),
    .INIT_45(256'h911C898CD6616F4815854C521059E49C89A052033F84A533441F8CE0473919B3),
    .INIT_46(256'hBC82852730D7D65516848D184B5B382699400CC0020960842A95B3126D384442),
    .INIT_47(256'hE9B24A6E3017E72D196BBC59045DADB630BC591AC16440D6433C6649BF14D4D2),
    .INIT_48(256'hBFE8F4D90CD590BAB8CEB3DBE5237689BF1E107020A48BAC33B671CD0600C8CB),
    .INIT_49(256'h1392FF8DC49C1265586DA0A21DB12870A0C4CF4901101079976EC4249B3F78C8),
    .INIT_4A(256'h9BD80F0F3ECD77ABB0B1B4936992BA4BB28EA91501BD5450A6611A5A4EB33123),
    .INIT_4B(256'h065B97ED7289374B070000E799212199C5CD0CCAF2874B4C7053B93C4A85C85B),
    .INIT_4C(256'hB6C3898FD3B1A8ADAEEFF42CF922E2E090688C494EA5632B93EE138A64DDC8FD),
    .INIT_4D(256'h220E75FC2874AA45B38FEADA8F9C7A0C1C82B0282ADA50EB32088CB9970002CA),
    .INIT_4E(256'h7593713A2F595F00800CF6C361ADD5B9B70CD284AD861410A1B346C4D3CB430B),
    .INIT_4F(256'h012281816C80A36B780AB043B127EAABE524DD0B6A91A25AEE99C468668D7BEE),
    .INIT_50(256'h99B51849B05B385E65DA591EB32F621092FF49904B00C3DB81134F0ED615D6EB),
    .INIT_51(256'h09AAD2740A281CAFE6BFB2E9306BBAC1C7F7ADF4B77D4AD8C288774937FDE2E8),
    .INIT_52(256'hCD15B9E23783218921F35F8A2AF818BA11738A909C5915C3A92BD676821A1D00),
    .INIT_53(256'hCB76354A255138B345B57E3F393A7CBB52CD245A44218CBE21C48F84460899D3),
    .INIT_54(256'h014530627D96DA29E8FA01711AC7D757A062036A709FDC7EB465337366EE1231),
    .INIT_55(256'h3B9AF4BDADCFC04791A93B717B8D461B61F208557F2A4329F986C4862D3B8803),
    .INIT_56(256'hFFABC4B801251A43833F89E4684B5534017C4362984E222AB1FF921CDC32AFF5),
    .INIT_57(256'h184D727235C820D151953FA089C5189A4118493C5A54B2693A664D0330F31492),
    .INIT_58(256'h692B4C50865EBAF5C0C3B11AB840840E3269C187ED5F9EC523461F2B8C1476D9),
    .INIT_59(256'hD66B1374569C6BDA18D840F732C886946A894C390DED2A716C385DADB243A76B),
    .INIT_5A(256'h07E59A21D6CD55187F538263421AC94EA9FC5370C3D23B31960E307D952A0DBE),
    .INIT_5B(256'h927555624F4ABD57F766B5CAA7E95364D1468F825794D850235E6FC4EA3C12F8),
    .INIT_5C(256'h00006DBAD72FB9004759DD22AD0C964A21B7614FAD1268A5530D209BC78DBC4E),
    .INIT_5D(256'h1881BD5A4CA6611A56651B31231292FF713DA28A4D515CBC936512178E627929),
    .INIT_5E(256'h61EAE2571D87104B0C43C445868481419D9B3C493DBEC6F2E2860C2A962A0E71),
    .INIT_5F(256'hA1303953CE8CC7F9F0B30E4C36A963969C6294580048FC89FB6D994E65EB85DF),
    .INIT_60(256'h9A7DD2E08D0A230AF715C4912F12906F686DD3ED2B633F8B8C8374B9B42509F2),
    .INIT_61(256'h7148F1CDD3EB630510453700ACFBDD3E85814AC736CAB32142B1389B50608374),
    .INIT_62(256'hF98E6E097E0C0A15453FEED2E50D32321FFCB900E060A25A7AB485386BDE1696),
    .INIT_63(256'h42764A734F40A280EA5074F24402218A85C4128EFD2888ECFA9E43B791970711),
    .INIT_64(256'h80D489FCFA496C26C2AC5DFEB3A4BC18813D6148983D3B5265AB31230F92FFED),
    .INIT_65(256'h2B030088DC47341358AA265AB6BF472909B05FFBEAFDE1D355D005715AC4D91B),
    .INIT_66(256'hEA7DEC3DBB6DDD40ABB21CA2EBCEAD9DB0FAA2370F38C8F081371B4A7C39A75C),
    .INIT_67(256'h74C5511362B6E82FA83337A50170664F6CF2F1688018CD15050008965876B9BD),
    .INIT_68(256'h50AB400824C05EF4C5C13E874D4CA5E14536086222EB543AECD9BCA01AE9CD8D),
    .INIT_69(256'h2FFDABDA969AE04BA4467968C88BBF2F4326AE4077CE83547065A6FE940C9612),
    .INIT_6A(256'h986B64A23D3B59334930320F92FF150CE0DEF385930CC821A7083000982793D4),
    .INIT_6B(256'h28A444E854FF49D7DD58316B25F008D283D9F03AD40E1FE8B0A2D49C26559851),
    .INIT_6C(256'hE60709A64B967EA48CB589EC631CB403D73DC8ED9B03E3BB294C2773082B0400),
    .INIT_6D(256'h9061A157E2885462BF640B492526274B9E530A8CB51405E84775364AD3C1F4F4),
    .INIT_6E(256'h0C05E3C3FA453A6D3B2A10244E530A7D327076A8BA094138F6289C1F4755D6ED),
    .INIT_6F(256'h57804AEAFD8D594435167A3C645C461BDD2E84AC3433154CA93333B022FE540D),
    .INIT_70(256'h941359AA962CB6053495CFA6C92A46CC76766C74550ED17D6D024A4306CE8859),
    .INIT_71(256'h1EFA824505C848D06554B015B01681EB4A084E3D9B4436AB30232092FF1151D2),
    .INIT_72(256'h3B925F209C7D67A8D284554C2A522F4407DAA025AA5B000008B94B9D51469C51),
    .INIT_73(256'h542C4986C1B00E304B4642992470B31047996E22E945790640DF144B9D51AFBB),
    .INIT_74(256'h3B5221281D8203CDA7D29599ABC48F919015F69F8446E898FD0B5160647392A0),
    .INIT_75(256'h29E59C56DA508E641F1F0010A9BA4566D6E826A2CCCE020DD2A47B5C6169F82F),
    .INIT_76(256'h1C6FE6A2552707809ADA1083D42157B69F906F928222F9E42F3C3B4039814884),
    .INIT_77(256'h7026052B4336BB30031C92FF91DB5C5C499CBB5638EC0C406BEDBE71B16CFD56),
    .INIT_78(256'h80004210240906C2305ED27BCBFB026A7D9F61CE4B883C0F9EF4A3509809BD5A),
    .INIT_79(256'h01015EC3052F3EBEC84D45CB33D356F3E41B56784145B458E432E44728D41589),
    .INIT_7A(256'h2475A9FA2601832D0E79990EE9467E1B1090B8549642ACAB003B771C0B45A431),
    .INIT_7B(256'h098DC5C8A6B0E815049F0F00DD31E97CCD5DF63E15D814E1297C40F4FEE212D5),
    .INIT_7C(256'h420104801989D4E313FFE1DAE208AEB9AA144051A1C433AC981D9D1EB767D422),
    .INIT_7D(256'hFBB3977B0CDA7AEE840470300179DD3253C4A040AEB1AAE5A82C3E4430C2CB20),
    .INIT_7E(256'h08E4793B6698E00200A49517C9B067CC96611B5643E12C222A92FF42EA8551FC),
    .INIT_7F(256'hC25610D157A23E40D98FE78D5C36E4952096EA9301B980F8A991F6292ADB6AB7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],ram_douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],ram_douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_2_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    ena,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input ena;
  input [12:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [12:0]addra;
  wire clka;
  wire ena;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hC88A467A312C7129488A280DD4E41BF1F2204EC6B9009F9C1715B1929CEF0CA4),
    .INITP_01(256'h8D6BFAB3F6E460F1218DE0574FC4157C09E9A1BE2EEBE9124B244B579326015B),
    .INITP_02(256'h25345388FD8AA615492A23CA2FB536AEE9A1E6977CE49598423E1B2D00D409E6),
    .INITP_03(256'h6AF86B594FD848F1FFAC9071DD66E2E699F681733EFFAADBE115A6CA90F6678E),
    .INITP_04(256'hA0A03629B8A6412242D8915755D28578BCCAC4FE1B615ECD72CAE05BCE7EBE66),
    .INITP_05(256'h6F9C3088C08BCFDD323DAEE4CBC00DB0B8850A4268018407D18A853824043488),
    .INITP_06(256'h38A19252B54B8CEE0A965419FD82D0486197FE0483EE65F174CECEE6ED194C80),
    .INITP_07(256'hE9B2BDE12F3B5688861B838CC153079E20E029801BD9867A12A40C98C98AB1F4),
    .INIT_00(256'h720390132908DBD0BFB6A595F434B4CA2ACF8484A448F5B87587A24A0580004D),
    .INIT_01(256'h9DF4863E8996C0E5483594EA4344A91857C59C76546420002662A646DACE6329),
    .INIT_02(256'hB259C4F41836AC4162727880001895216B1369E9544D8C0DE0AA454D506581BA),
    .INIT_03(256'h50268BDB929D8FE89B18569669814B56CA354DE0C67DCA4A13F6A91F981E632B),
    .INIT_04(256'h3D9B464BD330224492FFC9136B8633837DDD1252EDAFD0E2DDC90C8C03000002),
    .INIT_05(256'h8358295EE2A604B000082C80433409F8E7B5BA4F09E161F58A7D1701AD6724B2),
    .INIT_06(256'h0042D2646643AAAF455F20E915EB1368C51824D125FC0A90E7838C68DA2C61C5),
    .INIT_07(256'hB93B6F562C699850BD851F8C46E6A9ABFFC479F2B4FA7BCC255177AC8A67F938),
    .INIT_08(256'hA0C7C348447411899753C0CA5A2E75A39340C83C081AF44DC2C1049242A88099),
    .INIT_09(256'h8505A26213B34C635E3BE674188E72460714DC915C87E2124B353A9A712C7BCB),
    .INIT_0A(256'hF802C8591F9271B2B1205C8C0D81C174B1CAD52B16B9D7391B010008BD9C2EBA),
    .INIT_0B(256'h3529B06BBA500A8D3C0F993D6038B23C7B437A8B31236292FF0940D907E72895),
    .INIT_0C(256'hA56B0A3D0E9FBE15CC6C22E35899CFC5B93EFF0F6C9A5B29842E4E10952A79BF),
    .INIT_0D(256'hBB829F8DF208ED09985C2D45B591620B44BE956807009008E94E02B4AF561BFB),
    .INIT_0E(256'h9255B004D2684C8AE4A98212AA0622CCAB54844025001000D25C620C868A8271),
    .INIT_0F(256'h91295A54F6238634AC998F73B4AF044064CC5E211203314C890A95092DCFBB72),
    .INIT_10(256'h61B22E5E4334297E594638D4C2498C7920280008399F58E8FEFFFF7A16304A05),
    .INIT_11(256'h693E1B4B247092FF6831A69D923F6C3D4D54D80461B90F5CBE3AC3202CE9F210),
    .INIT_12(256'h6DB14CDF23C2071C182120B237940BFAF389B700C3BB8A6819D92464FD7C610A),
    .INIT_13(256'hB0D450104B10D98C08301F841A9CA893C000A53A2C11CD3BDF5B94BBB149700C),
    .INIT_14(256'h52820A64475E053ECABB8900A48019028F7C1EC3F003C091A75A802107FFFF7F),
    .INIT_15(256'h000BE8060083E870AFF52BF22640A7136F900FD713FEB13E1E103DC9289CF59C),
    .INIT_16(256'h6411D89685577DD65E724D139B2AAE6204B744C5F9C54978214690A8A3D5D138),
    .INIT_17(256'hB460302E02009396A21614455816C2B0148590850C04FFFFFFAAB56A596A19CE),
    .INIT_18(256'h732CE8194819819691B06AF47A61EB56149B4DB34E92FF89CA6B4637B5ADAE47),
    .INIT_19(256'hD3FB4EEC4470C3280FC318477FCA82A5F1698079838F0D48B336D126E8486A89),
    .INIT_1A(256'h182920FF85B129689D9719FCAA797A1DBEC9F60CB0E4836A640D42EDB0EA88A9),
    .INIT_1B(256'h24A6DC87F5955C6D873A1EA594C296381AF121297CAC324CFB2E324CBA4A1CD2),
    .INIT_1C(256'hB3E7DB1267A824051DAA79D538A7DE7766B083E37B1001A0F5739C00ADD57DEE),
    .INIT_1D(256'h236A688E35365AB34238DA26627800800257653471DBB02E51A41036B19C6E2C),
    .INIT_1E(256'h3330E25292FF8D975D33C5DB135C19BAA30CDC25AD537650EC0FC825D4D3403A),
    .INIT_1F(256'h1E631CB871431B5040FFFFFFDF7EBF600909517BA74DB40A316604B8615A961C),
    .INIT_20(256'hA30FD0694C42D36B613C345554578964D9A0C3D9798F1C41B1C60E683C4BC658),
    .INIT_21(256'h319F1AC8F0E3B0620ADDC184E2C13493DF53AAD4BA7577263CCEF670664E03EA),
    .INIT_22(256'h7AA31D4B0A9414D191E1391E595C6824C1A1F4A4988138DB8DC323A02815E078),
    .INIT_23(256'h029B69C154097619239D8A1ED48BE78FC08A0521E0418339F9FFFFFF7FC8BD44),
    .INIT_24(256'h2CD9C43893A21AD22C1D3B188C012621529E66B5F18769323A17208407908845),
    .INIT_25(256'hA2C2F49A8C9681E152845A3DBB5E1DAB2FE22C92FF00601057B5394ACBF33E13),
    .INIT_26(256'hFF35C73B33359E765AADCBD287FDB1692C0E31E236305231A62E9BF0C6001E93),
    .INIT_27(256'hC110BA0D840B816037149F79BB196421C010640601BD475994610148075648AD),
    .INIT_28(256'hAA8C4E860C00D439648F834B6561D4862E96B9C992B9FC698825D013BF8EC20C),
    .INIT_29(256'hC7B1F88B7429F3564DB9F3FCB961C98740C06E9021B08786E24E0E0F0CE4B648),
    .INIT_2A(256'h5B01468630B0B968AB300B00002048FFFFC907EE70ADADB34BD55FA83F53CCFB),
    .INIT_2B(256'h222A92FFFD9886F3ACAD5EFFE58024A711E4EDB450F3BA0B13AA44B34214CEC5),
    .INIT_2C(256'h98116160156B1FA4731722D92B42CE010008999C16D93C586C7A61BB5333D328),
    .INIT_2D(256'h746183CCB60644FC3A9E1EFCAF2583D603DA2D9425BB9D7D878015EF20F05544),
    .INIT_2E(256'h6189F470C19002D92ACF1A5011A4A9CD68580E78AB2BA44F3020401A884CFB4A),
    .INIT_2F(256'h489F8A6202A3408AAD9EBA72857032101105E3DDB4816112638BDDCF404DC58F),
    .INIT_30(256'h27D27A54D81FE906B60C8D8B1C173DC1AE5EE90DE49E17E37D6DD16830B9E381),
    .INIT_31(256'hC81F8BE600A64801E2457A1049B371EB68EF62449410F9D64970D74D785BB841),
    .INIT_32(256'h1209711341315EC86C453B494C1332233792FFBA280036194D6F243939CA474D),
    .INIT_33(256'h007C5839544FC22D0E6709919ADE15F4BD87A29EAA675B51BF5DAA2802B2B86C),
    .INIT_34(256'h132346134C380C374727B2A9116F6573D123EDC2DDD953A626A9AA6D44E308A0),
    .INIT_35(256'h898683900502EE1D8BFC03A641E1400500006A727D3523F2D5E6FDA4314549BF),
    .INIT_36(256'h0218289D89063582F747455AA22800C1821CEF4843CB9C6355EDD6BACB946764),
    .INIT_37(256'h88DED73A5ECBA7A0B95F09BE53A0A907300F96638397C19D227D9B2257902552),
    .INIT_38(256'h90FF59433B2A5B7846AA789A3CE3FC9021B20181E5710352E65201D8B7400000),
    .INIT_39(256'h087101167820216D0D41F33584EFFCFF19BC1841A4667CC23C6B51499B31224D),
    .INIT_3A(256'h9ACEF5639908A20B0C5B1D9D4BA24774F9787963172A5CA15AF25B5B4665A028),
    .INIT_3B(256'hE134CA2E97923A078954C692A012E866D514132E87085BF2F7100003E8A852F2),
    .INIT_3C(256'hEAD4AAE18CC41A923201D188CB880F8320E0005CB5F5F7972F416F748046663D),
    .INIT_3D(256'hD301ED891A272D47400418889570ADF7AAE45B84ECE78D7596282E462221EDB8),
    .INIT_3E(256'h180569696E67979231EBC61633193E20FC38E6944435866CE58B4CB850A10EE0),
    .INIT_3F(256'h842D4AD04CC94A86282542E9DA910244FB06CCECE6D4EE4E755FA70C2A05BB4A),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[10:0],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(ena),
        .I1(addra[12]),
        .I2(addra[11]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_2_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[15] ,
    clka,
    ram_ena,
    ena,
    addra);
  output [15:0]\douta[15] ;
  input clka;
  input ram_ena;
  input ena;
  input [9:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 ;
  wire [9:0]addra;
  wire clka;
  wire [15:0]\douta[15] ;
  wire ena;
  wire ram_ena;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hF1866D5CECEA14973705059D04EA8B24D488B114A8C962A613B5FF1B848C99E3),
    .INIT_01(256'hB48BE46CAC0548BB014A0114B000E2A24CF16D69F8EB0D16FFB5BEBEE673E782),
    .INIT_02(256'h1A3592B8E6C0152066A4E164984414984404D8232DE36DA40056E3FB4330157F),
    .INIT_03(256'h372D8A667FDA782F48BF34C16DC9BBC415A83F3FF96675511A8908016473D284),
    .INIT_04(256'h4F474C9C4C4252109CC24719C0DFF620A81CA0A3DA0A1776A1D2800528004E4D),
    .INIT_05(256'h62B6D7B174BB705E9E88693FB95ACF56BB2B38D47A62AA66E4348E0BF918EA83),
    .INIT_06(256'h97976B84ABF169155CB6968DA704A472E4EF6050812083E0252594D4A86128B4),
    .INIT_07(256'h13A5BC6DC6E974270E65AD30D3A08FB5228C5AEFE80920A3A3E4E0A2001B0CB8),
    .INIT_08(256'h0000000000000000000000000000000070F4328A8C8707692A5C9110B59924E5),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\douta[15] ),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_2_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[15] ,
    clka,
    ena_0,
    ena,
    addra);
  output [6:0]\douta[15] ;
  input clka;
  input ena_0;
  input ena;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_45 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [11:0]addra;
  wire clka;
  wire [6:0]\douta[15] ;
  wire ena;
  wire ena_0;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000007F000000002C2A187F0002002928274B3F7F00000000222A0500001924),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000007F00000000),
    .INIT_02(256'h2C00000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h1A23221B2118191A191B1C2222221A211B1A1A7F002429202423257F0029002C),
    .INIT_04(256'h0000000000000000000000007F000000002A2A211B221B211A211A22211C181A),
    .INIT_05(256'h000000000000000000001C1C1C1C1C7F00060025290035390000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0006000000007800487F00000000000000000000000000000000000000000000),
    .INIT_16(256'h170919382C05401B27702D38370D1D1459650C1D0B19454F0040001000520000),
    .INIT_17(256'h7F5B57437B615265236D4A763F23374E067930295F706053444101640D232525),
    .INIT_18(256'h7F0C247B3757617E6E531318791C4F1879736F30307B4F7B54116A7F0F2C484A),
    .INIT_19(256'h7755082C106D6F0D740241117A21555908101D1C4C785C211E2D7133030F3C3B),
    .INIT_1A(256'h236531610C237F417B7F2A4552202770587C00610131430E375E1F5F24051E00),
    .INIT_1B(256'h56054F08247F51263154323C235160460C442979440201414918273C10532E08),
    .INIT_1C(256'h4012457C154062004F4733005A270B0010000400340044327D7A0835763A7F76),
    .INIT_1D(256'h1471494D7D5864004B577244705C506642010019267F02290800022852390E54),
    .INIT_1E(256'h4E7201700D1A6A3A080020491033441E770000001A4A7E7F610A0F093D62730C),
    .INIT_1F(256'h56121F19373F0604080B12456D59007C142F5733421B407F3869077E206A0249),
    .INIT_20(256'h7566781525400000522A06441968016F3A0B75357E404B4E3776592F376B3737),
    .INIT_21(256'h7C4D1226070E6D42341719474E6E3B2F5823615D431C2F79155911484F673C65),
    .INIT_22(256'h730033684800327D0A00606A47483E22443B4A29424F6E3B6D3A58085912022F),
    .INIT_23(256'h1D4178423C042D71061732331F1A302E782B62054B5F0159746D005E63096678),
    .INIT_24(256'h1D2000482E3C451E3D68487B6E3B7427621813061F6C4A4D217E316D4B1B2B09),
    .INIT_25(256'h786845653F7E7D67331E28141A5F61085E147A5C5C1F44624E386A1D20023304),
    .INIT_26(256'h3E4C434B76284C11254F3E27663402101A240122580E4B3F252C0622340D4249),
    .INIT_27(256'h2F16724951061309431D36520E6B790800103A6A5C2F196D11494D40300C4F30),
    .INIT_28(256'h65125405145035621500016016753857751D21387F644412315D0C6560751F3E),
    .INIT_29(256'h220F3253254D7B351965666345436D13302C693803327D407923027E46006C5D),
    .INIT_2A(256'h210026697063401C4D5632712F3E2D581C243D465D465A497552606B0E3C6853),
    .INIT_2B(256'h403120093420071B425B12424B665274124F4574134E1B665A3E0265361D262A),
    .INIT_2C(256'h25000923250D512059302F7426194B5C0040385202276C464D13011438450024),
    .INIT_2D(256'h242E4040331F5D562D7D1323496669040D3E46481754606C3A2C2152535C764A),
    .INIT_2E(256'h213238664E0220046847542C327C02361B483104621B41177E436211143A3F21),
    .INIT_2F(256'h07691041227D6C174D2566482D012518301E2F066A3D286E4B4F6331216F426E),
    .INIT_30(256'h5123466D4A553C097A110B70417A402248171B063843753B65265D4513183379),
    .INIT_31(256'h22035D310462081B414301233F744E1079192611575B3A78693E30427114643F),
    .INIT_32(256'h622B623B123B0A1265472766334C667A1E7F26701B5A22017001100A49780D21),
    .INIT_33(256'h0021695A3E0227410859234C312362760F460C2543455B196E5E4A6F777F4F61),
    .INIT_34(256'h187062334B03396A19773D752C33330C17366B071360092B05240B4A045D4E0A),
    .INIT_35(256'h594444101E760B1E550E4D003D1B2D260C65795D3A0E274878061E0C1D1A2A6B),
    .INIT_36(256'h7243501C6654374A2662470620430106695A07227D49027A2D26102C19586825),
    .INIT_37(256'h2D431D0332432F6D1F696A43083441444340470C5518081C055A2B574C02222E),
    .INIT_38(256'h750B02601B2D0C671D152B032530354A69352C25065B593A26511C613B6B1C43),
    .INIT_39(256'h5E3B6E61684B7D5C41514D020B2B2C64240B114F12073A17673038536D222E53),
    .INIT_3A(256'h381C7A1F2334590F000000343B1F6C38067021332616154C5773701357111400),
    .INIT_3B(256'h1D51756766121B05523C064C2F7275026C543A7C4D6F024F7B642B03695C6350),
    .INIT_3C(256'h0B07327D644A1B06281003032902620F062B0C260D0C021818540620006D4C75),
    .INIT_3D(256'h2200445C02061A5013490C50543E38305014484674731807634C665543003C69),
    .INIT_3E(256'h0268197E400B080A0C111032022E24080C440C21083000415E27323C00126321),
    .INIT_3F(256'h035C0712455C7D7E00641E140D176171554E0F7B103372092B474616420F0B0C),
    .INIT_40(256'h1E2C46575553030363663728310540345940534B122A04304864327839287B13),
    .INIT_41(256'h0C44430805104D496E640D02761227426A546464356C23662B381405084E3727),
    .INIT_42(256'h3B051735387B7A401E52694E5C0C0A1D500E564E024212784B4608682158020C),
    .INIT_43(256'h5C2579352347266227344E23093C686147327D66182C246A685829410E19694D),
    .INIT_44(256'h4C78450A170774017E3E02000010374E774358006F006E0202431C60464E4A22),
    .INIT_45(256'h67535E7D572963207F6E20450C026B0C786D721F401741121121002C6931677B),
    .INIT_46(256'h0A4350100F192A4C174226063A3C2151737C642F46422039410025542A4C2664),
    .INIT_47(256'h3941752B4D492017492A78290F2F08526877157A053A7E08691D2E4F0442335F),
    .INIT_48(256'h156050593E0143062A12303D083E6B1C795B79055B134D6D0A6E627520024A7C),
    .INIT_49(256'h327D6654586F402A6175632C020F7217012118400055107B5C2438753A337177),
    .INIT_4A(256'h3F740E7F0E143319587C1C62341161444943351E1C766326736E0340176A4001),
    .INIT_4B(256'h597E7D776114757B0300004E1E434D0D594A1914220470176C43556B1C6A416C),
    .INIT_4C(256'h6114234D765F497C0E6E222B3E73673609623B160700211A371B611E143D3832),
    .INIT_4D(256'h612667356E0510006B6C4F28772A1528656344551F2109410F5D504006015232),
    .INIT_4E(256'h5A7242711F473F02206F3D075D44192126216C542202442615116A5636544941),
    .INIT_4F(256'h005D7B04165755292713261A1556705D61700C010F254D635B32524F630E564E),
    .INIT_50(256'h4375346C06616673692248146B7F03227D411B7A1E6C3C38240952392C0A0000),
    .INIT_51(256'h7B39713A13524407320C452C551B590350603A796C5F7052780025280637613C),
    .INIT_52(256'h04160D0F5C5A6D3F09302F334A212B0F275C38680E1D53773C57425661301850),
    .INIT_53(256'h2B5B1307704A133A234D1414600E7510702310610372387109527D5A50122252),
    .INIT_54(256'h08084B5F356D2B727C0D2072073215021913206F42023B13270B58777863244B),
    .INIT_55(256'h181D5A444338134F342A3A690A4A6520003B64224071363669181F7D21165A0F),
    .INIT_56(256'h112C6557652B26431145565B4D2A612C6401091F21473753205339766F020E39),
    .INIT_57(256'h62516A4B760B41154D4B6B2A42441043353868065F0576581311176B1347227D),
    .INIT_58(256'h45212558536E406E526837483B341C02662127247F6E09461D096525554B1C36),
    .INIT_59(256'h474374532415663B2D5B4B6B150A545512174204296F373C39430A594D044970),
    .INIT_5A(256'h274F072A76663456217206671224272265782B163136273D381A316656113522),
    .INIT_5B(256'h682C69207737026D783028593475562A4C256B7F1C314E3359050C637C5A2535),
    .INIT_5C(256'h1400722E0865793938211A551225123256245D6B20555B0833513A1D1C38482D),
    .INIT_5D(256'h1E18566366446C6311176A5241327D281E13326A0C412D3A31092C4160485616),
    .INIT_5E(256'h78691A0846041B62387B04301D593405094F121473597A1813500D137B144376),
    .INIT_5F(256'h0709315610494A341A6D0D7706030A0519437C06001869232E3D3F1C59626A72),
    .INIT_60(256'h2D580E302B3421204A40122B542240771451776D33777361330F7C0638362D40),
    .INIT_61(256'h6A5A4972296A02431F67605B1C04700B5E4E382A1D597802451D6764000E0D38),
    .INIT_62(256'h510F3E3043400B473867772A65255C247C0C400010451037384D143F7D5E7339),
    .INIT_63(256'h08284001686B282B4E030A5200037E106A0C1313167B6D7E1F0D4F6626073172),
    .INIT_64(256'h5170125464566D591E3B11695C2B76234626630643045310176B3D01327D5C4F),
    .INIT_65(256'h3802402E503D4E532B25477E2B72434B491D5A790C7C401435786B68106A1B7D),
    .INIT_66(256'h204D3603794F294E21314D26755D5607681D3A64081123535F5757736D100E5A),
    .INIT_67(256'h064F73535328306F7E25423F193116297A1C7E4B492D485028045E5242772E48),
    .INIT_68(256'h1C02006226551B061A19667166753242762262596B4E6C1C282E604A320D0245),
    .INIT_69(256'h5C7E6A6A506549222D62746856637D770D0C2D615A20496E717A337F4311616C),
    .INIT_6A(256'h236505441D6361766D4E01227D456773272C7C27427B125D240C0034115A4F7B),
    .INIT_6B(256'h3A392E5E623E37191D175B551C18655A0823761A524C08720C0921284356363C),
    .INIT_6C(256'h0B046F5049550376433D5E3E5C3C3912465516605E360B465C39176C03000070),
    .INIT_6D(256'h7E042E4E2F572E765E6514040109682000004005341378053A3C75761A686868),
    .INIT_6E(256'h5A6528472B414C041720384E0D3D170D5871573D2422580A5C48654726551D3E),
    .INIT_6F(256'h4C212E37161C590A152E1569591F160E2C017E1756430E060817286F3F5C137F),
    .INIT_70(256'h0B283D763F0B35032C0C3A6E351148600F374C045970593A45233802223C3D35),
    .INIT_71(256'h2E27424B2A4255634E753C7B761010066309412F5209046C0000327D3C534214),
    .INIT_72(256'h4A02537C67063E6B19351C1C0F12656112523072570F00000C4829630B4D1E59),
    .INIT_73(256'h39600560417B712F184E13631627235468481700603333551932417D2B411F3E),
    .INIT_74(256'h712820701834291C260B23114559003C203F5678585A37056B48182C47264658),
    .INIT_75(256'h2072721B2B7B21010F0C0278094B3638600F5B081D49314F692E5A372675604F),
    .INIT_76(256'h225604613C000005001E0E59080D77637610734918126A5C1F203C1C364F711D),
    .INIT_77(256'h0674277211162B1041327D36515E74086614727A1B0B67676100572B5A1F352C),
    .INIT_78(256'h080822434012375E1C043B1D31186445397E0A2549364E040D047A361D473664),
    .INIT_79(256'h7614510257692172156822342749020C37654E382423542C362F502A28425A5D),
    .INIT_7A(256'h287C696054384D29342A00090D5642100C317871143067566E4C684729501239),
    .INIT_7B(256'h1A4E0D5B6D68191A4D4F0440656D590F71244F5A3D7E134B2D60485861616B7A),
    .INIT_7C(256'h0203004C053445481157654F04362E4F14150B39111E4D5E555B183975544D38),
    .INIT_7D(256'h0F4B667154733C1C437A687E475D5E7A792A052A5401340D14275426456C1741),
    .INIT_7E(256'h012C2913493901007D43762469234D24441E6361766D4841227D56412F7D5057),
    .INIT_7F(256'h482D110F2E4063690F2B10053C335C3101375F54744F395A5C513D472C211346),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_45 ,\douta[15] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_0),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_2_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[15] ,
    clka,
    \addra[11] ,
    ena,
    addra);
  output [6:0]\douta[15] ;
  input clka;
  input \addra[11] ;
  input ena;
  input [10:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8 ;
  wire [10:0]addra;
  wire \addra[11] ;
  wire clka;
  wire [6:0]\douta[15] ;
  wire ena;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h5E090D496712711D0C27426B2E1A345A4C500A5224744A640B490C7070180C59),
    .INIT_01(256'h680C2728213B433C6D5A2B282A0C2B750E6D4C7C1A61115752021931124D7E53),
    .INIT_02(256'h0E707E7D2332403654070400200071452E3A203F534C732C4A741A5332462836),
    .INIT_03(256'h414843520A155E22237546525311141631441901577D27763A66044E231C3402),
    .INIT_04(256'h263258076C6F41327D6509607312011A6365024418747B7A6D44297F14005010),
    .INIT_05(256'h074D721C124A4705312240144F0A4119595E0C0C5B2A4B6842761D0B53606511),
    .INIT_06(256'h00503A326D675D55796D163A6C483D7956133A5F384D591A56586677333B041E),
    .INIT_07(256'h5E5A547C436655414E023C58590239297A595C406A7965480C7F67766D7C0101),
    .INIT_08(256'h3723347D28153E14231736457D6309101C0342042A1144511B0001321465104C),
    .INIT_09(256'h3A3B767F4B5533634B7A2A22281974523721682A4919400E3808123423763D22),
    .INIT_0A(256'h2822175F7510493239216407661A265D6B65274E530E705120004060746C1A2A),
    .INIT_0B(256'h49720358121E1D7A760017366546611E02382C6A7647327D4F08385A76557F5A),
    .INIT_0C(256'h601A410A4C7832665F762B660B292300376B0C5B4F434D7D631D0747206F0F4B),
    .INIT_0D(256'h7C5F7441154014490E400250794C11664313316D2002206B7730247F097C4976),
    .INIT_0E(256'h5E602401155E4B0B683E046175074D79082467101A71005D4F40543605745343),
    .INIT_0F(256'h693D016B0932267619582772065F730C211260292A29680C3D2E5D0942255752),
    .INIT_10(256'h02144965692A174160240E5F4B16103101000000017A1C3C7F7F134F164B4D09),
    .INIT_11(256'h13172B1D03227D1B4850725B2A6A7912574D66566029585D266B0F2B7A060355),
    .INIT_12(256'h1C0B563C565227372E68717940451970557F010613197A36222B762127737D43),
    .INIT_13(256'h252C71486A2B336828393E5C771C556C68206C2C3201176B2D5D572739625E32),
    .INIT_14(256'h5C626E133A521B120448100118701C0078024011044711385E0A61217E7F7F49),
    .INIT_15(256'h5F696D000863273B05656F0B42177861212B620A68715C675D5842784C186454),
    .INIT_16(256'h6A64536B16065F4A46186B02786D416E6C1121132172671E690E124179495D1D),
    .INIT_17(256'h015C4600000414711803422C0A46512C0B621424027A7F7F4F761E66365B7E7E),
    .INIT_18(256'h5A2A02357843762337736164131B123B062C7403227D1F06106E335D63530465),
    .INIT_19(256'h54111D05480225782C59276A097B790C060B0A4C5672473A6863151537145060),
    .INIT_1A(256'h214E7F7F2817713F50754619404F1C443F562F101D6D2818680122016D501079),
    .INIT_1B(256'h442F564E08467B64422A5844386E125D281818385C5D2C502E326E447423627A),
    .INIT_1C(256'h006E7A0A2A0920025B2E6E201A730B4F662103470A600013300545515360680E),
    .INIT_1D(256'h16790A14004F2803182D292A7C3E00125D2D5C78295A1C23522B5D024E244D14),
    .INIT_1E(256'h6D4441227D4A58653F394735465F4E6271160A23661D3E1A300C0662583C6E69),
    .INIT_1F(256'h70001E4820040850727F7F7F322D0D1B6A3D0515413626177655654379166204),
    .INIT_20(256'h220814160D11085C7B7547220D635202034042535E3505750E28622C4D726861),
    .INIT_21(256'h5B437F3912497D241047212964512E797D5F797A122472212B26741C686D215D),
    .INIT_22(256'h45100A461C552D68143873242C44471A7F346E2B3B496128301743521B53043B),
    .INIT_23(256'h245216764D6E15143805223734634C52412807106B1307697F7F7F7F1A63160F),
    .INIT_24(256'h571E0942426B454A6F731723536705281F4F5C573668247719451B0271241040),
    .INIT_25(256'h0C07317A7624475663471321621B066C5205227D43002E2B7266454421561623),
    .INIT_26(256'h7F4D40191F37651F7F1A56211127410C7C7C135E630C41710E6E017C68306007),
    .INIT_27(256'h4C43201E20732148383B612561072806064E6304384A1802542108225A34357F),
    .INIT_28(256'h7C38316F25660C6E67246B196937224326714A1851563E152C51163A4C47296D),
    .INIT_29(256'h4839481100793629297A2D385C5D114608493C24090310345607640A55751D2E),
    .INIT_2A(256'h59602D53025D2628154340000645337F3F04120B7D6532612F275765235B6A61),
    .INIT_2B(256'h01227D4C6F5F6374661F18696C2F3229376E424E5F6E09384E49432B492B0546),
    .INIT_2C(256'h4930144E173F003631485B737323380E00717A761F67065B0613036269066C4F),
    .INIT_2D(256'h05653F427A05024222631E537050163A3A12051C0D342B39190035763C410E32),
    .INIT_2E(256'h2A76631F5C1613162A385A551C2F314B3B444E4848653920024C050020536D61),
    .INIT_2F(256'h1C09234678157033160902241664244000040F22791D285332191013661D3B02),
    .INIT_30(256'h340B14442340530703005055594F094A2C5246003F0421161D31614916150924),
    .INIT_31(256'h39427E28227A6211181A732D141243020114601B256668055E14580513161C1D),
    .INIT_32(256'h3C03760D1A3663654226125A272B1347327D75010000117B7B4B27070A303A50),
    .INIT_33(256'h0A1F23080B61286F6C1D56527C2C723A360C74240500121A0324606A12522C10),
    .INIT_34(256'h065C4A0663416C2B3D1E61740B032D7156640D17082205155B106A494C030351),
    .INIT_35(256'h5304063D0B26102E24605329262C56034119266559044277243508107A4B4C13),
    .INIT_36(256'h5B0405394305013B0263564D00004E010478100C7E294C646D633D4B126E3B20),
    .INIT_37(256'h4C7A6C165F584E6A1F0C701C1B5C513F744D2141551D7C4E77017A08793D2636),
    .INIT_38(256'h7D394741081C74675E4C05220E2B13122F32093332112F2A3B60646F0D000020),
    .INIT_39(256'h4D2B110001086360282E7E222A3F45707B36206A73624564061370076B6E0032),
    .INIT_3A(256'h6F4F100C1E173D211C121E262501483A4F58161F4A0B51503D07195676493342),
    .INIT_3B(256'h3C3E29423D7E2A2233281A1E47317C5C201E433D0821787700000928151E7970),
    .INIT_3C(256'h091819656D6D1911077C51783F215005040000002927347F29647F7413241707),
    .INIT_3D(256'h001D79534E530314252000607B077A2E53537364042E4B4E186A664372331B29),
    .INIT_3E(256'h084378767D7F6A2F2E374D090D381871405A630739443354250B7658642E2510),
    .INIT_3F(256'h140B4C18340227307D290E28160131497F3A3B2C2A601A3E43626A4F2F562400),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8 ,\douta[15] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\addra[11] ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_2_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  blk_mem_gen_2_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* C_ADDRA_WIDTH = "13" *) (* C_ADDRB_WIDTH = "13" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "3" *) 
(* C_COUNT_36K_BRAM = "2" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.858693 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_2.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_2.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "6282" *) (* C_READ_DEPTH_B = "6282" *) (* C_READ_WIDTH_A = "16" *) 
(* C_READ_WIDTH_B = "16" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "6282" *) (* C_WRITE_DEPTH_B = "6282" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_3" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_2_blk_mem_gen_v8_3_3
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [12:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [12:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [12:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [12:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [12:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  assign dbiterr = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_2_blk_mem_gen_v8_3_3_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_3_synth" *) 
module blk_mem_gen_2_blk_mem_gen_v8_3_3_synth
   (douta,
    clka,
    ena,
    addra);
  output [15:0]douta;
  input clka;
  input ena;
  input [12:0]addra;

  wire [12:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  blk_mem_gen_2_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
