module reg_file (
    input [4:0] A1, A2, A3,
    input [31:0] WD3,
    input clk, WE3,
    output [31:0] RD1, RD2
);

    reg [31:0] data [31:0];
    integer i;

    // initialize all registers to zero
    initial begin
        for (i = 0; i < 32; i = i + 1)
            data[i] = 32'd0;
    end

    // write logic
    always @(posedge clk) begin
        if (WE3) begin
            if (A3 != 0)
                data[A3] <= WD3;
        end
    end

    // read logic
    assign RD1 = data[A1];
    assign RD2 = data[A2];

endmodule
