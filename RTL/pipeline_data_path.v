
module pipeline_data_path 
 (PCScr , ResultSrc , MemWrite ,ALUControl, ALUSrc ,immSrc ,RegWrite ,Jscr ,s_m1 , s_m2 , stall  , kill, op , funct3 ,funct7, isa_type ,isa_type_e,isa_type_M,isa_type_W, Rs1D , Rs2D ,RdE ,RdM ,RdW,zero , clk , rst);
input  [1:0] s_m1 , s_m2 ; 
input  stall , kill ;
input PCScr  , MemWrite , ALUSrc , RegWrite ,Jscr ;
input [1:0] immSrc , ResultSrc ; 
input [3:0] ALUControl ;
output [4:0] Rs1D , Rs2D , RdE , RdM  , RdW ; 
output [6:0] op ;// op_e ;
output [2:0] funct3 ;
output zero,  funct7  ,clk , rst; 
output [1:0] isa_type_e , isa_type_M , isa_type_W;
input  [1:0] isa_type;
  
  wire [31:0] PCNEXT , PC ,PC_D  , PCPlus4 , PCPlus4_D ,PCPlus4_E, PCPlus4_M , PCPlus4_W , Instr ,Instr_mm ,Instr_cnt ,Instr_D ,Instr_E , SrcA_E  ,WriteDataD,WriteDataE,WriteDataM , ReadDataE , ALUResultE,ALUResultM 
   ,ALUResultW , ResultM,ResultW  ,ReadDataW , immExt_D,immExt_E, SrcB_E, PC_TargetE ,j_val, RD1_D, RD2_D ,RD2_E , RD1_E , ReadDataM , PCPlus4F , nop ;
    wire [31:0 ] RD1D , RD2D , F1 ,F2 ,PC_TargetD , mux3_o , MReadDataM ; 
   wire [4:0]  Rd_D ,RD_E , RD_M , RD_W; 
   wire [3:0] ALUControl_E ; 
   wire [1:0] ResultSrc_E , ResultSrc_M , ResultSrc_W;
   wire ALUSrc_E, Jscr_E ,RegWrite_E ,RegWrite_M, RegWrite_W, MemWrite_E , MemWrite_M , not_stall; 
  assign nop = 32'b00000000000000000000000000010011 ;
  ///////////////////////// FETCH //////////////////////////////////////////////////
  assign not_stall = ~stall ; 
  mux MUX1 ( .I1(PCPlus4),.I2(PC_TargetD),.O(PCNEXT),.S(PCScr)); 
 // PC PC1 (.PCNEXT(PCNEXT) , .PC(PC) , .clk(clk) );
  conf_register #(32) PC1  (.in(PCNEXT) , .out(PC) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(not_stall) );
  adder add1 (.A(PC) , .B(32'h00000004) , .SUM(PCPlus4)) ;
  inst_memory mm1 (.A(PC), .RD(Instr_mm) );
   mux MUX_k ( .I1(Instr_mm),.I2(nop),.O(Instr),.S(kill) );
  ////////////////////// DECODE ////////////////////////////////////////////////////////
  conf_register #(32) D_Instr  (.in(Instr) , .out(Instr_D) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(not_stall) );
  conf_register #(32) D_PC  (.in(PC) , .out(PC_D) , .clk(clk) , .rst(rst) , .clear(1'b0) ,.en(not_stall));
  conf_register #(32) D_PLUS4  (.in(PCPlus4) , .out(PCPlus4_D) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(not_stall) );
 

   mux MUX_s ( .I1(Instr_D),.I2(nop),.O(Instr_cnt),.S(stall) );
  assign op = Instr_cnt[6:0] ; 
  assign funct3 = Instr_cnt[14:12] ;
  assign funct7 = Instr_cnt[30] ; 
  extend ext (.Instr(Instr_D[31:7]), .immExt(immExt_D), .immSrc(immSrc) );
  reg_file ref_file (.A1(Instr_D[19:15]),.A2(Instr_D[24:20]),.A3(RD_W),.WD3(ResultW),.RD1(RD1_D) ,.RD2(RD2_D) ,.WE3(RegWrite_W) ,.clk(clk) );
  

   mux_4to1 MUX_F1 ( .I1(RD1_D),.I2(ALUResultE),.I3(ResultM),.I4(ResultW),.O(RD1D),.S(s_m1) );
   mux_4to1 MUX_F2 ( .I1(RD2_D),.I2(ALUResultE),.I3(ResultM),.I4(ResultW),.O(F2),.S(s_m2) );

    mux MUX2 ( .I1(F2),.I2(immExt_D),.O(RD2D),.S(ALUSrc) );
    adder add2 (.A(j_val) , .B(immExt_D) , .SUM(PC_TargetD)) ;
    mux MUX_j ( .I1(PC_D),.I2(RD1D),.O(j_val),.S(Jscr) );
    assign Rs1D = Instr_D[19:15] ;
    assign Rs2D = Instr_D[24:20] ;
    assign Rd_D = Instr_cnt[11:7] ;

    assign WriteDataD = F2 ; 
  
   compare COMP ( RD1D , RD2D , zero);
  ////////////////////////// EX////////////////////////////////////////////////////////
  conf_register #(4) ALUControlu (.in(ALUControl) , .out(ALUControl_E) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(1'b1));
  conf_register #(1) RegWrite_Eu  (.in(RegWrite) , .out(RegWrite_E) , .clk(clk) , .rst(rst) , .clear(1'b0), .en(1'b1) );
  conf_register #(1) MemWrite_Eu  (.in(MemWrite) , .out(MemWrite_E) , .clk(clk) , .rst(rst) , .clear(1'b0), .en(1'b1) );
  conf_register #(2) ResultSrc_Eu  (.in(ResultSrc) , .out(ResultSrc_E) , .clk(clk) , .rst(rst) , .clear(1'b0), .en(1'b1) );
 conf_register #(2) isatyp  (.in(isa_type) , .out(isa_type_e) , .clk(clk) , .rst(rst) , .clear(1'b0), .en(1'b1) );

 //conf_register #(32) E_Instr  (.in(Instr_D) , .out(Instr_E) , .clk(clk) , .rst(rst) , .clear(1'b0), .en(1'b1) );
 conf_register #(32) WriteData_D (.in(WriteDataD) , .out(WriteDataE) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(1'b1));
 conf_register #(32) RD1_Eu (.in(RD1D) , .out(RD1_E) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(1'b1));
 conf_register #(32) RD2_Eu  (.in(RD2D) , .out(RD2_E) , .clk(clk) , .rst(rst) , .clear(1'b0), .en(1'b1));
 conf_register #(5) RD_EE  (.in(Rd_D) , .out(RD_E) , .clk(clk) , .rst(rst) , .clear(1'b0) ,.en(1'b1) );
 conf_register #(32) PCPlus4_Eu  (.in(PCPlus4_D) , .out(PCPlus4_E) , .clk(clk) , .rst(rst) , .clear(1'b0), .en(1'b1) );
 assign RdE = RD_E ; 
 //assign op_e = Instr_E[6:0] ; 


  
  ALU  alu (.A(RD1_E),  .B(RD2_E), .ALUControl(ALUControl_E), .Zero(OPEN), .Result(ALUResultE) );

///////////////////////////// MEM ///////////////////////////////////////////////////////////
conf_register #(2) isatyp_m  (.in(isa_type_e) , .out(isa_type_M) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(1'b1) );
 conf_register #(1) MemWrite_Mu  (.in(MemWrite_E) , .out(MemWrite_M) , .clk(clk) , .rst(rst) , .clear(1'b0), .en(1'b1) );
 conf_register #(1) RegWrite_Mu (.in(RegWrite_E) , .out(RegWrite_M) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(1'b1));
 conf_register #(2) ResultSrc_Mu  (.in(ResultSrc_E) , .out(ResultSrc_M) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(1'b1));

 conf_register #(32) ALU_Ru  (.in(ALUResultE) , .out(ALUResultM) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(1'b1));
 conf_register #(32) WRITE_MEMu  (.in(WriteDataE) , .out(WriteDataM) , .clk(clk) , .rst(rst) , .clear(1'b0), .en(1'b1) );
 conf_register #(5) RdMu  (.in(RdE) , .out(RD_M) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(1'b1) );
 assign RdM = RD_M ;
 conf_register #(32) PCPlus4_Mu  (.in(PCPlus4_E) , .out(PCPlus4_M) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(1'b1));
 data_memory mm2 (.A(ALUResultM),.WD(WriteDataM),.RD(MReadDataM),.WE(MemWrite_M),.clk(clk));
 mux_4to1 MUX3 ( .I1(ALUResultM),.I2(MReadDataM),.I3(PCPlus4_M),.I4(32'b0),.O(ResultM),.S(ResultSrc_M) );

////////////////////////////wrire back/////////////////////////////////////////////////////////
conf_register #(2) isatyp_W  (.in(isa_type_M) , .out(isa_type_W) , .clk(clk) , .rst(rst) , .clear(1'b0), .en(1'b1) );
 conf_register #(1) RegWrite_Wu  (.in(RegWrite_M) , .out(RegWrite_W) , .clk(clk) , .rst(rst) , .clear(1'b0), .en(1'b1) );
  conf_register #(32) result_d  (.in(ResultM) , .out(ResultW) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(1'b1));
 conf_register #(5) RdWu  (.in(RD_M) , .out(RD_W) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(1'b1));
 //conf_register #(32) PCPlus4_Wu  (.in(PCPlus4_M) , .out(PCPlus4_W) , .clk(clk) , .rst(rst) , .clear(1'b0) , .en(1'b1));
  assign RdW = RD_W ; 

    
endmodule