module data_memory (A, WD, RD, WE, clk);

    input  [31:0] A, WD;
    output [31:0] RD;
    input  WE, clk;

    reg [31:0] data [2095:0];

    wire [10:0] word_addr;  
    
    initial begin
        $readmemb("data.txt", data);  // add your data.txt path here 
    end
    assign word_addr = A[31:2];   // Convert byte address to word 

    always @(posedge clk) begin
        if (WE) begin
            data[word_addr] <= WD;
        end
    end

    assign RD = data[word_addr];

endmodule
