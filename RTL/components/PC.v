module PC (
    PCNEXT , PC , clk 
);
input [31:0] PCNEXT ; 
output reg [31:0] PC = 0 ; 
input clk ;
    
    always @(posedge clk ) begin
     PC <=  PCNEXT   ;
    end
    
endmodule
