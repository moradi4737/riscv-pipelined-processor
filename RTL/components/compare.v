module compare ( A , B , O);

input [31:0] A , B ; 
output O ; 

assign O = (A === B ) ? 1'b1 : 1'b0 ;
    
endmodule
