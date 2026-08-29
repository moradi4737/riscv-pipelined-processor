`timescale 1ns / 1ps

module ALU(
    input  signed [31:0] A,
    input  signed [31:0] B,
    input  [3:0]   ALUControl,
    output         Zero,
    output [31:0]  Result
);

    reg [31:0] mid_result;

    always @(*) begin
        case(ALUControl)

            4'b0000: mid_result = A + B;                  // ADD
            4'b0001: mid_result = A - B;                  // SUB
            4'b0010: mid_result = A & B;                  // AND
            4'b0011: mid_result = A | B;                  // OR
            4'b0100: mid_result = A ^ B;                  // XOR

            4'b0101: mid_result = ($signed(A) < $signed(B)) ? 32'd1 : 32'd0;   // SLT
            4'b0110: mid_result = ($unsigned(A) < $unsigned(B)) ? 32'd1 : 32'd0; // SLTU

            4'b0111: mid_result = {B[31:12], 12'b0};      // LUI
            4'b1000: mid_result = A + {B[31:12], 12'b0};   // AUIPC

            4'b1010: mid_result = A << B[4:0];            // SLL
            4'b1011: mid_result = A >>> B[4:0];           // SRA
            4'b1100: mid_result = A >> B[4:0];            // SRL

            default: mid_result = 32'd0;

        endcase
    end

    assign Result = mid_result;
    assign Zero = (mid_result === 32'd0) ? 1'b1 : 1'b0;

endmodule

