module riscv_core (rst , clk);

   input rst , clk ; 
    

    wire  PCScr ,   MemWrite , ALUSrc , RegWrite ;
    wire  [1:0] immSrc , ResultSrc ; 
    wire [3:0] ALUControl ;
    wire [6:0] op ;
    wire [2:0] funct3 ;
    wire zero , funct7 , Jscr  ,  Jump , Branch , Jump_E ,Branch_E ;

	wire  [4:0 ]  Rs1D , Rs2D ,RdE , RdM , RdW ;
    wire [6:0]   op_e ; 
    wire  [1:0] s_m1 , s_m2 ; 
    wire  stall ; 
    wire  kill ; 
	wire [1:0] isa_type_e , isa_type , isa_type_M , isa_type_W;

      Control_Unit Control(
		
			.op(op),
			.funct3(funct3),
			.funct7b5(funct7),
			.Zero(zero),
			.Branch_E(OPEN),
			.Jump_E(OPEN),
			.ResultSrc(ResultSrc),
			.MemWrite(MemWrite),
			.PCSrc(PCScr),
			.ALUSrc(ALUSrc),
			.RegWrite(RegWrite),
			.Jump(Jump),
			.Branch(Branch),
			.ImmSrc(immSrc),
			.ALUControl(ALUControl),
			.Jscr(Jscr)
			);
			  
          control_hazard cnt_hazard   (
                op  ,zero , s_m1 , s_m2 , isa_type , stall  , kill  , Rs1D , Rs2D ,RdE ,RdM , RdW,isa_type_e ,isa_type_M ,isa_type_W );

		   pipeline_data_path data_pat 
		   (PCScr , ResultSrc , MemWrite ,ALUControl, ALUSrc ,immSrc ,RegWrite ,Jscr ,s_m1 , s_m2 , stall  , kill, op , funct3 ,funct7,
		    isa_type ,isa_type_e,isa_type_M,isa_type_W, Rs1D , Rs2D ,RdE ,RdM ,RdW,zero , clk , rst); 


endmodule