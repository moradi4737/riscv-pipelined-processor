//============================== ALU control opcodes ==================================
`define ADD   4'h0
`define SUB   4'h1
`define AND   4'h2
`define OR    4'h3
`define XOR   4'h4
`define SLT   4'h5
`define SLTU  4'h6
`define LUI   4'h7
`define AUIPC 4'h8
`define SLL   4'hA
`define SRA   4'hB
`define SRL   4'hC
//============================== extend control opcodes ==================================
`define imm_I_sgn 2'h0
`define imm_S     2'h1
`define imm_B     2'h2
`define imm_J     2'h3
