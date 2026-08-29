`timescale 1ns / 1ps

module inst_memory(
			  input [31:0] 	A,
			  output [31:0] RD
			  );

   reg [31:0] 				I_MEM_BLOCK[2095:0];

   initial
     begin
	$readmemh("C:/Users/sharif/Desktop/Risc_V/instructions.txt",I_MEM_BLOCK);           //// add your instructions path here
     end

   assign RD = I_MEM_BLOCK[A[31:2]]; 

endmodule

