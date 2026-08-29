module conf_register #(parameter N = 32) (in , out , clk , rst , clear , en );

input [N-1 : 0] in ; 
output reg [N-1 : 0] out = 0;
input clk , rst , clear , en ;

always @(posedge clk ) begin

    if (rst) 
        out <= {N{1'b0}} ;
    else if(clear)
       out <= {N{1'b0}}  ;
    else if ( en )
       out <= in ; 
    else 
       out <= out ;
    end 

    
endmodule