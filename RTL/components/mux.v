module mux (
    I1,I2,O,S
);
    input S ; 
    input [31:0] I1 , I2 ; 
    output [31:0] O ; 

    assign O  = (S == 1'b1) ? I2 : I1 ;


endmodule
