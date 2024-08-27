`define WORD_AMOUNT_I 3136 //112*112/4
`define WORD_AMOUNT_K 1152 //48*48/2
`define WORD_AMOUNT_B 56
`define WORD_AMOUNT_BIAS 48
`define WORD_AMOUNT_OT 3136 //56*56 (output temp)
`define WORD_AMOUNT_O 6272 //56*56*2
`define BIT_PER_WORD_I 128
`define BIT_PER_WORD_K 72
`define BIT_PER_WORD_B 128//bottom
`define BIT_PER_WORD_BIAS 16
`define BIT_PER_WORD_OT 26 //to be modified...
`define BIT_PER_WORD_O 16

/*
to-do list
s = 2
s = 1
1st layer
linear
avg pooling
BN
*/

module conv(
    // Input signals
    clk,
    rst_n,
    kernel_valid,
    image_valid,
	bias_valid,
	final_flag,

	signed_q_range,
	unsigned_q_range,

    dout_000,
	dout_001,
	dout_010,
	dout_011,

	dout_100,
	dout_101,
	dout_110,
	dout_111,

	dout_B00,//bottom
	dout_B01,//bottom

	dout_B10,//bottom
	dout_B11,//bottom

	dout_K0,
	dout_K1,

	dout_bias,

	dout_OT0,//output temp
	dout_OT1,//output temp

    // Output signals
    out_valid,
    out_data,

    we_I,
	we_K,
	we_O0,
	we_O1,
	we_B0,
	we_B1,
	we_BIAS,
	we_OT0,
	we_OT1,

    addr_00,//Image
	addr_01,//Image
	addr_10,//Image
	addr_11,//Image

	addr_B00,
	addr_B01,
	addr_B10,
	addr_B11,

	addr_K,

	addr_O0,
	addr_O1,

	addr_BIAS,

	addr_OT0,
	addr_OT1,

	din_B00,
	din_B01,
	din_B10,
	din_B11,

	din_OT0,
	din_OT1,

    din_O0,
	din_O1
);

reg [7:0] debug, debug0, debug1, debug2;



//to change the scale of the layer
parameter input_image_size = 'd112;
parameter output_image_size = 'd56;
parameter input_channel_size = 'd48;
parameter output_channel_size = 'd48;
parameter input_sram_size = `BIT_PER_WORD_I/8;
parameter kernel_size = 'd3;
parameter stride = 'd2;
parameter mem_epoch = input_channel_size / input_sram_size;
//to change the scale of the layer

// input and output ports
input clk, rst_n, kernel_valid, image_valid, bias_valid;

input [`BIT_PER_WORD_I-1:0] dout_000,dout_001,dout_010,dout_011;
input [`BIT_PER_WORD_I-1:0] dout_100,dout_101,dout_110,dout_111;
input signed [`BIT_PER_WORD_K-1:0] dout_K0,dout_K1;
input signed [`BIT_PER_WORD_B-1:0] dout_B00,dout_B01,dout_B10,dout_B11;
input signed [`BIT_PER_WORD_BIAS-1:0] dout_bias;
input signed [`BIT_PER_WORD_OT-1:0] dout_OT0,dout_OT1;
input [3:0] signed_q_range,unsigned_q_range;

output reg out_valid;

output reg we_I,we_K,we_O0,we_O1,we_B0,we_B1,we_BIAS,we_OT0,we_OT1;

output reg [$clog2(`WORD_AMOUNT_I)-1:0] addr_00,addr_01,addr_10,addr_11;
output reg [$clog2(`WORD_AMOUNT_K)-1:0] addr_K;
output reg [$clog2(`WORD_AMOUNT_B)-1:0] addr_B00,addr_B01,addr_B10,addr_B11;
output reg [$clog2(`WORD_AMOUNT_OT)-1:0] addr_OT0,addr_OT1;
output reg [$clog2(`WORD_AMOUNT_O):0] addr_O0,addr_O1;
output reg [$clog2(`WORD_AMOUNT_BIAS)-1:0] addr_BIAS;

output reg [`BIT_PER_WORD_O-1:0] din_O0, din_O1;//ping pong buffer
output reg [`BIT_PER_WORD_I-1:0] din_B00,din_B01,din_B10,din_B11;
output reg signed [`BIT_PER_WORD_OT-1:0] din_OT0,din_OT1;

output reg [15:0] out_data;//for pattern to check the answer
output reg final_flag;
// input and output ports

//counter
reg [7:0] x_counter_seq,x_counter_comb;//x,y is for calculate output
reg [7:0] y_counter_seq,y_counter_comb;//x,y is for calculate output
reg [15:0] counter_seq,counter_comb;
reg [15:0] output_counter_seq,output_counter_comb;
reg [$clog2(input_channel_size)-1:0] mem_epoch_seq,mem_epoch_comb,mem_epoch_seq_last;//0~15:0, 16~31:1, 32~47:2
//counter

//kernel and image and bias reg
reg signed [7:0] kernel_seq [0:input_channel_size - 1] [0:kernel_size - 1] [0:kernel_size - 1];
reg signed [7:0] kernel_comb [0:input_channel_size - 1] [0:kernel_size - 1] [0:kernel_size - 1];
reg signed [8:0] image_seq [0:input_sram_size - 1] [0:kernel_size - 1] [0:kernel_size - 1];
reg signed [8:0] image_comb [0:input_sram_size - 1] [0:kernel_size - 1] [0:kernel_size - 1];
reg signed [15:0] bias_comb,bias_seq;
reg signed [16:0] ans_temp_seq,ans_temp_comb;
reg signed [`BIT_PER_WORD_OT-1:0] din_OT0_pre,din_OT1_pre;
reg [`BIT_PER_WORD_O-1:0] din_O0_pre, din_O1_pre;
reg [$clog2(`WORD_AMOUNT_OT)-1:0] addr_OT0_pre,addr_OT1_pre;
reg [$clog2(`WORD_AMOUNT_O):0] addr_O0_pre,addr_O1_pre;
reg [2:0] cal_en_counter_seq,cal_en_counter_comb;//算到第56之後，(先清空再回去)，然後等x_counter == 2才可以繼續算conv，如果<2的話都要先暫停，所以要把counter>6改成用x_counter判斷
//kernel and image and bias reg

//SRAM
reg [$clog2(`WORD_AMOUNT_I)-1:0] addr_00_pre,addr_01_pre,addr_10_pre,addr_11_pre;
reg [$clog2(`WORD_AMOUNT_K)-1:0] addr_K_pre;
reg [$clog2(`WORD_AMOUNT_B)-1:0] addr_B00_pre,addr_B01_pre,addr_B10_pre,addr_B11_pre;
reg [$clog2(`WORD_AMOUNT_BIAS)-1:0] addr_BIAS_pre;
reg [`BIT_PER_WORD_I-1:0] din_B00_pre,din_B01_pre,din_B10_pre,din_B11_pre;
reg we_I_pre,we_K_pre,we_O0_pre,we_O1_pre,we_B0_pre,we_B1_pre,we_BIAS_pre,we_OT0_pre,we_OT1_pre;
reg [13:0] mem_counter_seq,mem_counter_comb;
reg final_flag_pre;
//SRAM

//FSM
reg [2:0] cur_state,next_state;
reg out_valid_pre, out_valid_pre_pre;
reg signed [15:0] out_data_pre;
reg image_valid_last [4:0];
reg kernel_valid_last,bias_valid_last;
reg image_flag_seq,image_flag_comb,kernel_flag_seq,kernel_flag_comb;
reg [$clog2(input_channel_size)-1:0] epoch_counter_seq,epoch_counter_comb;

parameter IDLE = 'd0;
parameter KERNEL = 'd1;//input
parameter BIAS = 'd2;//input, and cal bias
parameter IMAGE = 'd3;//stride = 2 and stride = 1, even
parameter IMAGE1 = 'd4;//stride = 1, odd
parameter OUT = 'd7;//final output to the next layer
//FSM

//conv cal
reg signed [16:0] mul_comb [input_sram_size-1:0] [kernel_size-1:0] [kernel_size-1:0];
reg signed [16:0] mul_seq [input_sram_size-1:0] [kernel_size-1:0] [kernel_size-1:0];
reg signed [20:0] mac_comb [input_sram_size-1:0];
reg signed [20:0] mac_seq [input_sram_size-1:0];
reg signed [24:0] mac_16_comb, mac_16_seq;
reg signed [25:0] pre_relu_comb;
reg signed [25:0] pre_relu_seq;
//conv cal

//SRAM cal
reg signed [24:0] num_from_mem_seq,num_from_mem_comb;
reg signed [24:0] num_to_mem_seq,num_to_mem_comb;
//SRAM cal

integer i,j,k,l;

//debug
reg signed [9:0] d00,d01,d10,d11;
//debug

//seq with for loop
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		for(i=0; i<input_channel_size;i=i+1)
		begin
			for(j=0;j<kernel_size;j=j+1)
			begin
				for(k=0;k<kernel_size;k=k+1)
				begin
					kernel_seq[i][j][k] <= 0;
				end
			end
		end

		for(i=0; i<input_sram_size;i=i+1)
		begin
			for(j=0;j<kernel_size;j=j+1)
			begin
				for(k=0;k<kernel_size;k=k+1)
				begin
					image_seq[i][j][k] <= 0;
				end
			end
		end

		for(i=0;i<input_channel_size;i=i+1)
		begin
			for(j=0;j<input_sram_size;j=j+1)
			begin
				for(k=0;k<kernel_size;k=k+1)
				begin
					for(l=0;l<kernel_size;l=l+1)
					begin
						mul_seq[i][j][k][l] <= 0;
					end
				end
			end
		end

		for(i=0;i<input_sram_size;i=i+1)
		begin
			for(j=0;j<kernel_size;j=j+1)
			begin
				for(k=0;k<kernel_size;k=k+1)
				begin
					mul_seq[i][j][k] <= 0;
				end
			end
		end

		for(i=0;i<input_sram_size;i=i+1)
		begin
			mac_seq[i] <= 0;
		end

		mac_16_seq <= 0;
	end
	else
	begin
		for(i=0; i<input_channel_size;i=i+1)
		begin
			for(j=0;j<kernel_size;j=j+1)
			begin
				for(k=0;k<kernel_size;k=k+1)
				begin
					kernel_seq[i][j][k] <= kernel_comb[i][j][k];
				end
			end
		end

		for(i=0; i<input_sram_size;i=i+1)
		begin
			for(j=0;j<kernel_size;j=j+1)
			begin
				for(k=0;k<kernel_size;k=k+1)
				begin
					image_seq[i][j][k] <= image_comb[i][j][k];
				end
			end
		end

		for(i=0;i<input_sram_size;i=i+1)
		begin
			for(j=0;j<kernel_size;j=j+1)
			begin
				for(k=0;k<kernel_size;k=k+1)
				begin
					mul_seq[i][j][k] <= mul_comb[i][j][k];
				end
			end
		end

		for(i=0;i<input_sram_size;i=i+1)
		begin
			mac_seq[i] <= mac_comb[i];
		end

		mac_16_seq <= mac_16_comb;

	end
end
//seq with for loop

//seq without for loop
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		kernel_valid_last <= 0;
		bias_valid_last <= 0;
		image_valid_last[0] <= 0;
		image_valid_last[1] <= 0;
		image_valid_last[2] <= 0;
		image_valid_last[3] <= 0;
		image_valid_last[4] <= 0;
		out_valid <= 0;
		out_valid_pre <= 0;
		out_data <= 0;
		x_counter_seq <= 0;
		y_counter_seq <= 0;
		cur_state <= 0;
		kernel_flag_seq <= 0;
		image_flag_seq <= 0;
		mem_epoch_seq <= 0;
		mem_epoch_seq_last <= 0;

		we_OT0 <= 0;
		we_OT1 <= 0;

		addr_00 <= 0;
		addr_01 <= 0;
		addr_10 <= 0;
		addr_11 <= 0;
		addr_B00 <= 0;
		addr_B01 <= 0;
		addr_B10 <= 0;
		addr_B11 <= 0;
		addr_K <= 0;
		addr_BIAS <= 0;
		addr_OT0 <= 0;
		addr_OT1 <= 0;
		addr_O0 <= 0;
		addr_O1 <= 0;

		counter_seq <= 0;

		din_B00 <= 0;
		din_B01 <= 0;
		din_B10 <= 0;
		din_B11 <= 0;

		din_OT0 <= 0;
		din_OT1 <= 0;

		din_O0 <= 0;
		din_O1 <= 0;

		bias_seq <= 0;
		pre_relu_seq <= 0;

		output_counter_seq <= 0;
		num_from_mem_seq <= 0;
		num_to_mem_seq <= 0;
		mem_counter_seq <= 0;
		epoch_counter_seq <= 0;
		cal_en_counter_seq <= 0;
		final_flag <= 0;
	end
	
	else
	begin
		kernel_valid_last <= kernel_valid;
		bias_valid_last <= bias_valid;
		image_valid_last[0] <= image_valid;
		image_valid_last[1] <= image_valid_last[0];
		image_valid_last[2] <= image_valid_last[1];
		image_valid_last[3] <= image_valid_last[2];
		image_valid_last[4] <= image_valid_last[3];
		out_valid <= out_valid_pre;
		out_valid_pre <= out_valid_pre_pre;
		out_data <= out_data_pre;
		x_counter_seq <= x_counter_comb;
		y_counter_seq <= y_counter_comb;
		cur_state <= next_state;
		kernel_flag_seq <= kernel_flag_comb;
		image_flag_seq <= image_flag_comb;
		mem_epoch_seq <= mem_epoch_comb;
		mem_epoch_seq_last <= mem_epoch_seq;

		we_I <= we_I_pre;
		we_K <= we_K_pre;
		we_O0 <= we_O0_pre;
		we_O1 <= we_O1_pre;
		//we_B0 <= we_B0_pre;
		//we_B1 <= we_B1_pre;
		we_BIAS <= we_BIAS_pre;
		we_K <= we_K_pre;
		we_OT0 <= we_OT0_pre;
		we_OT1 <= we_OT1_pre;

		//addr_00 <= addr_00_pre;
		//addr_01 <= addr_01_pre;
		//addr_10 <= addr_10_pre;
		//addr_11 <= addr_11_pre;
		//addr_B00 <= addr_B00_pre;
		//addr_B01 <= addr_B01_pre;
		//addr_B10 <= addr_B10_pre;
		//addr_B11 <= addr_B11_pre;
		addr_K <= addr_K_pre;
		addr_BIAS <= addr_BIAS_pre;
		addr_OT0 <= addr_OT0_pre;
		addr_OT1 <= addr_OT1_pre;
		addr_O0 <= addr_O0_pre;
		addr_O1 <= addr_O1_pre;

		counter_seq <= counter_comb;

		//din_B00 <= din_B00_pre;
		//din_B01 <= din_B01_pre;
		//din_B10 <= din_B10_pre;
		//din_B11 <= din_B11_pre;

		din_OT0 <= din_OT0_pre;
		din_OT1 <= din_OT1_pre;

		din_O0 <= din_O0_pre;
		din_O1 <= din_O1_pre;

		bias_seq <= bias_comb;
		pre_relu_seq <= pre_relu_comb;

		output_counter_seq <= output_counter_comb;
		num_from_mem_seq <= num_from_mem_comb;
		num_to_mem_seq <= num_to_mem_comb;
		mem_counter_seq <= mem_counter_comb;
		epoch_counter_seq <= epoch_counter_comb;
		cal_en_counter_seq <= cal_en_counter_comb;
		final_flag <= final_flag_pre;
	end
end
//seq without for loop

assign d00 = dout_000[127:120];
assign d01 = dout_001[127:120];
assign d10 = dout_010[127:120];
assign d11 = dout_011[127:120];

//FSM control
always@*
begin
	next_state = cur_state;
	case(cur_state)
	IDLE:
	begin
		next_state = IDLE;

		if(bias_valid)
		begin
			next_state = BIAS;
		end

		if(kernel_valid)
		begin
			next_state = KERNEL;
		end

		if(image_valid)
		begin
			next_state = IMAGE;
		end

	end

	KERNEL:
	begin
		next_state = KERNEL;
		if(kernel_valid_last && !kernel_valid)
		begin
			next_state = IDLE;
		end
	end

	BIAS:
	begin
		next_state = BIAS;
		if(bias_valid_last && !bias_valid)
		begin
			next_state = IDLE;
		end
	end

	IMAGE:
	begin
		next_state = IMAGE;
		if(!image_valid)
		begin
			next_state = IDLE;
		end
	end

	OUT:// repeat times = out channal size
	begin
		next_state = OUT;
		if(counter_seq == output_image_size * output_image_size)
		begin
			next_state = IDLE;
		end
	end
	endcase
//FSM control

//main
	for(i=0; i<input_channel_size;i=i+1)
	begin
		for(j=0;j<kernel_size;j=j+1)
		begin
			for(k=0;k<kernel_size;k=k+1)
			begin
				kernel_comb[i][j][k] = kernel_seq[i][j][k];
			end
		end
	end

	for(i=0; i<input_sram_size;i=i+1)
	begin
		for(j=0;j<kernel_size;j=j+1)
		begin
			for(k=0;k<kernel_size;k=k+1)
			begin
				image_comb[i][j][k] = image_seq[i][j][k];
			end
		end
	end

	x_counter_comb = x_counter_seq;
	y_counter_comb = y_counter_seq;
	counter_comb = counter_seq;
	image_flag_comb = image_flag_seq;
	kernel_flag_comb = kernel_flag_seq;
	bias_comb = bias_seq;
	mem_epoch_comb = mem_epoch_seq;
	mem_counter_comb = mem_counter_seq;
	epoch_counter_comb = epoch_counter_seq;
	final_flag_pre = 0;
	we_BIAS_pre = 0;
	we_OT0_pre = we_OT0;
	we_OT1_pre = we_OT1;
	num_to_mem_comb = num_to_mem_seq;
	num_from_mem_comb = num_from_mem_seq;
	cal_en_counter_comb = cal_en_counter_seq;
	addr_K_pre = 0;
	//addr_00_pre = 0;
	//addr_01_pre = 0;
	//addr_10_pre = 0;
	//addr_11_pre = 0;
	addr_B00_pre = 0;
	addr_B01_pre = 0;
	addr_B10_pre = 0;
	addr_B11_pre = 0;
	we_B0 = !y_counter_comb[0];
	we_B1 = y_counter_comb[0];
	final_flag_pre = final_flag;
	output_counter_comb = output_counter_seq;
	din_B00 = 0;
	din_B01 = 0;
	din_B10 = 0;
	din_B11 = 0;

	case(cur_state)
	IDLE:
	begin
		if(kernel_valid)
		begin
			addr_K_pre = 1;
			counter_comb = 1;
		end

		//addr_00_pre = 0;
		//addr_01_pre = 0;
		//addr_10_pre = 0;
		//addr_11_pre = 0;

		addr_00 = 0;
		addr_01 = 0;
		addr_10 = 0;
		addr_11 = 0;

		
		
		if(!mem_epoch_seq[0])
		begin
			image_comb[0][1][1] = dout_000[127:120];
			image_comb[1][1][1] = dout_000[119:112];
			image_comb[2][1][1] = dout_000[111:104];
			image_comb[3][1][1] = dout_000[103:96];
			image_comb[4][1][1] = dout_000[95:88];
			image_comb[5][1][1] = dout_000[87:80];
			image_comb[6][1][1] = dout_000[79:72];
			image_comb[7][1][1] = dout_000[71:64];
			image_comb[8][1][1] = dout_000[63:56];
			image_comb[9][1][1] = dout_000[55:48];
			image_comb[10][1][1] = dout_000[47:40];
			image_comb[11][1][1] = dout_000[39:32];
			image_comb[12][1][1] = dout_000[31:24];
			image_comb[13][1][1] = dout_000[23:16];
			image_comb[14][1][1] = dout_000[15:8];
			image_comb[15][1][1] = dout_000[7:0];

			image_comb[0][1][2] = dout_001[127:120];
			image_comb[1][1][2] = dout_001[119:112];
			image_comb[2][1][2] = dout_001[111:104];
			image_comb[3][1][2] = dout_001[103:96];
			image_comb[4][1][2] = dout_001[95:88];
			image_comb[5][1][2] = dout_001[87:80];
			image_comb[6][1][2] = dout_001[79:72];
			image_comb[7][1][2] = dout_001[71:64];
			image_comb[8][1][2] = dout_001[63:56];
			image_comb[9][1][2] = dout_001[55:48];
			image_comb[10][1][2] = dout_001[47:40];
			image_comb[11][1][2] = dout_001[39:32];
			image_comb[12][1][2] = dout_001[31:24];
			image_comb[13][1][2] = dout_001[23:16];
			image_comb[14][1][2] = dout_001[15:8];
			image_comb[15][1][2] = dout_001[7:0];

			image_comb[0][2][1] = dout_010[127:120];
			image_comb[1][2][1] = dout_010[119:112];
			image_comb[2][2][1] = dout_010[111:104];
			image_comb[3][2][1] = dout_010[103:96];
			image_comb[4][2][1] = dout_010[95:88];
			image_comb[5][2][1] = dout_010[87:80];
			image_comb[6][2][1] = dout_010[79:72];
			image_comb[7][2][1] = dout_010[71:64];
			image_comb[8][2][1] = dout_010[63:56];
			image_comb[9][2][1] = dout_010[55:48];
			image_comb[10][2][1] = dout_010[47:40];
			image_comb[11][2][1] = dout_010[39:32];
			image_comb[12][2][1] = dout_010[31:24];
			image_comb[13][2][1] = dout_010[23:16];
			image_comb[14][2][1] = dout_010[15:8];
			image_comb[15][2][1] = dout_010[7:0];

			image_comb[0][2][2] = dout_011[127:120];
			image_comb[1][2][2] = dout_011[119:112];
			image_comb[2][2][2] = dout_011[111:104];
			image_comb[3][2][2] = dout_011[103:96];
			image_comb[4][2][2] = dout_011[95:88];
			image_comb[5][2][2] = dout_011[87:80];
			image_comb[6][2][2] = dout_011[79:72];
			image_comb[7][2][2] = dout_011[71:64];
			image_comb[8][2][2] = dout_011[63:56];
			image_comb[9][2][2] = dout_011[55:48];
			image_comb[10][2][2] = dout_011[47:40];
			image_comb[11][2][2] = dout_011[39:32];
			image_comb[12][2][2] = dout_011[31:24];
			image_comb[13][2][2] = dout_011[23:16];
			image_comb[14][2][2] = dout_011[15:8];
			image_comb[15][2][2] = dout_011[7:0];
		end
		else
		begin
			image_comb[0][1][1] = dout_100[127:120];
			image_comb[1][1][1] = dout_100[119:112];
			image_comb[2][1][1] = dout_100[111:104];
			image_comb[3][1][1] = dout_100[103:96];
			image_comb[4][1][1] = dout_100[95:88];
			image_comb[5][1][1] = dout_100[87:80];
			image_comb[6][1][1] = dout_100[79:72];
			image_comb[7][1][1] = dout_100[71:64];
			image_comb[8][1][1] = dout_100[63:56];
			image_comb[9][1][1] = dout_100[55:48];
			image_comb[10][1][1] = dout_100[47:40];
			image_comb[11][1][1] = dout_100[39:32];
			image_comb[12][1][1] = dout_100[31:24];
			image_comb[13][1][1] = dout_100[23:16];
			image_comb[14][1][1] = dout_100[15:8];
			image_comb[15][1][1] = dout_100[7:0];

			image_comb[0][1][2] = dout_101[127:120];
			image_comb[1][1][2] = dout_101[119:112];
			image_comb[2][1][2] = dout_101[111:104];
			image_comb[3][1][2] = dout_101[103:96];
			image_comb[4][1][2] = dout_101[95:88];
			image_comb[5][1][2] = dout_101[87:80];
			image_comb[6][1][2] = dout_101[79:72];
			image_comb[7][1][2] = dout_101[71:64];
			image_comb[8][1][2] = dout_101[63:56];
			image_comb[9][1][2] = dout_101[55:48];
			image_comb[10][1][2] = dout_101[47:40];
			image_comb[11][1][2] = dout_101[39:32];
			image_comb[12][1][2] = dout_101[31:24];
			image_comb[13][1][2] = dout_101[23:16];
			image_comb[14][1][2] = dout_101[15:8];
			image_comb[15][1][2] = dout_101[7:0];

			image_comb[0][2][1] = dout_110[127:120];
			image_comb[1][2][1] = dout_110[119:112];
			image_comb[2][2][1] = dout_110[111:104];
			image_comb[3][2][1] = dout_110[103:96];
			image_comb[4][2][1] = dout_110[95:88];
			image_comb[5][2][1] = dout_110[87:80];
			image_comb[6][2][1] = dout_110[79:72];
			image_comb[7][2][1] = dout_110[71:64];
			image_comb[8][2][1] = dout_110[63:56];
			image_comb[9][2][1] = dout_110[55:48];
			image_comb[10][2][1] = dout_110[47:40];
			image_comb[11][2][1] = dout_110[39:32];
			image_comb[12][2][1] = dout_110[31:24];
			image_comb[13][2][1] = dout_110[23:16];
			image_comb[14][2][1] = dout_110[15:8];
			image_comb[15][2][1] = dout_110[7:0];

			image_comb[0][2][2] = dout_111[127:120];
			image_comb[1][2][2] = dout_111[119:112];
			image_comb[2][2][2] = dout_111[111:104];
			image_comb[3][2][2] = dout_111[103:96];
			image_comb[4][2][2] = dout_111[95:88];
			image_comb[5][2][2] = dout_111[87:80];
			image_comb[6][2][2] = dout_111[79:72];
			image_comb[7][2][2] = dout_111[71:64];
			image_comb[8][2][2] = dout_111[63:56];
			image_comb[9][2][2] = dout_111[55:48];
			image_comb[10][2][2] = dout_111[47:40];
			image_comb[11][2][2] = dout_111[39:32];
			image_comb[12][2][2] = dout_111[31:24];
			image_comb[13][2][2] = dout_111[23:16];
			image_comb[14][2][2] = dout_111[15:8];
			image_comb[15][2][2] = dout_111[7:0];
		end

		if(image_valid)
		begin
			//addr_00_pre = 1;
			//addr_01_pre = 1;
			//addr_10_pre = 1;
			//addr_11_pre = 1;

			addr_00 = 0;
			addr_01 = 0;
			addr_10 = 0;
			addr_11 = 0;
			
			we_I_pre = 0;
			addr_B00_pre = 0;
			addr_B01_pre = 0;
			addr_B10_pre = 0;
			addr_B11_pre = 0;
			counter_comb = 0;
			

			if(!mem_epoch_seq[0])
			begin
				din_B00 = dout_010;
				din_B01 = dout_011;
			end
			else
			begin
				din_B00 = dout_110;
				din_B01 = dout_111;
			end

			for(i=0;i<input_sram_size;i=i+1)
			begin
				image_comb[i][0][0] = 0;
				image_comb[i][0][1] = 0;
				image_comb[i][0][2] = 0;
				image_comb[i][1][0] = 0;
				image_comb[i][2][0] = 0;
			end
		end

		addr_BIAS_pre = epoch_counter_seq;

		if(mem_epoch_seq == mem_epoch)
		begin
			final_flag_pre = 1;
		end

		x_counter_comb = 0;
		y_counter_comb = 0;
		cal_en_counter_comb = 3;
	end

	KERNEL:
	begin
		if(kernel_valid)
		begin
			we_K_pre = 0;
			counter_comb = counter_seq + 1;

			if(epoch_counter_seq[0])
			begin
				addr_K_pre = counter_seq + 1 + input_channel_size * (epoch_counter_seq-1)/2;

				kernel_comb[counter_seq-1][0][0] = dout_K1[71:64];
				kernel_comb[counter_seq-1][0][1] = dout_K1[63:56];
				kernel_comb[counter_seq-1][0][2] = dout_K1[55:48];
				kernel_comb[counter_seq-1][1][0] = dout_K1[47:40];
				kernel_comb[counter_seq-1][1][1] = dout_K1[39:32];
				kernel_comb[counter_seq-1][1][2] = dout_K1[31:24];
				kernel_comb[counter_seq-1][2][0] = dout_K1[23:16];
				kernel_comb[counter_seq-1][2][1] = dout_K1[15: 8];
				kernel_comb[counter_seq-1][2][2] = dout_K1[ 7: 0];
			end
			else
			begin
				addr_K_pre = counter_seq + 1 + input_channel_size * epoch_counter_seq/2;

				kernel_comb[counter_seq-1][0][0] = dout_K0[71:64];
				kernel_comb[counter_seq-1][0][1] = dout_K0[63:56];
				kernel_comb[counter_seq-1][0][2] = dout_K0[55:48];
				kernel_comb[counter_seq-1][1][0] = dout_K0[47:40];
				kernel_comb[counter_seq-1][1][1] = dout_K0[39:32];
				kernel_comb[counter_seq-1][1][2] = dout_K0[31:24];
				kernel_comb[counter_seq-1][2][0] = dout_K0[23:16];
				kernel_comb[counter_seq-1][2][1] = dout_K0[15: 8];
				kernel_comb[counter_seq-1][2][2] = dout_K0[ 7: 0];
			end
		end
	end

	BIAS:
	begin
		addr_BIAS_pre = epoch_counter_seq;//48
		counter_comb = 0;
		bias_comb = dout_bias;
	end

	//[y][x]
	IMAGE://even, in:dout_B0, out:dout_B1 odd, in:dout_B1, out:dout_B0
	begin
		if(cal_en_counter_seq < 3)
		begin
			cal_en_counter_comb = cal_en_counter_seq + 1;
			addr_B00 = 0;
			addr_B01 = 0;
			addr_B10 = 0;
			addr_B11 = 0;

		end
		if((x_counter_seq == output_image_size - 1) && ((y_counter_seq == 0) || (y_counter_seq == 1)))//to avoid mem == x
		begin
			cal_en_counter_comb = 0;
		end
		//if(cal_en_counter_seq == 0)
		//begin
		//	we_B0_pre = !we_B0;
		//	we_B1_pre = !we_B1;
		//end

	if(cal_en_counter_seq > 2)//superior
	begin
		//counter part
		if(counter_seq < output_image_size * output_image_size - 1)
		begin
			counter_comb = counter_seq + 1;
		end
		else
		begin
			if(mem_epoch_seq < 2)
			begin
				counter_comb = 0;
			end
			else
			begin
				counter_comb = counter_seq + 1;
			end
		end
		
		if(x_counter_seq < output_image_size - 1)
		begin
			x_counter_comb = x_counter_seq + 1;
		end
		else
		begin
			x_counter_comb = 0;
			if(y_counter_seq < output_image_size - 1)
			begin
				y_counter_comb = y_counter_seq + 1;
			end
			else
			begin
				y_counter_comb = 0;
			end
		end

		if(counter_seq != output_image_size * output_image_size - 1)
		begin
			//addr_00_pre = counter_seq + 2;
			//addr_01_pre = counter_seq + 2;
			//addr_10_pre = counter_seq + 2;
			//addr_11_pre = counter_seq + 2;
			addr_00 = counter_seq + 1;
			addr_01 = counter_seq + 1;
			addr_10 = counter_seq + 1;
			addr_11 = counter_seq + 1;
		end
		else
		begin
			//addr_00_pre = 0;
			//addr_01_pre = 0;
			//addr_10_pre = 0;
			//addr_11_pre = 0;
			addr_00 = 0;
			addr_01 = 0;
			addr_10 = 0;
			addr_11 = 0;
		end

		addr_B00 = x_counter_seq +  y_counter_seq[0]; 
		addr_B01 = x_counter_seq +  y_counter_seq[0]; 
		addr_B10 = x_counter_seq + !y_counter_seq[0]; 
		addr_B11 = x_counter_seq + !y_counter_seq[0]; 
		/* ------- 8/27 update --------------------
		因為 read 是用當前cycle的address
		write 是用上一個cycle的address
		所以address用來write時要+1
		-----------------------------------------*/

		
		if(!mem_epoch_seq[0])
		begin
			image_comb[0][1][1] = dout_000[127:120];
			image_comb[1][1][1] = dout_000[119:112];
			image_comb[2][1][1] = dout_000[111:104];
			image_comb[3][1][1] = dout_000[103:96];
			image_comb[4][1][1] = dout_000[95:88];
			image_comb[5][1][1] = dout_000[87:80];
			image_comb[6][1][1] = dout_000[79:72];
			image_comb[7][1][1] = dout_000[71:64];
			image_comb[8][1][1] = dout_000[63:56];
			image_comb[9][1][1] = dout_000[55:48];
			image_comb[10][1][1] = dout_000[47:40];
			image_comb[11][1][1] = dout_000[39:32];
			image_comb[12][1][1] = dout_000[31:24];
			image_comb[13][1][1] = dout_000[23:16];
			image_comb[14][1][1] = dout_000[15:8];
			image_comb[15][1][1] = dout_000[7:0];

			image_comb[0][1][2] = dout_001[127:120];
			image_comb[1][1][2] = dout_001[119:112];
			image_comb[2][1][2] = dout_001[111:104];
			image_comb[3][1][2] = dout_001[103:96];
			image_comb[4][1][2] = dout_001[95:88];
			image_comb[5][1][2] = dout_001[87:80];
			image_comb[6][1][2] = dout_001[79:72];
			image_comb[7][1][2] = dout_001[71:64];
			image_comb[8][1][2] = dout_001[63:56];
			image_comb[9][1][2] = dout_001[55:48];
			image_comb[10][1][2] = dout_001[47:40];
			image_comb[11][1][2] = dout_001[39:32];
			image_comb[12][1][2] = dout_001[31:24];
			image_comb[13][1][2] = dout_001[23:16];
			image_comb[14][1][2] = dout_001[15:8];
			image_comb[15][1][2] = dout_001[7:0];

			image_comb[0][2][1] = dout_010[127:120];
			image_comb[1][2][1] = dout_010[119:112];
			image_comb[2][2][1] = dout_010[111:104];
			image_comb[3][2][1] = dout_010[103:96];
			image_comb[4][2][1] = dout_010[95:88];
			image_comb[5][2][1] = dout_010[87:80];
			image_comb[6][2][1] = dout_010[79:72];
			image_comb[7][2][1] = dout_010[71:64];
			image_comb[8][2][1] = dout_010[63:56];
			image_comb[9][2][1] = dout_010[55:48];
			image_comb[10][2][1] = dout_010[47:40];
			image_comb[11][2][1] = dout_010[39:32];
			image_comb[12][2][1] = dout_010[31:24];
			image_comb[13][2][1] = dout_010[23:16];
			image_comb[14][2][1] = dout_010[15:8];
			image_comb[15][2][1] = dout_010[7:0];

			image_comb[0][2][2] = dout_011[127:120];
			image_comb[1][2][2] = dout_011[119:112];
			image_comb[2][2][2] = dout_011[111:104];
			image_comb[3][2][2] = dout_011[103:96];
			image_comb[4][2][2] = dout_011[95:88];
			image_comb[5][2][2] = dout_011[87:80];
			image_comb[6][2][2] = dout_011[79:72];
			image_comb[7][2][2] = dout_011[71:64];
			image_comb[8][2][2] = dout_011[63:56];
			image_comb[9][2][2] = dout_011[55:48];
			image_comb[10][2][2] = dout_011[47:40];
			image_comb[11][2][2] = dout_011[39:32];
			image_comb[12][2][2] = dout_011[31:24];
			image_comb[13][2][2] = dout_011[23:16];
			image_comb[14][2][2] = dout_011[15:8];
			image_comb[15][2][2] = dout_011[7:0];
		end
		else
		begin
			image_comb[0][1][1] = dout_100[127:120];
			image_comb[1][1][1] = dout_100[119:112];
			image_comb[2][1][1] = dout_100[111:104];
			image_comb[3][1][1] = dout_100[103:96];
			image_comb[4][1][1] = dout_100[95:88];
			image_comb[5][1][1] = dout_100[87:80];
			image_comb[6][1][1] = dout_100[79:72];
			image_comb[7][1][1] = dout_100[71:64];
			image_comb[8][1][1] = dout_100[63:56];
			image_comb[9][1][1] = dout_100[55:48];
			image_comb[10][1][1] = dout_100[47:40];
			image_comb[11][1][1] = dout_100[39:32];
			image_comb[12][1][1] = dout_100[31:24];
			image_comb[13][1][1] = dout_100[23:16];
			image_comb[14][1][1] = dout_100[15:8];
			image_comb[15][1][1] = dout_100[7:0];

			image_comb[0][1][2] = dout_101[127:120];
			image_comb[1][1][2] = dout_101[119:112];
			image_comb[2][1][2] = dout_101[111:104];
			image_comb[3][1][2] = dout_101[103:96];
			image_comb[4][1][2] = dout_101[95:88];
			image_comb[5][1][2] = dout_101[87:80];
			image_comb[6][1][2] = dout_101[79:72];
			image_comb[7][1][2] = dout_101[71:64];
			image_comb[8][1][2] = dout_101[63:56];
			image_comb[9][1][2] = dout_101[55:48];
			image_comb[10][1][2] = dout_101[47:40];
			image_comb[11][1][2] = dout_101[39:32];
			image_comb[12][1][2] = dout_101[31:24];
			image_comb[13][1][2] = dout_101[23:16];
			image_comb[14][1][2] = dout_101[15:8];
			image_comb[15][1][2] = dout_101[7:0];

			image_comb[0][2][1] = dout_110[127:120];
			image_comb[1][2][1] = dout_110[119:112];
			image_comb[2][2][1] = dout_110[111:104];
			image_comb[3][2][1] = dout_110[103:96];
			image_comb[4][2][1] = dout_110[95:88];
			image_comb[5][2][1] = dout_110[87:80];
			image_comb[6][2][1] = dout_110[79:72];
			image_comb[7][2][1] = dout_110[71:64];
			image_comb[8][2][1] = dout_110[63:56];
			image_comb[9][2][1] = dout_110[55:48];
			image_comb[10][2][1] = dout_110[47:40];
			image_comb[11][2][1] = dout_110[39:32];
			image_comb[12][2][1] = dout_110[31:24];
			image_comb[13][2][1] = dout_110[23:16];
			image_comb[14][2][1] = dout_110[15:8];
			image_comb[15][2][1] = dout_110[7:0];

			image_comb[0][2][2] = dout_111[127:120];
			image_comb[1][2][2] = dout_111[119:112];
			image_comb[2][2][2] = dout_111[111:104];
			image_comb[3][2][2] = dout_111[103:96];
			image_comb[4][2][2] = dout_111[95:88];
			image_comb[5][2][2] = dout_111[87:80];
			image_comb[6][2][2] = dout_111[79:72];
			image_comb[7][2][2] = dout_111[71:64];
			image_comb[8][2][2] = dout_111[63:56];
			image_comb[9][2][2] = dout_111[55:48];
			image_comb[10][2][2] = dout_111[47:40];
			image_comb[11][2][2] = dout_111[39:32];
			image_comb[12][2][2] = dout_111[31:24];
			image_comb[13][2][2] = dout_111[23:16];
			image_comb[14][2][2] = dout_111[15:8];
			image_comb[15][2][2] = dout_111[7:0];
		end
	end

		//bottom
		case(x_counter_seq)
		0:
		begin
			if(!mem_epoch_seq[0])
			begin
				din_B00 = dout_010;
				din_B01 = dout_011;
			end
			else
			begin
				din_B00 = dout_110;
				din_B01 = dout_111;
			end

			if(y_counter_seq == 0)
			begin	
				for(i=0;i<input_sram_size;i=i+1)
				begin
					image_comb[i][0][0] = 0;
					image_comb[i][0][1] = 0;
					image_comb[i][0][2] = 0;
					image_comb[i][1][0] = 0;
					image_comb[i][2][0] = 0;
				end
			end
			else if(y_counter_seq[0] == 1)
			begin
				for(i=0;i<input_sram_size;i=i+1)
				begin
					
					image_comb[i][0][0] = 0;
					image_comb[i][1][0] = 0;
					image_comb[i][2][0] = 0;
				end
				if(!mem_epoch_seq[0])
				begin
					din_B10_pre = dout_010;
					din_B11_pre = dout_011;
				end
				else
				begin
					din_B10_pre = dout_110;
					din_B11_pre = dout_111;
				end

				image_comb[0][0][1] = dout_B00[127:120];
				image_comb[1][0][1] = dout_B00[119:112];
				image_comb[2][0][1] = dout_B00[111:104];
				image_comb[3][0][1] = dout_B00[103:96];
				image_comb[4][0][1] = dout_B00[95:88];
				image_comb[5][0][1] = dout_B00[87:80];
				image_comb[6][0][1] = dout_B00[79:72];
				image_comb[7][0][1] = dout_B00[71:64];
				image_comb[8][0][1] = dout_B00[63:56];
				image_comb[9][0][1] = dout_B00[55:48];
				image_comb[10][0][1] = dout_B00[47:40];
				image_comb[11][0][1] = dout_B00[39:32];
				image_comb[12][0][1] = dout_B00[31:24];
				image_comb[13][0][1] = dout_B00[23:16];
				image_comb[14][0][1] = dout_B00[15:8];
				image_comb[15][0][1] = dout_B00[7:0];

				image_comb[0][0][2] = dout_B01[127:120];
				image_comb[1][0][2] = dout_B01[119:112];
				image_comb[2][0][2] = dout_B01[111:104];
				image_comb[3][0][2] = dout_B01[103:96];
				image_comb[4][0][2] = dout_B01[95:88];
				image_comb[5][0][2] = dout_B01[87:80];
				image_comb[6][0][2] = dout_B01[79:72];
				image_comb[7][0][2] = dout_B01[71:64];
				image_comb[8][0][2] = dout_B01[63:56];
				image_comb[9][0][2] = dout_B01[55:48];
				image_comb[10][0][2] = dout_B01[47:40];
				image_comb[11][0][2] = dout_B01[39:32];
				image_comb[12][0][2] = dout_B01[31:24];
				image_comb[13][0][2] = dout_B01[23:16];
				image_comb[14][0][2] = dout_B01[15:8];
				image_comb[15][0][2] = dout_B01[7:0];
			end
			else//y_counter_seq[0] == 0
			begin
				if(!mem_epoch_seq[0])
				begin
					din_B00 = dout_010;
					din_B01 = dout_011;
				end
				else
				begin
					din_B00 = dout_110;
					din_B01 = dout_111;
				end

				for(i=0;i<input_sram_size;i=i+1)
				begin
					image_comb[i][0][0] = 0;
					image_comb[i][1][0] = 0;
					image_comb[i][2][0] = 0;
				end

				image_comb[0][0][1] = dout_B10[127:120];
				image_comb[1][0][1] = dout_B10[119:112];
				image_comb[2][0][1] = dout_B10[111:104];
				image_comb[3][0][1] = dout_B10[103:96];
				image_comb[4][0][1] = dout_B10[95:88];
				image_comb[5][0][1] = dout_B10[87:80];
				image_comb[6][0][1] = dout_B10[79:72];
				image_comb[7][0][1] = dout_B10[71:64];
				image_comb[8][0][1] = dout_B10[63:56];
				image_comb[9][0][1] = dout_B10[55:48];
				image_comb[10][0][1] = dout_B10[47:40];
				image_comb[11][0][1] = dout_B10[39:32];
				image_comb[12][0][1] = dout_B10[31:24];
				image_comb[13][0][1] = dout_B10[23:16];
				image_comb[14][0][1] = dout_B10[15:8];
				image_comb[15][0][1] = dout_B10[7:0];

				image_comb[0][0][2] = dout_B11[127:120];
				image_comb[1][0][2] = dout_B11[119:112];
				image_comb[2][0][2] = dout_B11[111:104];
				image_comb[3][0][2] = dout_B11[103:96];
				image_comb[4][0][2] = dout_B11[95:88];
				image_comb[5][0][2] = dout_B11[87:80];
				image_comb[6][0][2] = dout_B11[79:72];
				image_comb[7][0][2] = dout_B11[71:64];
				image_comb[8][0][2] = dout_B11[63:56];
				image_comb[9][0][2] = dout_B11[55:48];
				image_comb[10][0][2] = dout_B11[47:40];
				image_comb[11][0][2] = dout_B11[39:32];
				image_comb[12][0][2] = dout_B11[31:24];
				image_comb[13][0][2] = dout_B11[23:16];
				image_comb[14][0][2] = dout_B11[15:8];
				image_comb[15][0][2] = dout_B11[7:0];
			end
		end

		default://x_counter_seq >= 1
		begin
			debug = 10;
			if(y_counter_seq == 0)
			begin
				if(!mem_epoch_seq[0])
				begin
					din_B00 = dout_010;
					din_B01 = dout_011;
				end
				else
				begin
					din_B00 = dout_110;
					din_B01 = dout_111;
				end
				for(i=0;i<input_sram_size;i++)
				begin
					image_comb[i][0][0] = 0;
					image_comb[i][0][1] = 0;
					image_comb[i][0][2] = 0;
					image_comb[i][1][0] = image_seq[i][1][2];
					image_comb[i][2][0] = image_seq[i][2][2];
				end
			end

			else if(y_counter_seq[0] == 1)
			begin
				for(i=0;i<input_sram_size;i++)
				begin
					image_comb[i][0][0] = image_seq[i][0][2];
					image_comb[i][1][0] = image_seq[i][1][2];
					image_comb[i][2][0] = image_seq[i][2][2];
				end

				if(!mem_epoch_seq[0])
				begin
					din_B10_pre = dout_010;
					din_B11_pre = dout_011;
				end
				else
				begin
					din_B10_pre = dout_110;
					din_B11_pre = dout_111;
				end

				image_comb[0][0][1] = dout_B00[127:120];
				image_comb[1][0][1] = dout_B00[119:112];
				image_comb[2][0][1] = dout_B00[111:104];
				image_comb[3][0][1] = dout_B00[103:96];
				image_comb[4][0][1] = dout_B00[95:88];
				image_comb[5][0][1] = dout_B00[87:80];
				image_comb[6][0][1] = dout_B00[79:72];
				image_comb[7][0][1] = dout_B00[71:64];
				image_comb[8][0][1] = dout_B00[63:56];
				image_comb[9][0][1] = dout_B00[55:48];
				image_comb[10][0][1] = dout_B00[47:40];
				image_comb[11][0][1] = dout_B00[39:32];
				image_comb[12][0][1] = dout_B00[31:24];
				image_comb[13][0][1] = dout_B00[23:16];
				image_comb[14][0][1] = dout_B00[15:8];
				image_comb[15][0][1] = dout_B00[7:0];

				image_comb[0][0][2] = dout_B01[127:120];
				image_comb[1][0][2] = dout_B01[119:112];
				image_comb[2][0][2] = dout_B01[111:104];
				image_comb[3][0][2] = dout_B01[103:96];
				image_comb[4][0][2] = dout_B01[95:88];
				image_comb[5][0][2] = dout_B01[87:80];
				image_comb[6][0][2] = dout_B01[79:72];
				image_comb[7][0][2] = dout_B01[71:64];
				image_comb[8][0][2] = dout_B01[63:56];
				image_comb[9][0][2] = dout_B01[55:48];
				image_comb[10][0][2] = dout_B01[47:40];
				image_comb[11][0][2] = dout_B01[39:32];
				image_comb[12][0][2] = dout_B01[31:24];
				image_comb[13][0][2] = dout_B01[23:16];
				image_comb[14][0][2] = dout_B01[15:8];
				image_comb[15][0][2] = dout_B01[7:0];
			end

			else//y_counter_seq[0] == 0
			begin
				for(i=0;i<input_sram_size;i++)
				begin
					image_comb[i][0][0] = image_seq[i][0][2];
					image_comb[i][1][0] = image_seq[i][1][2];
					image_comb[i][2][0] = image_seq[i][2][2];
				end

				if(!mem_epoch_seq[0])
				begin
					din_B00 = dout_010;
					din_B01 = dout_011;
				end
				else
				begin
					din_B00 = dout_110;
					din_B01 = dout_111;
				end

				image_comb[0][0][1] = dout_B10[127:120];
				image_comb[1][0][1] = dout_B10[119:112];
				image_comb[2][0][1] = dout_B10[111:104];
				image_comb[3][0][1] = dout_B10[103:96];
				image_comb[4][0][1] = dout_B10[95:88];
				image_comb[5][0][1] = dout_B10[87:80];
				image_comb[6][0][1] = dout_B10[79:72];
				image_comb[7][0][1] = dout_B10[71:64];
				image_comb[8][0][1] = dout_B10[63:56];
				image_comb[9][0][1] = dout_B10[55:48];
				image_comb[10][0][1] = dout_B10[47:40];
				image_comb[11][0][1] = dout_B10[39:32];
				image_comb[12][0][1] = dout_B10[31:24];
				image_comb[13][0][1] = dout_B10[23:16];
				image_comb[14][0][1] = dout_B10[15:8];
				image_comb[15][0][1] = dout_B10[7:0];

				image_comb[0][0][2] = dout_B11[127:120];
				image_comb[1][0][2] = dout_B11[119:112];
				image_comb[2][0][2] = dout_B11[111:104];
				image_comb[3][0][2] = dout_B11[103:96];
				image_comb[4][0][2] = dout_B11[95:88];
				image_comb[5][0][2] = dout_B11[87:80];
				image_comb[6][0][2] = dout_B11[79:72];
				image_comb[7][0][2] = dout_B11[71:64];
				image_comb[8][0][2] = dout_B11[63:56];
				image_comb[9][0][2] = dout_B11[55:48];
				image_comb[10][0][2] = dout_B11[47:40];
				image_comb[11][0][2] = dout_B11[39:32];
				image_comb[12][0][2] = dout_B11[31:24];
				image_comb[13][0][2] = dout_B11[23:16];
				image_comb[14][0][2] = dout_B11[15:8];
				image_comb[15][0][2] = dout_B11[7:0];
			end
		end
		endcase

		//output temp	
		if(mem_epoch_seq != 3)
		begin
			if(mem_epoch_seq == 0)
			begin
				we_OT0_pre = 1;
			end
			else if(mem_epoch_seq[0])
			begin
				we_OT0_pre = 0;
				we_OT1_pre = 1;
			end
			else
			begin
				we_OT0_pre = 1;
				we_OT1_pre = 0;
			end
		end

		if(x_counter_seq > 2)//might be wrong
		begin
			mem_counter_comb = mem_counter_seq + 1;

			if(mem_epoch_seq == 0)
			begin
				addr_OT0_pre = mem_counter_seq;
				//num_to_mem_comb = mac_16_seq;
				din_OT0_pre = mac_16_seq;
			end
			else if(mem_epoch_seq == mem_epoch)//last mem epoch
			begin
				addr_OT0_pre = mem_counter_seq;
				addr_OT1_pre = mem_counter_seq;
				//num_from_mem_comb = dout_OT1;
				//num_to_mem_comb = num_from_mem_seq + mac_16_seq  + bias_seq;
				din_OT0_pre = dout_OT1 + mac_16_seq  + bias_seq;
			end
			else if(mem_epoch_seq[0])
			begin
				addr_OT0_pre = mem_counter_seq;
				addr_OT1_pre = mem_counter_seq;
				//num_from_mem_comb = dout_OT0;
				//num_to_mem_comb = num_from_mem_seq + mac_16_seq;
				din_OT1_pre = dout_OT0 + mac_16_seq;
			end
			else
			begin
				addr_OT0_pre = mem_counter_seq;
				addr_OT1_pre = mem_counter_seq;
				//num_from_mem_comb = dout_OT1;
				//num_to_mem_comb = num_from_mem_seq + mac_16_seq  + bias_seq;
				din_OT0_pre = dout_OT1 + mac_16_seq;
			end
		end

		if(counter_seq == output_image_size * output_image_size - 1)
		begin
			mem_epoch_comb = mem_epoch_seq + 1;
			mem_counter_comb = 0;
			if(mem_epoch_seq == 1)
			begin
				final_flag_pre = 1;
			end
		end
//end
	end

	OUT:
	begin

	end
	endcase

	if(mem_epoch_seq == 3 && counter_seq == 4)//to be modified
	begin
		epoch_counter_comb = epoch_counter_seq + 1;//第幾個output channel
		mem_epoch_comb = 0;
	end
end
//main

//convolution
always@*
begin
	for(i=0;i<input_sram_size;i=i+1)
	begin
		for(j=0;j<kernel_size;j=j+1)
		begin
			for(k=0;k<kernel_size;k=k+1)
			begin
				mul_comb[i][j][k] = mul_seq[i][j][k];
			end
		end
	end

	for(i=0;i<input_sram_size;i=i+1)
	begin
		mac_comb[i] = mac_seq[i];
	end

	mac_16_comb = mac_16_seq;

	for(i=0;i<input_sram_size;i=i+1)
	begin
		for(j=0;j<kernel_size;j=j+1)
		begin
			for(k=0;k<kernel_size;k=k+1)
			begin
				mul_comb[i][j][k] = kernel_seq[i][j][k] * image_seq[i][j][k];
			end
		end
	end

	for(i=0;i<input_sram_size;i=i+1)
	begin
		mac_comb[i] = mul_seq[i][0][0] + mul_seq[i][0][1] + mul_seq[i][0][2] + mul_seq[i][1][0] + mul_seq[i][1][1] + mul_seq[i][1][2] + mul_seq[i][2][0] + mul_seq[i][2][1] + mul_seq[i][2][2];
	end

	mac_16_comb = mac_seq[0] + mac_seq[1] + mac_seq[2] + mac_seq[3] + mac_seq[4] + mac_seq[5] + mac_seq[6] + mac_seq[7] + mac_seq[8] + mac_seq[9] + mac_seq[10] + mac_seq[11] + mac_seq[12] + mac_seq[13] + mac_seq[14] + mac_seq[15];
end
//convolution

//pre relu
always@*
begin
	for(i=0;i<input_channel_size;i=i+1)
	begin
		pre_relu_comb = pre_relu_seq + bias_seq;
	end
end
//pre relu

//ReLU
always@*
begin
	
	out_data_pre = 0;

	if(epoch_counter_seq[0])
	begin
		we_O0_pre = 0;
		we_O1_pre = 1;
	end
	else
	begin
		we_O0_pre = 1;
		we_O1_pre = 0;
	end

	if(mem_epoch_seq > 1 && counter_seq > 4)
	begin
		addr_O0_pre = (counter_seq - 5) + output_image_size * output_image_size * epoch_counter_seq/2;
		addr_O1_pre = (counter_seq - 5) + output_image_size * output_image_size * (epoch_counter_seq-1)/2;
		if(mac_16_seq < 0)
		begin
			out_data_pre = 0;
		end
		else
		begin
			out_data_pre = mac_16_seq;
		end

		if(epoch_counter_seq[0])
		begin
			din_O1_pre = out_data_pre;
		end
		else
		begin
			din_O0_pre = out_data_pre;
		end
	end
end
//ReLU

assign debug0 = image_comb[0][2][2];
endmodule
