`include "defines.vh"
module Control_Unit (
    input  wire [6:0] op,
    input  wire [2:0] funct3,
    input  wire       funct7b5,
    input  wire       Zero,
    input wire Branch_E ,
    input wire  Jump_E ,
    output reg        RegWrite,
    output reg  [1:0] ResultSrc,
    output reg        MemWrite,
    output reg        Jump,
    output reg        Branch,
    output reg  [3:0] ALUControl,
    output reg        ALUSrc,
    output reg  [1:0] ImmSrc,
    output reg        PCSrc ,
   output reg  Jscr
    );
   assign RtypeSub = funct7b5 & op[5]; //TRUE for R-type substract
   
    always @(*) begin
        RegWrite   = 1'b0;       // Do we have to write back to the regfile at last, or not.
        ResultSrc  = 2'b00;      // If we have reg_write, do we write alu result, mem read data, or PC plus 4?
        MemWrite   = 1'b0;       // Do we have to write to the data memory or not? (S-type or not??)
        Jump       = 1'b0;       // Is it jump or not (either jal or jalr I guess)?!
        Branch     = 1'b0;       // Is it branch or not (B-type)?
        ALUControl = 4'b0;
        ALUSrc     = 1'b0;       // Select regfile read data 2, or extended immediate for alu src b?
        ImmSrc     = 2'b0;      // Select the op control of the extend module
        Jscr = 1'b0 ;
        case (op)
            7'b0000011: begin // I, load                  // lw
                RegWrite   = 1'b1;
                ResultSrc  = 2'b01;
                ALUControl = `ADD;
                ALUSrc     = 1'b1;
                ImmSrc     = `imm_I_sgn;
            end
            7'b0010011: begin // I, computation (addi)
                RegWrite   = 1'b1;
                ResultSrc  = 2'b00;
                ALUSrc     = 1'b1;
                ImmSrc     = `imm_I_sgn;

                    case (funct3)
                        3'b000: ALUControl = `ADD;        // add
                        3'b001: ALUControl = `SLL  ;      // sll, slli;
                        3'b010: ALUControl = `SLT;        //slt,slti
                        3'b011: ALUControl = `SLTU;       //sltu, sltui
                        3'b110: ALUControl = `OR;         // or
                        3'b111: ALUControl = `AND;        // and
                    endcase
                
				
            end
            7'b0100011: begin // S                        // sw
                MemWrite   = 1'b1;
                ALUControl = `ADD;
                ALUSrc     = 1'b1;
                ImmSrc     = `imm_S;
            end
            7'b0110011: begin // R (add, sub, slt, or, and)
                RegWrite  = 1'b1;
                ResultSrc = 2'b00;
                ALUSrc    = 1'b0;
                if (RtypeSub) begin
                    ALUControl = `SUB;                    // sub
                end else begin
                    case (funct3)
                        3'b000: ALUControl = `ADD;        // add
                        3'b001: ALUControl = `SLL  ;      // sll, slli;
                        3'b010: ALUControl = `SLT;        //slt,slti
                        3'b011: ALUControl = `SLTU;       //sltu, sltui
                        3'b110: ALUControl = `OR;         // or
                        3'b111: ALUControl = `AND;        // and
                    endcase
                end
            end
            7'b1100011: begin // B (beq)
                Branch     = 1'b1;
                ALUControl = `SUB;                        // beq
                ALUSrc     = 1'b0;
                ImmSrc     = `imm_B;
            end
            7'b1101111: begin // J (jal)                  // jal
                RegWrite  = 1'b1;
                ResultSrc = 2'b10;
                Jump      = 1'b1;
                ImmSrc    = `imm_J;
            end
            7'b1100111: begin // J (jalR)                  // jalR
                RegWrite  = 1'b1;
                ResultSrc = 2'b10;
                Jump      = 1'b1;
                 ImmSrc     = `imm_I_sgn;
                Jscr      = 1'b1 ;
            end


        endcase
    end
    

    assign PCSrc = ((Zero & Branch)=== 1'b1) | (Jump === 1'b1);

endmodule