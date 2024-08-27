`timescale 1ns / 1ns
`define WORD_AMOUNT_I 3136 //112*112/4
`define WORD_AMOUNT_K 1152 //48*48/2
`define WORD_AMOUNT_B 56
`define WORD_AMOUNT_OT 3136
`define WORD_AMOUNT_O 6272
`define WORD_AMOUNT_BIAS 48
`define WORD_AMOUNT_O 3136 // 56*56
`define BIT_PER_WORD_I 128
`define BIT_PER_WORD_K 72
`define BIT_PER_WORD_B 128
`define BIT_PER_WORD_OT 26
`define BIT_PER_WORD_O 16
`define BIT_PER_WORD_BIAS 16 // bias 改為16 bit 了

module testbench;
    logic clk, rst_n, kernel_valid, image_valid, bias_valid;

    logic [`BIT_PER_WORD_I-1:0] dout_000,dout_001,dout_010,dout_011; //input 9 bit
    logic [`BIT_PER_WORD_I-1:0] dout_100,dout_101,dout_110,dout_111; //input 9 bit
    logic signed [`BIT_PER_WORD_K-1:0] dout_K0,dout_K1;
    logic signed [`BIT_PER_WORD_I-1:0] dout_B00,dout_B01,dout_B10,dout_B11;
    logic signed [`BIT_PER_WORD_BIAS-1:0] dout_bias;
    logic signed [`BIT_PER_WORD_O-1:0] dout_OT0,dout_OT1;
    logic signed [`BIT_PER_WORD_O-1:0] dout_O0,dout_O1;

    logic out_valid;

    logic we_I,we_K,we_O0,we_O1,we_B0,we_B1,we_BIAS,we_OT0,we_OT1;

    logic [$clog2(`WORD_AMOUNT_I)-1:0] addr_00,addr_01,addr_10,addr_11;
    logic [$clog2(`WORD_AMOUNT_K)-1:0] addr_K;
    logic [$clog2(`WORD_AMOUNT_B)-1:0] addr_B00,addr_B01,addr_B10,addr_B11;
    logic [$clog2(`WORD_AMOUNT_OT)-1:0] addr_OT0,addr_OT1;
    logic [$clog2(`WORD_AMOUNT_O):0] addr_O0,addr_O1;
    logic [$clog2(`WORD_AMOUNT_BIAS)-1:0] addr_BIAS;

    logic [`BIT_PER_WORD_I-1:0] din_00,din_01,din_10,din_11; //input 9 bit
    logic signed [`BIT_PER_WORD_K-1:0] din_K;
    logic signed [`BIT_PER_WORD_B-1:0] din_B00,din_B01,din_B10,din_B11;
    logic signed [`BIT_PER_WORD_OT-1:0] din_OT0,din_OT1;
    logic signed [`BIT_PER_WORD_O-1:0] din_O0,din_O1;
    logic signed [`BIT_PER_WORD_BIAS-1:0] din_bias;
    logic signed [15:0] out_data;
    
    logic final_flag;

    logic [3:0] signed_q_range;
    logic [3:0] unsigned_q_range;
    // Pattern module instantiation
    PATTERN u_pattern (
        .clk(clk),
        .rst_n(rst_n),
        .kernel_valid(kernel_valid),
        .image_valid(image_valid),
        .bias_valid(bias_valid),
        .out_valid(out_valid),
        .out_data(out_data)
    );

    // Convolution module instantiation
    conv u_conv (
        .clk(clk),
        .rst_n(rst_n),
        .kernel_valid(kernel_valid),
        .image_valid(image_valid),
        .bias_valid(bias_valid),
        .final_flag(final_flag),

        .signed_q_range(signed_q_range),
	    .unsigned_q_range(unsigned_q_range),

        .dout_000(dout_000),
	    .dout_001(dout_001),
	    .dout_010(dout_010),
	    .dout_011(dout_011),

        .dout_100(dout_100),
	    .dout_101(dout_101),
	    .dout_110(dout_110),
	    .dout_111(dout_111),

        .dout_B00(dout_B00),
        .dout_B01(dout_B01),
        .dout_B10(dout_B10),
        .dout_B11(dout_B11),

        .dout_OT0(dout_OT0),
        .dout_OT1(dout_OT1),

        .dout_K0(dout_K0),
        .dout_K1(dout_K1),

	    .dout_bias(dout_bias),

        .out_valid(out_valid),
        .out_data(out_data),

        .we_I(we_I),
        .we_K(we_K),
        .we_O0(we_O0),
        .we_O1(we_O1),
	    .we_B0(we_B0),
        .we_B1(we_B1),
        .we_OT0(we_OT0),
        .we_OT1(we_OT1),
        .we_BIAS(we_BIAS),

        .addr_00(addr_00),
	    .addr_01(addr_01),
	    .addr_10(addr_10),
	    .addr_11(addr_11),
	    .addr_B00(addr_B00),
	    .addr_B01(addr_B01),
	    .addr_B10(addr_B10),
	    .addr_B11(addr_B11),
	    .addr_K(addr_K),
        .addr_BIAS(addr_BIAS),
        .addr_OT0(addr_OT0),
	    .addr_OT1(addr_OT1),
	    .addr_O0(addr_O0),
	    .addr_O1(addr_O1),

        .din_B00(din_B00),
	    .din_B01(din_B01),
	    .din_B10(din_B10),
	    .din_B11(din_B11),

        .din_OT0(din_OT0),
        .din_OT1(din_OT1),

        .din_O0(din_O0),
        .din_O1(din_O1)
    );



    // SRAM instantiation and initialization for R channel

    SRAM_I u_SRAM_000 (
        .clk(clk),
        .we(we_I),
        .addr(addr_00),
        .din(din_00),
        .dout(dout_000)
    );
    initial
    begin
        $readmemb("input_cgroup0h_0w_0.txt", u_SRAM_000.memory);
        #20000;
        $readmemb("input_cgroup2h_0w_0.txt", u_SRAM_000.memory);
        #37100;
        $readmemb("input_cgroup0h_0w_0.txt", u_SRAM_000.memory);
        #30000;
        $readmemb("input_cgroup2h_0w_0.txt", u_SRAM_000.memory);
        #27300;
        $readmemb("input_cgroup0h_0w_0.txt", u_SRAM_000.memory);
        #30700;
        $readmemb("input_cgroup2h_0w_0.txt", u_SRAM_000.memory);
        #26500;
        $readmemb("input_cgroup0h_0w_0.txt", u_SRAM_000.memory);
        #28400;
        $readmemb("input_cgroup2h_0w_0.txt", u_SRAM_000.memory);
    end

    SRAM_I u_SRAM_001 (
        .clk(clk),
        .we(we_I),
        .addr(addr_01),
        .din(din_01),
        .dout(dout_001)
    );
    initial
    begin
        $readmemb("input_cgroup0h_0w_1.txt", u_SRAM_001.memory);
        #20000;
        $readmemb("input_cgroup2h_0w_1.txt", u_SRAM_001.memory);
        #37100;
        $readmemb("input_cgroup0h_0w_1.txt", u_SRAM_001.memory);
        #30000;
        $readmemb("input_cgroup2h_0w_1.txt", u_SRAM_001.memory);
        #27300;
        $readmemb("input_cgroup0h_0w_1.txt", u_SRAM_001.memory);
        #30700;
        $readmemb("input_cgroup2h_0w_1.txt", u_SRAM_001.memory);
        #26500;
        $readmemb("input_cgroup0h_0w_1.txt", u_SRAM_001.memory);
        #28400;
        $readmemb("input_cgroup2h_0w_1.txt", u_SRAM_001.memory);
    end
    SRAM_I u_SRAM_010 (
        .clk(clk),
        .we(we_I),
        .addr(addr_10),
        .din(din_10),
        .dout(dout_010)
    );
    initial
    begin
        $readmemb("input_cgroup0h_1w_0.txt", u_SRAM_010.memory);
        #20000;
        $readmemb("input_cgroup2h_1w_0.txt", u_SRAM_010.memory);
        #37100;
        $readmemb("input_cgroup0h_1w_0.txt", u_SRAM_010.memory);
        #30000;
        $readmemb("input_cgroup2h_1w_0.txt", u_SRAM_010.memory);
        #27300;
        $readmemb("input_cgroup0h_1w_0.txt", u_SRAM_010.memory);
        #30700;
        $readmemb("input_cgroup2h_1w_0.txt", u_SRAM_010.memory);
        #26500;
        $readmemb("input_cgroup0h_1w_0.txt", u_SRAM_010.memory);
        #28400;
        $readmemb("input_cgroup2h_1w_0.txt", u_SRAM_010.memory);
    end

    SRAM_I u_SRAM_011 (
        .clk(clk),
        .we(we_I),
        .addr(addr_11),
        .din(din_11),
        .dout(dout_011)
    );
    initial
    begin
        $readmemb("input_cgroup0h_1w_1.txt", u_SRAM_011.memory);
        #20000;
        $readmemb("input_cgroup2h_1w_1.txt", u_SRAM_011.memory);
        #37100;
        $readmemb("input_cgroup0h_1w_1.txt", u_SRAM_011.memory);
        #30000;
        $readmemb("input_cgroup2h_1w_1.txt", u_SRAM_011.memory);
        #27300;
        $readmemb("input_cgroup0h_1w_1.txt", u_SRAM_011.memory);
        #30700;
        $readmemb("input_cgroup2h_1w_1.txt", u_SRAM_011.memory);
        #26500;
        $readmemb("input_cgroup0h_1w_1.txt", u_SRAM_011.memory);
        #28400;
        $readmemb("input_cgroup2h_1w_1.txt", u_SRAM_011.memory);
    end

    SRAM_I u_SRAM_100 (
        .clk(clk),
        .we(we_I),
        .addr(addr_00),
        .din(din_00),
        .dout(dout_100)
    );
    initial $readmemb("input_cgroup1h_0w_0.txt", u_SRAM_100.memory);

    SRAM_I u_SRAM_101 (
        .clk(clk),
        .we(we_I),
        .addr(addr_01),
        .din(din_01),
        .dout(dout_101)
    );
    initial $readmemb("input_cgroup1h_0w_1.txt", u_SRAM_101.memory);

    SRAM_I u_SRAM_110 (
        .clk(clk),
        .we(we_I),
        .addr(addr_10),
        .din(din_10),
        .dout(dout_110)
    );
    initial $readmemb("input_cgroup1h_1w_0.txt", u_SRAM_110.memory);

    SRAM_I u_SRAM_111 (
        .clk(clk),
        .we(we_I),
        .addr(addr_11),
        .din(din_11),
        .dout(dout_111)
    );
    initial $readmemb("input_cgroup1h_1w_1.txt", u_SRAM_111.memory);

    SRAM_K u_SRAM_K0 (
        .clk(clk),
        .we(we_K),
        .addr(addr_K),
        .din(din_K),
        .final_flag(final_flag),
        .dout(dout_K0)
    );
    initial $readmemb("weight_0_b.txt", u_SRAM_K0.memory);
    SRAM_K u_SRAM_K1 (
        .clk(clk),
        .we(we_K),
        .addr(addr_K),
        .din(din_K),
        .final_flag(final_flag),
        .dout(dout_K1)
    );
    initial $readmemb("weight_1_b.txt", u_SRAM_K1.memory);

    SRAM_BIAS u_SRAM_BIAS (
        .clk(clk),
        .we(we_BIAS),
        .addr(addr_BIAS),
        .din(din_bias),
        .dout(dout_bias)
    );
    initial $readmemb("bias_b.txt", u_SRAM_BIAS.memory);

    SRAM_OT u_SRAM_OT0 (
        .clk(clk),
        .we(we_OT0),
        .addr(addr_OT0),
        .din(din_OT0),
        .dout(dout_OT0)
    );

    SRAM_OT u_SRAM_OT1 (
        .clk(clk),
        .we(we_OT1),
        .addr(addr_OT1),
        .din(din_OT1),
        .dout(dout_OT1)
    );

    SRAM_B u_SRAM_B00 (
        .clk(clk),
        .we(we_B0),
        .addr(addr_B00),
        .din(din_B00),
        .dout(dout_B00)
    );

    SRAM_B u_SRAM_B01 (
        .clk(clk),
        .we(we_B0),
        .addr(addr_B01),
        .din(din_B01),
        .dout(dout_B01)
    );

    SRAM_B u_SRAM_B10 (
        .clk(clk),
        .we(we_B1),
        .addr(addr_B10),
        .din(din_B10),
        .dout(dout_B10)
    );

    SRAM_B u_SRAM_B11 (
        .clk(clk),
        .we(we_B1),
        .addr(addr_B11),
        .din(din_B11),
        .dout(dout_B11)
    );

    SRAM_O u_SRAM_O0 (
        .clk(clk),
        .we(we_O0),
        .addr(addr_O0),
        .din(din_O0),
        .dout(dout_O0)
    );

    SRAM_O u_SRAM_O1 (
        .clk(clk),
        .we(we_O1),
        .addr(addr_O1),
        .din(din_O1),
        .dout(dout_O1)
    );

    //============output file=====================
    // File handle
    integer outfile_O0, outfile_O1, i;

    initial begin
        outfile_O0 = $fopen("output_SRAM_O0.txt", "w");
        outfile_O1 = $fopen("output_SRAM_O1.txt", "w");
        if (outfile_O0 == 0 || outfile_O1 == 0) begin
            $display("Error: Could not open file!");
            $finish;
        end
        #229000;
        $display("output file writing...");
        for (i = 0; i < 6272; i = i + 1) begin
            //$fwrite(outfile_O0, "SRAM_O0[%6d] = %16b\n", i, u_SRAM_O0.memory[i]);
            //$fwrite(outfile_O1, "SRAM_O1[%6d] = %16b\n", i, u_SRAM_O1.memory[i]);
            $fwrite(outfile_O0, "%16b\n", u_SRAM_O0.memory[i]);
            $fwrite(outfile_O1, "%16b\n", u_SRAM_O1.memory[i]);
        end

        $fclose(outfile_O0);
        $fclose(outfile_O1);
        
        $finish;
    end
    //============================================

    

    initial begin
        $fsdbDumpfile("conv.fsdb");
        $fsdbDumpvars;
        $fsdbDumpMDA;
        $vcdpluson();
    end
endmodule