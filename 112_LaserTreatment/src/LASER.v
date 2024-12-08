`define minus_abs(a,b) ((a>b)? a-b:b-a)
`define is_in_circle(x, y, cnt) \
    (({1'b0,square[`minus_abs(x,x_points[cnt])]}+{1'b0,square[`minus_abs(y,y_points[cnt])]})<=16)
module LASER (
input CLK,
input RST,
input [3:0] X,
input [3:0] Y,
output reg [3:0] C1X,
output reg [3:0] C1Y,
output reg [3:0] C2X,
output reg [3:0] C2Y,
output reg DONE);

/*************************

    The question assumes a fixed area of 16x16 with 40 targets.
    Only two laser shots are allowed on this area,
    and the lasers have a circular shape with a radius of 4.
    
    Please find the positions of the centers of these two circles such that
    they cover the maximum number of targets.

*************************/
wire [7:0] square [15:0];
genvar k;
generate
for(k = 0;k < 16; k = k + 1)begin
     assign square[k] = k*k;
end
endgenerate

localparam LOAD = 3'd0,
            CALCULATE_1 = 3'd1,
            CALCULATE_2 = 3'd2,
            CHECK = 3'd3,
            FINISH = 3'd4;

reg [3:0] x_points [39:0];
reg [3:0] y_points [39:0];

reg [3:0] x_counter, y_counter, max_x1_idx, max_y1_idx, max_x2_idx, max_y2_idx;
reg [5:0] counter;
reg [2:0] earlyStop_counter;

reg [3:0] curr_state, next_state;

reg [5:0] max, pre_max, max_c1, max_c2;
reg [5:0] total_num, c2_num;

wire [5:0] num_in_circle, num_in_c2_notin_c1;

assign num_in_circle = (counter == 40)? 6'd0 : (`is_in_circle(x_counter, y_counter, counter) + `is_in_circle(x_counter, y_counter, counter + 1) + `is_in_circle(x_counter, y_counter, counter + 2) + `is_in_circle(x_counter, y_counter, counter + 3));
assign num_in_c2_notin_c1 = (counter == 40)? 6'd0 : ((`is_in_circle(x_counter, y_counter, counter) && (~`is_in_circle(max_x1_idx, max_y1_idx, counter))) + (`is_in_circle(x_counter, y_counter, counter+1) && (~`is_in_circle(max_x1_idx, max_y1_idx, counter+1))) + (`is_in_circle(x_counter, y_counter, counter+2) && (~`is_in_circle(max_x1_idx, max_y1_idx, counter+2))) + (`is_in_circle(x_counter, y_counter, counter+3) && (~`is_in_circle(max_x1_idx, max_y1_idx, counter+3))));


integer i;
always @(posedge CLK, posedge RST) begin
    if(RST) begin
        for(i=0; i<40; i=i+1)begin
            x_points[i] <= 4'd0;
            y_points[i] <= 4'd0;
        end
        total_num <= 6'd0;
        c2_num <= 6'd0;
        max <= 6'd0;
        max_c1 <= 6'd0;
        max_c2 <= 6'd0;
        pre_max <= 6'd0;
        DONE <= 1'b0;
        max_x1_idx <= 4'd0;
        max_y1_idx <= 4'd0;
        max_x2_idx <= 4'd0;
        max_y2_idx <= 4'd0;
    end
    else begin
        case(curr_state)
            LOAD: begin
                x_points[counter] <= X;
                y_points[counter] <= Y;
            end
            CALCULATE_1: begin
                total_num <= total_num + num_in_circle;
                if(counter == 6'd40) begin
                    total_num <= 0;
                    if(max_c1 <= total_num) begin
                        max_c1 <= total_num;
                        max_x1_idx <= x_counter;
                        max_y1_idx <= y_counter;
                    end
                    else max_c1 <= max_c1;
                end
            end
            CALCULATE_2: begin
                if(counter == 0)begin
                    total_num <= max_c1 + num_in_c2_notin_c1;
                    c2_num <= c2_num + num_in_circle;
                end
                else if(counter == 6'd40) begin
                    total_num <= 0;
                    c2_num <= 0;
                    if(max <= total_num) begin
                        max <= total_num;
                        max_c2 <= c2_num;
                        max_x2_idx <= x_counter;
                        max_y2_idx <= y_counter;
                    end
                    else max <= max;
                end
                else begin
                    total_num <= total_num + num_in_c2_notin_c1;
                    c2_num <= c2_num + num_in_circle;
                end
            end
            CHECK: begin
                max_x1_idx <= max_x2_idx;
                max_y1_idx <= max_y2_idx;
                max_c1 <= max_c2;
                max_c2 <= 0;
                C1X <= max_x1_idx;
                C1Y <= max_y1_idx;
                C2X <= max_x2_idx;
                C2Y <= max_y2_idx;
                if(max > pre_max)begin
                    pre_max <= max;
                end
                else pre_max <= pre_max;
                if(earlyStop_counter == 3'd3) DONE <= 1'b1;
                else DONE <= 1'b0;
            end
            default: begin
                max <= 6'd0;
                max_x1_idx <= 6'd0;
                max_y1_idx <= 6'd0;
                max_c1 <= 6'd0;
                max_c2 <= 6'd0;
                pre_max <= 6'd0;
                DONE <= 1'b0;
            end
        endcase
    end
end

always @(posedge CLK, posedge RST) begin
    if(RST) begin
        counter <= 6'd0;
        x_counter <= 4'd0;
        y_counter <= 4'd0;
        earlyStop_counter <= 3'd0;
    end
    else begin
        case(curr_state)
            LOAD: begin
                if(counter == 6'd39) counter <= 6'd0;
                else counter <= counter + 6'd1;
            end
            CALCULATE_1: begin
                if(x_counter == 4'd15 && y_counter == 4'd15 && counter == 6'd40)begin
                    x_counter <= 4'd0;
                    y_counter <= 4'd0;
                    counter <= 6'd0;
                end
                else if(x_counter == 4'd15 && counter == 6'd40)begin
                    counter <= 6'd0; 
                    x_counter <= 4'd0;
                    y_counter <= y_counter + 4'd1;
                end
                else if(counter == 6'd40) begin
                    counter <= 6'd0;
                    x_counter <= x_counter + 4'd1;
                end
                else counter <= counter + 6'd4;
            end
            CALCULATE_2: begin
                if(x_counter == 4'd15 && y_counter == 4'd15 && counter == 6'd40)begin
                    x_counter <= 4'd0;
                    y_counter <= 4'd0;
                    counter <= 6'd0;                  
                end
                else if(x_counter == 4'd15 && counter == 6'd40)begin
                    counter <= 6'd0; 
                    x_counter <= 4'd0;
                    y_counter <= y_counter + 4'd1;
                end
                else if(counter == 6'd40) begin
                    counter <= 6'd0;
                    x_counter <= x_counter + 4'd1;
                end
                else counter <= counter + 6'd4;
                
            end
            CHECK: begin
                if(max > pre_max)begin
                    earlyStop_counter <= 0; 
                end
                else earlyStop_counter <= earlyStop_counter + 3'd1;
            end
            default: begin
                counter <= 6'd0;
                x_counter <= 4'd0;
                y_counter <= 4'd0;
                earlyStop_counter <= 0; 
            end
        endcase
    end
end

always @(*) begin
    case(curr_state)
        LOAD: begin
            if(counter == 8'd39) next_state <= CALCULATE_1;
            else next_state <= LOAD;
        end
        CALCULATE_1: begin
            if(x_counter == 4'd15 && y_counter == 4'd15 && counter == 6'd40)begin
                next_state <= CALCULATE_2;
            end
            else next_state <= CALCULATE_1;
        end
        CALCULATE_2: begin
            if(x_counter == 4'd15 && y_counter == 4'd15 && counter == 6'd40)begin
                next_state <= CHECK;
            end
            else next_state <= CALCULATE_2;
        end
        CHECK: begin
            if(earlyStop_counter == 3'd3) next_state <= FINISH;
            else next_state <= CALCULATE_2;
        end
        default: begin
            next_state <= LOAD;
        end
    endcase
end

always @(posedge CLK, posedge RST) begin
    if(RST) curr_state <= LOAD;
    else curr_state <= next_state;
end

endmodule


