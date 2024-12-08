
`timescale 1ns/10ps

module  CONV(
	input		clk,
	input		reset,
	output	reg	busy,	
	input		ready,	
			
	output	reg [11:0]	iaddr,
	input	[19:0]	idata,	
	
	output	reg 	cwr,
	output	reg [11:0]	caddr_wr,
	output	reg [19:0]	cdata_wr,
	
	output	 	crd,
	output	reg [11:0]	caddr_rd,
	input	 [19:0]	cdata_rd,
	
	output	reg [2:0]	csel
	);

integer i,j;
localparam IDLE = 0, 
			LOAD = 1,
			CONV = 2,
			MAXPOOL_R = 3,
			MAXPOOL_W = 4,
			FINISH = 7;

localparam signed kernal0_00 = 20'h0A89E,
			kernal0_01 = 20'h092D5,
			kernal0_02 = 20'h06D43,
			kernal0_10 = 20'h01004,
			kernal0_11 = 20'hF8F71,
			kernal0_12 = 20'hF6E54,
			kernal0_20 = 20'hFA6D7,
			kernal0_21 = 20'hFC834,
			kernal0_22 = 20'hFAC19,

			kernal1_00 = 20'hFDB55,
			kernal1_01 = 20'h02992,
			kernal1_02 = 20'hFC994,
			kernal1_10 = 20'h050FD,
			kernal1_11 = 20'h02F20,
			kernal1_12 = 20'h0202D,
			kernal1_20 = 20'h03BD7,
			kernal1_21 = 20'hFD369,
			kernal1_22 = 20'h05E68,

			bias_0 = 20'h01310,
			bias_1 = 20'hF7295;





reg [2:0] current_state, next_state;
reg [5:0] counter_x, counter_y, counter;
reg counter_layer;
reg signed [19:0] conv_reg [2:0][2:0];

reg signed [39:0] partial_sum;



assign crd = (current_state == MAXPOOL_R)? 1'b1 : 1'b0;

always @(*)begin
	if(current_state == CONV)begin
		case(counter)
			11: csel = 3'b001;
			21: csel = 3'b010;
			default: csel = 3'b0;
		endcase
	end
	else if(current_state == MAXPOOL_R)begin
		csel = (counter_layer == 0) ? 3'b001 : 3'b010;
	end
	else if(current_state == MAXPOOL_W)begin
		case(counter)
			1: csel = (counter_layer == 0) ? 3'b011 : 3'b100;
			2: csel = 3'b101;
			default: csel = 3'b0;
		endcase
	end
	else csel = 3'b0;
end

always @(*) begin
	if(current_state == CONV)begin
		case(counter)
			11: cwr = 1'b1;
			21: cwr = 1'b1;
			default: cwr = 1'b0;
		endcase
	end
	else if(current_state == MAXPOOL_W)begin
		case(counter)
			1: cwr = 1'b1;
			2: cwr = 1'b1;
			default: cwr = 1'b0;
		endcase
	end
	else cwr = 1'b0;
end


always @(posedge clk, posedge reset) begin
	if(reset)begin
		busy <= 0;
		iaddr <= 0;

		cdata_wr <= 0;
		caddr_wr <= 0;
		caddr_rd <= 0;
	end
	else begin
		case (current_state)
			IDLE: begin
				busy <= 0;
				if(ready)	busy <= 1;
			end
			LOAD: begin
				if((counter_x == 0 & counter_y == 0) | (counter_x == 0 & counter_y == 63))begin
					case(counter)
						0:	iaddr <= iaddr + 1;
						1:	iaddr <= iaddr + 64 - 1;
						2:  iaddr <= iaddr + 1;
						3:	iaddr <= iaddr - 64 - 1;
					endcase
				end
				else if(counter_x != 0 & counter_x != 63 &counter_y == 0 | (counter_x != 0 & counter_x != 63 & counter_y == 63))begin
					case(counter)
						0:	iaddr <= iaddr + 1;
						1:	iaddr <= iaddr + 1;
						2:  iaddr <= iaddr + 64 - 2;
						3:	iaddr <= iaddr + 1;
						4:  iaddr <= iaddr + 1;
						5:	iaddr <= iaddr - 64 - 1;
					endcase
				end
				else if(counter_x == 63 & counter_y == 0)begin
					case(counter)
						0:	iaddr <= iaddr + 1;
						1:	iaddr <= iaddr + 64 - 1;
						2:  iaddr <= iaddr + 1;
						3:	iaddr <= iaddr - 64 - 64 + 1;
					endcase
				end
				else if(counter_x == 0 & counter_y != 0 & counter_y != 63)begin
					case(counter)
						0:	iaddr <= iaddr + 1;
						1:	iaddr <= iaddr + 64 - 1;
						2:	iaddr <= iaddr + 1;
						3:	iaddr <= iaddr + 64 - 1;
						4:	iaddr <= iaddr + 1;
						5:  iaddr <= iaddr - 64 - 64 - 1;
					endcase
				end
				else if(counter_x == 63 & counter_y != 0 & counter_y != 63)begin
					case(counter)
						0:	iaddr <= iaddr + 1;
						1:	iaddr <= iaddr + 64 - 1;
						2:	iaddr <= iaddr + 1;
						3:	iaddr <= iaddr + 64 - 1;
						4:	iaddr <= iaddr + 1;
						5:  iaddr <= iaddr - 64 - 64 + 1;
					endcase
				end
				else if(counter_x != 0 & counter_x != 63 & counter_y != 0 & counter_y != 63)begin
					case(counter)
						0:	iaddr <= iaddr + 1;
						1:	iaddr <= iaddr + 1;
						2:	iaddr <= iaddr + 64 - 2;
						3:	iaddr <= iaddr + 1;
						4:	iaddr <= iaddr + 1;
						5:	iaddr <= iaddr + 64 - 2;
						6:	iaddr <= iaddr + 1;
						7:	iaddr <= iaddr + 1;
						8:	iaddr <= iaddr - 64 - 64 - 1;
					endcase
				end
				else if(counter_x == 63 & counter_y == 63)begin
					case (counter)
						0:	iaddr <= iaddr + 1;
						1:	iaddr <= iaddr + 64 - 1;
						2:	iaddr <= iaddr + 1;
						3:	iaddr <= 0;
					endcase	
				end
			end
			CONV: begin
				if(counter_x == 0 & counter_y == 0 & counter == 21) caddr_wr <= 0;
				else if(counter == 21)	caddr_wr <= caddr_wr + 1;

				if(counter == 10 || counter == 20)begin
					if(partial_sum[39] == 1'b1) begin
						cdata_wr <= 0;
					end
					else begin
						if(partial_sum[35] == 1'b1) cdata_wr <= {1'b0, 19'b0};
						else if(partial_sum[15] == 1'b1)	cdata_wr <= partial_sum[39:16] + 1'b1;
						else cdata_wr <= partial_sum[35:16];
					end
				end
				case (counter)
					0: partial_sum <= conv_reg[0][0] * kernal0_00;
					1: partial_sum <= partial_sum + conv_reg[0][1] * kernal0_01;
					2: partial_sum <= partial_sum + conv_reg[0][2] * kernal0_02;
					3: partial_sum <= partial_sum + conv_reg[1][0] * kernal0_10;
					4: partial_sum <= partial_sum + conv_reg[1][1] * kernal0_11;
					5: partial_sum <= partial_sum + conv_reg[1][2] * kernal0_12;
					6: partial_sum <= partial_sum + conv_reg[2][0] * kernal0_20;
					7: partial_sum <= partial_sum + conv_reg[2][1] * kernal0_21;
					8: partial_sum <= partial_sum + conv_reg[2][2] * kernal0_22;
					9: partial_sum <= partial_sum + $signed({bias_0, 16'b0});
					//
					10: partial_sum <= conv_reg[0][0] * kernal1_00;
					11: partial_sum <= partial_sum + conv_reg[0][1] * kernal1_01;
					12: partial_sum <= partial_sum + conv_reg[0][2] * kernal1_02;
					13: partial_sum <= partial_sum + conv_reg[1][0] * kernal1_10;
					14: partial_sum <= partial_sum + conv_reg[1][1] * kernal1_11;
					15: partial_sum <= partial_sum + conv_reg[1][2] * kernal1_12;
					16: partial_sum <= partial_sum + conv_reg[2][0] * kernal1_20;
					17: partial_sum <= partial_sum + conv_reg[2][1] * kernal1_21;
					18: partial_sum <= partial_sum + conv_reg[2][2] * kernal1_22;
					19: partial_sum <= partial_sum + $signed({bias_1, 16'b0});
				endcase
			end
		MAXPOOL_R: begin
			if(counter_x == 31 & counter_y == 31 & counter == 3) begin
				caddr_rd <= 0;
			end
			else begin
				case(counter)
					0: caddr_rd <= caddr_rd + 1;
					1: caddr_rd <= caddr_rd + 64 - 1;
					2: caddr_rd <= caddr_rd + 1;
					3: caddr_rd <= (counter_x == 31) ? (caddr_rd + 1) : (caddr_rd - 64 + 1);
				endcase
			end
		end
		MAXPOOL_W: begin	
			if(counter_x == 31 & counter_y == 31 & counter == 2) begin
				caddr_wr <= 0;
			end
			else if(counter == 1)begin	
				if(counter_layer == 0)begin
					caddr_wr <= caddr_wr << 1;
				end
				else begin
					caddr_wr <= (caddr_wr << 1) + 1;
				end
			end
			else if(counter == 2)begin	
				caddr_wr <= (caddr_wr >> 1) + 1;
			end
			else begin

				if(conv_reg[0][0] >= conv_reg[0][1] & conv_reg[0][0] >= conv_reg[0][2] & conv_reg[0][0] >= conv_reg[1][0])begin
					cdata_wr <= conv_reg[0][0];
				end
				else if(conv_reg[0][1] >= conv_reg[0][0] & conv_reg[0][1] >= conv_reg[0][2] & conv_reg[0][1] >= conv_reg[1][0])begin
					cdata_wr <= conv_reg[0][1];
				end
				else if(conv_reg[0][2] >= conv_reg[0][0] & conv_reg[0][2] >= conv_reg[0][1] & conv_reg[0][2] >= conv_reg[1][0])begin
					cdata_wr <= conv_reg[0][2];
				end
				else cdata_wr <= conv_reg[1][0];
			end
		end
		FINISH: busy <= 1'b0;
		endcase
	end
end

always @(posedge clk, posedge reset) begin
	if(reset)begin
		for(i=0;i<3;i=i+1)begin
			for(j=0;j<3;j=j+1)begin
				conv_reg[i][j] <= 0;
			end
		end
	end
	else begin
		if(current_state == LOAD) begin
			if(counter_x == 0 & counter_y == 0)begin
				case(counter)
					0:	begin
						conv_reg[0][0] <= 0;
						conv_reg[0][1] <= 0;
						conv_reg[0][2] <= 0;
						conv_reg[1][0] <= 0;
						conv_reg[2][0] <= 0;
						conv_reg[1][1] <= idata;
					end
					1:	begin
						conv_reg[1][2] <= idata;
					end	
					2:	begin
						conv_reg[2][1] <= idata;
					end  
					3:	begin
						conv_reg[2][2] <= idata;
					end	
				endcase
			end
			else if(counter_x != 0 & counter_x != 63 &counter_y == 0)begin
				case(counter)
					0:	begin
						conv_reg[0][0] <= 0;
						conv_reg[0][1] <= 0;
						conv_reg[0][2] <= 0;
						conv_reg[1][0] <= idata;
					end
					1:	begin
						conv_reg[1][1] <= idata;
					end	
					2:	begin
						conv_reg[1][2] <= idata;
					end  
					3:	begin
						conv_reg[2][0] <= idata;
					end	
					4:	begin
						conv_reg[2][1] <= idata;
					end	
					5:	begin
						conv_reg[2][2] <= idata;
					end	
				endcase
			end
			else if(counter_x == 63 & counter_y == 0)begin
				case (counter)
					0:	begin
						conv_reg[0][0] <= 0;
						conv_reg[0][1] <= 0;
						conv_reg[0][2] <= 0;
						conv_reg[1][2] <= 0;
						conv_reg[2][2] <= 0;
						conv_reg[1][0] <= idata;
					end
					1:	begin
						conv_reg[1][1] <= idata;
					end	
					2:	begin
						conv_reg[2][0] <= idata;
					end  
					3:	begin
						conv_reg[2][1] <= idata;
					end	
				endcase
			end
			else if(counter_x == 0 & counter_y != 0 & counter_y != 63)begin
				case (counter)
					0:	begin
						conv_reg[0][0] <= 0;
						conv_reg[1][0] <= 0;
						conv_reg[2][0] <= 0;
						conv_reg[0][1] <= idata;
					end
					1:	begin
						conv_reg[0][2] <= idata;
					end	
					2:	begin
						conv_reg[1][1] <= idata;
					end  
					3:	begin
						conv_reg[1][2] <= idata;
					end	
					4:	begin
						conv_reg[2][1] <= idata;
					end	
					5:	begin
						conv_reg[2][2] <= idata;
					end	
				endcase
			end
			else if(counter_x != 0 & counter_x != 63 & counter_y != 0 & counter_y != 63)begin
				case(counter)
					0:	begin
						conv_reg[0][0] <= idata;
					end
					1:	begin
						conv_reg[0][1] <= idata;
					end
					2:	begin
						conv_reg[0][2] <= idata;
					end
					3:	begin
						conv_reg[1][0] <= idata;
					end
					4:	begin
						conv_reg[1][1] <= idata;
					end
					5:	begin
						conv_reg[1][2] <= idata;
					end
					6:	begin
						conv_reg[2][0] <= idata;
					end
					7:	begin
						conv_reg[2][1] <= idata;
					end
					8:	begin
						conv_reg[2][2] <= idata;
					end
				endcase
			end
			else if(counter_x == 63 & counter_y != 0 & counter_y != 63)begin
				case(counter)
					0:	begin
						conv_reg[0][2] <= 0;
						conv_reg[1][2] <= 0;
						conv_reg[2][2] <= 0;
						conv_reg[0][0] <= idata;
					end
					1:	begin
						conv_reg[0][1] <= idata;
					end	
					2:	begin
						conv_reg[1][0] <= idata;
					end  
					3:	begin
						conv_reg[1][1] <= idata;
					end	
					4:	begin
						conv_reg[2][0] <= idata;
					end	
					5:	begin
						conv_reg[2][1] <= idata;
					end	
				endcase
			end
			else if(counter_x == 0 & counter_y == 63)begin
				case(counter)
					0:	begin
						conv_reg[0][0] <= 0;
						conv_reg[1][0] <= 0;
						conv_reg[2][0] <= 0;
						conv_reg[2][1] <= 0;
						conv_reg[2][2] <= 0;
						conv_reg[0][1] <= idata;
					end
					1:	begin
						conv_reg[0][2] <= idata;
					end	
					2:	begin
						conv_reg[1][1] <= idata;
					end  
					3:	begin
						conv_reg[1][2] <= idata;
					end	
				endcase
			end
			else if(counter_x != 0 & counter_x != 63 & counter_y == 63)begin
				case (counter)
					0:	begin
						conv_reg[2][0] <= 0;
						conv_reg[2][1] <= 0;
						conv_reg[2][2] <= 0;
						conv_reg[0][0] <= idata;
					end
					1:	begin
						conv_reg[0][1] <= idata;
					end	
					2:	begin
						conv_reg[0][2] <= idata;
					end  
					3:	begin
						conv_reg[1][0] <= idata;
					end	
					4:	begin
						conv_reg[1][1] <= idata;
					end	
					5:	begin
						conv_reg[1][2] <= idata;
					end	
				endcase
			end
			else if(counter_x == 63 & counter_y == 63)begin
				case(counter)
					0:	begin
						conv_reg[0][2] <= 0;
						conv_reg[1][2] <= 0;
						conv_reg[2][0] <= 0;
						conv_reg[2][1] <= 0;
						conv_reg[2][2] <= 0;
						conv_reg[0][0] <= idata;
					end
					1:	begin
						conv_reg[0][1] <= idata;
					end	
					2:	begin
						conv_reg[1][0] <= idata;
					end  
					3:	begin
						conv_reg[1][1] <= idata;
					end	
				endcase
			end
		end
		else if(current_state == MAXPOOL_R)begin
			case(counter)
				0: conv_reg[0][0] <= cdata_rd;
				1: conv_reg[0][1] <= cdata_rd;
				2: conv_reg[0][2] <= cdata_rd;
				3: conv_reg[1][0] <= cdata_rd;

			endcase
		end
	end
end

always @(posedge clk, posedge reset) begin
	if(reset)begin
		counter <= 0;
		counter_x <= 0;
		counter_y <= 0;
		counter_layer <= 0;
	end
	else begin
		case(current_state)
			IDLE: begin
				counter <= 0;
				counter_x <= 0;
				counter_y <= 0;
			end
			LOAD: begin
				if(counter_x == 63 & counter_y == 63)begin
					if(counter == 3)begin
						counter_x <= 0;
						counter_y <= 0;
						counter <= 0;
					end
					else counter <= counter + 1;
				end
				else if((counter_x == 0 & counter_y == 0) | (counter_x == 0 & counter_y == 63))begin
					if(counter == 3)begin
						counter_x <= counter_x + 1;
						counter <= 0;
					end
					else counter <= counter + 1;
				end
				else if(counter_x == 63 & counter_y == 0)begin
					if(counter == 3)begin
						counter_x <= 0;
						counter_y <= counter_y + 1;
						counter <= 0;
					end
					else counter <= counter + 1;
				end
				else if(counter_y == 0 | counter_x == 0 | counter_y == 63)begin
					if(counter == 5)begin
						counter_x <= counter_x + 1;
						counter <= 0;
					end
					else counter <= counter + 1;
				end
				else if(counter_x == 63)begin
					if(counter == 5)begin
						counter_x <= 0;
						counter_y <= counter_y + 1;
						counter <= 0;
					end
					else counter <= counter + 1;
				end
				else begin
					if(counter == 8)begin
						counter <= 0;
						counter_x <= counter_x + 1;
					end
					else counter <= counter + 1;
				end
			end
			CONV: begin
				if(counter == 21)	counter <= 0;
				else counter <= counter + 1;
			end
			MAXPOOL_R: begin
				if(counter == 3) counter <= 0;
				else counter <= counter + 1;
			end
			MAXPOOL_W: begin
				if(counter_x == 31 & counter_y == 31 & counter == 2)begin
					counter_x <= 0;
					counter_y <= 0;
					counter <= 0;
					counter_layer <= counter_layer + 1;
				end
				else if(counter_x == 31 & counter == 2)begin
					counter_x <= 0;
					counter_y <= counter_y + 1;
					counter <= 0;
				end
				else if(counter == 2)begin
					counter <= 0;
					counter_x <= counter_x + 1;
				end
				else counter <= counter + 1;
			end
		endcase
	end
end

always @(*) begin
	case (current_state)
		IDLE: begin
			if(ready) next_state = LOAD;
			else next_state = IDLE;
		end
		LOAD: begin
			if(counter_x == 63 & counter_y == 63 & counter == 3)	next_state = CONV;
			else if(((counter_x == 0 & counter_y == 0) | (counter_x == 0 & counter_y == 63)) & (counter == 3))	next_state = CONV;
			else if(counter_x == 63 & counter_y == 0 & counter == 3)	next_state = CONV;
			else if((counter_y == 0 | counter_x == 0 | counter_y == 63) & (counter == 5))	next_state = CONV;
			else if(counter_x == 63 & counter == 5)	next_state = CONV;
			else if(counter == 8) next_state = CONV;
			else next_state = LOAD;
		end
		CONV: begin
			if(counter_x == 0 & counter_y == 0 & counter == 21)next_state = MAXPOOL_R;
			else if(counter == 21) next_state = LOAD;
			else next_state = CONV;

		end
		MAXPOOL_R: begin
			if(counter == 3)begin
				next_state = MAXPOOL_W;
			end
			else next_state = MAXPOOL_R;
		end
		MAXPOOL_W: begin
			if(counter_layer == 1 & counter == 2 & counter_x == 31 & counter_y == 31)begin
				next_state = FINISH;
			end
			else if(counter == 2) next_state = MAXPOOL_R;
			else next_state = MAXPOOL_W;
		end
		FINISH: begin
			next_state = FINISH;
		end
		default: begin
			next_state = IDLE;
		end
	endcase
end

always @(posedge clk, posedge reset) begin
	if(reset)	current_state <= IDLE;
	else current_state <= next_state;
end

endmodule




