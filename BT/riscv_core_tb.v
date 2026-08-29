`timescale 1ns / 1ps
// Single Cycle RISC-V Processor by Sai Govardhan
// mail: saigov14@gmail.com or saigovardhanmc@pesu.pes.edu

module riscv_core_tb();

reg clk = 0, reset=0;


always #10 clk = ~clk;

riscv_core DUT(
	.clk(clk),
	.rst(reset)
);
  
initial begin
     #20; reset = 1; 
	  #20; reset = 0;
end
  
endmodule