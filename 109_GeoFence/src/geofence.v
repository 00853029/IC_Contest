

`define minus_abs(a,b) ((a>b)? a-b:b-a)
module geofence ( clk,reset,X,Y,R,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
input [10:0] R;
output valid;
output is_inside;

/***

    Please complete a Geofence system.
    This system utilizes six receivers to construct a virtual geofence on a plane.  
    Each receiver can measure the distance between itself and the object under test.  
    The Geofence system calculates based on this information whether
    the object under test is inside or outside the geofence.

    !!!!! Be sure to inquire about how to use DesignWare's DW_sqrt. !!!!!

***/
integer i;

reg [9:0] X_list [0:5];
reg [9:0] Y_list [0:5];
reg [10:0] R_list [0:5];

localparam LOAD = 3'd0,
            REORDER = 3'd1,
            CAL_TOTAL_AREA = 3'd2,
            CAL_HEXAGON_AREA = 3'd3,
            COMPARE = 3'd4;

reg [2:0] curr_state, next_state;
reg [3:0] counter, counter_p;
wire signed [20:0] cross_value;
assign cross_value = (X_list[counter_p]-X_list[0])*(Y_list[counter]-Y_list[0])-(X_list[counter]-X_list[0])*(Y_list[counter_p]-Y_list[0]);

reg [9:0] tri_edge;
reg [19:0] tri_area, total_area;
reg signed [20:0] hexagon_area;

wire [11:0] s_value;
assign s_value = (counter_p == 6) ? (tri_edge + R_list[5] + R_list[0])>>1 : (tri_edge + R_list[counter_p] + R_list[counter_p-1]) >> 1;

wire [19:0] sqrt_input;
wire [9:0] sqrt_output;
assign sqrt_input = (counter==0)? ((counter_p == 6) ? ((X_list[5]-X_list[0])*(X_list[5]-X_list[0])+(Y_list[5]-Y_list[0])*(Y_list[5]-Y_list[0])):
((X_list[counter_p]-X_list[counter_p-1])*(X_list[counter_p]-X_list[counter_p-1])+(Y_list[counter_p]-Y_list[counter_p-1])*(Y_list[counter_p]-Y_list[counter_p-1]))):
 (counter==1) ? 
 (s_value*`minus_abs(s_value,tri_edge)):
  ((counter_p == 6) ? `minus_abs(s_value,R_list[5])*`minus_abs(s_value,R_list[0]):
  `minus_abs(s_value,R_list[counter_p])*`minus_abs(s_value,R_list[counter_p-1]));

DW_sqrt #(20, 0) sqrt1 (.a(sqrt_input), .root(sqrt_output));

assign valid = (curr_state == COMPARE)? 1'b1 : 1'b0;
assign is_inside = (curr_state == COMPARE && hexagon_area >= total_area)? 1'b1 : 1'b0;

always @(posedge clk, posedge reset)begin
    if(reset)begin
        for(i=0;i<6;i=i+1)begin
            X_list[i] <= 0;
            Y_list[i] <= 0;
            R_list[i] <= 0;
        end
        total_area <= 0;
        tri_area <= 0;
        hexagon_area <= 0;
    end
    else begin
        case(curr_state)
            LOAD: begin
                X_list[counter] <= X;
                Y_list[counter] <= Y;
                R_list[counter] <= R;
            end
            REORDER: begin
                if( cross_value < 0) begin
                    X_list[counter] <= X_list[counter_p];
                    Y_list[counter] <= Y_list[counter_p];
                    R_list[counter] <= R_list[counter_p];

                    X_list[counter_p] <= X_list[counter];
                    Y_list[counter_p] <= Y_list[counter];
                    R_list[counter_p] <= R_list[counter];
                end
            end
            CAL_TOTAL_AREA: begin
                if(counter == 0) tri_edge <= sqrt_output;
                else if(counter == 1) tri_area <= sqrt_output;
                else if(counter == 2) tri_area <= tri_area * sqrt_output;
                else total_area <= total_area + tri_area;
            end
            CAL_HEXAGON_AREA: begin
                if(counter == 5)begin
                    hexagon_area <= hexagon_area + (X_list[counter]*Y_list[0]-X_list[0]*Y_list[counter]);
                end
                else if(counter == 6) hexagon_area <= hexagon_area >> 1;
                else begin
                    hexagon_area <= hexagon_area + (X_list[counter]*Y_list[counter+1]-X_list[counter+1]*Y_list[counter]);
                end
            end
            COMPARE: begin
                hexagon_area <= 0;
                total_area <= 0;
            end
        endcase
    end
end

always @(posedge clk, posedge reset)begin
    if(reset)begin
        counter <= 0;
        counter_p <= 1;
    end
    else begin
        case(curr_state)
            LOAD:begin
                if(counter == 5) counter <= 2;
                else counter <= counter + 1;
            end
            REORDER: begin
                if(counter == 5 & counter_p == counter) begin
                    counter <= 0;
                    counter_p <= 1;
                end
                else if(counter_p == counter) begin
                    counter <= counter + 1;
                    counter_p <= 1;
                end
                else counter_p <= counter_p + 1;
            end
            CAL_TOTAL_AREA: begin
                if(counter_p == 6 & counter == 3)begin
                    counter <= 0;
                    counter_p <= 0; 
                end
                else if(counter == 3)begin
                    counter <= 0;
                    counter_p <= counter_p + 1;
                end
                else counter <= counter + 1;
            end
            CAL_HEXAGON_AREA: begin
                if(counter == 6) counter <= 0;
                else counter <= counter + 1;
            end
            COMPARE: begin
                counter <= 0;
                counter_p <= 1;
            end
        endcase
    end
end

always @(*)begin
    case(curr_state)
        LOAD: begin
            if(counter == 5) next_state = REORDER;
            else next_state = LOAD;
        end
        REORDER: begin
            if(counter == 5 & counter_p == counter) next_state = CAL_TOTAL_AREA;
            else next_state = REORDER;
        end
        CAL_TOTAL_AREA: begin
            if(counter_p == 6 & counter == 3) next_state = CAL_HEXAGON_AREA;
            else next_state = CAL_TOTAL_AREA;
        end
        CAL_HEXAGON_AREA: begin
            if(counter == 6) next_state = COMPARE;
            else next_state = CAL_HEXAGON_AREA;
        end
        COMPARE: begin
            next_state = LOAD;
        end
        default: begin
            next_state = LOAD;
        end
    endcase
end

always @(posedge clk, posedge reset) begin
    if(reset) curr_state <= LOAD;
    else curr_state <= next_state;
end


endmodule

