module mux_4to1 (
    I1,I2,I3,I4,O,S
);
    input[1:0] S ; 
    input [31:0] I1,I2,I3,I4; 
    output [31:0] O ; 

    assign O  = (S == 2'b11) ? I4 : (S == 2'b10) ? I3 : (S == 2'b01) ? I2 : I1;


endmodule
