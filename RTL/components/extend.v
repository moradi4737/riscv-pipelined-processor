module extend (Instr, immExt, immSrc);
input [31:7] Instr ;
output reg [31:0] immExt ;
input [1:0] immSrc;

always @(*) begin

    casex (immSrc)
    // i type 12 singed imm
      2'b00  : immExt = {{20{Instr[31]}}, Instr[31:20]};
    // s typr 12 signed imm
      2'b01  : immExt = {{20{Instr[31]}}, Instr[31:25], Instr[11:7]};
    // B type 13 signed imm
      2'b10  : immExt = {{20{Instr[31]}}, Instr[7], Instr[30:25], Instr[11:8], 1'b0};
    // j type 21 signed imm
      2'b11  : immExt = {{12{Instr[31]}}, Instr[19:12], Instr[20], Instr[30:21], 1'b0} ;

      default : immExt = 8'h0 ;
  
    endcase
end
    
endmodule