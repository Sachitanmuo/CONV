
`define WORD_AMOUNT			6272
`define BIT_PER_WORD		17

module SRAM_O (
	input 								clk,
	input 								we,
	input [$clog2(`WORD_AMOUNT):0]   	addr,
	input [`BIT_PER_WORD] 			    din,
	output reg [`BIT_PER_WORD] 		    dout
);

    reg [`BIT_PER_WORD] memory [`WORD_AMOUNT-1:0];
    reg [`BIT_PER_WORD] data_out;
  
    always @(posedge clk) begin
        if (we) begin
			memory[addr] <= din;
		end
    end

	always@(posedge clk) begin
		dout <= #1.0 memory[addr];
	end

endmodule