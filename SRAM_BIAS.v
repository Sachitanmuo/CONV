
`define WORD_AMOUNT			48
`define BIT_PER_WORD		17

module SRAM_BIAS (
	input 								clk,
	input 								we,
	input [$clog2(`WORD_AMOUNT)-1:0] 	addr,
	input [`BIT_PER_WORD] 			din,
	output reg [`BIT_PER_WORD] 		dout
);

    reg [`BIT_PER_WORD-1] memory [`WORD_AMOUNT-1:0];
    reg [`BIT_PER_WORD-1] data_out;
  
    always @(posedge clk) begin
        if (we) memory[addr] <= din;
    end

	always@(posedge clk) begin
		dout <= #1.0 memory[addr];
	end

endmodule