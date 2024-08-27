
`define WORD_AMOUNT			3136
`define BIT_PER_WORD		26

module SRAM_OT (
	input 								clk,
	input 								we,
	input [$clog2(`WORD_AMOUNT)-1:0] 	addr,
	input [`BIT_PER_WORD-1] 			din,
	input                               final_flag,
	output reg [`BIT_PER_WORD-1] 		dout
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
