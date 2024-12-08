module JAM (
input CLK,
input RST,
output [2:0] W,
output [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

/*****
    The application of the Job Assignment Machine (JAM) is quite extensive.  
    When there are n tasks to be completed, and n workers have varying costs for each task,
    determining how to assign each worker to a task in order to minimize the overall cost
    is the primary objective of the JAM.  

    The most straightforward approach to solving the job assignment problem is to
    calculate the cost for all possible combinations and then
    identify the combination with the lowest cost.  

    In this question, input data regarding worker task costs will be provided,
    and participants are required to enumerate all possible pairings using an exhaustive search method. 

    Subsequently, they should find the lowest cost and determine the number of combinations
    that achieve this lowest cost.
*****/
    integer i;
    localparam  LOAD_CAL_NEXTSEQ = 3'd0,
                    COMPARE_MIN = 3'd1,
                    SWAP = 3'd3,
                    FINISH = 3'd4;
    reg [2:0] curr_state, next_state;
    reg [4:0] counter, change_idx, change_idx2, counter_seq;

    reg [2:0] job_sequence [7:0];
    reg [2:0] step2_min;
    reg [10:0] tempCost;
    reg step2;
    wire load_finish, cal_fin;
    
    assign W = counter;
    assign J = (counter < 8)? job_sequence[counter] : 0;

    always @(posedge CLK, posedge RST) begin
        if(RST) begin
            tempCost <= 0;
            Valid <= 1'b0;
            step2 <= 1'b0;
            change_idx <= 4'b0;
            change_idx2 <= 4'b0;
            MinCost <= 10'd1023;
            step2_min <= 0;
            MatchCount <= 0;
            for(i=0;i<9;i=i+1) begin
                job_sequence[i] <= i;
            end
        end 
        else begin
            case(curr_state)
                LOAD_CAL_NEXTSEQ: begin
                    if(counter > 0 & counter < 9) tempCost <= tempCost + Cost;
                    
                    if(cal_fin & counter == 8)begin
                        job_sequence[change_idx] <= job_sequence[change_idx2];
                        job_sequence[change_idx2] <= job_sequence[change_idx];
                    end
                    else if(~step2 & (job_sequence[counter_seq] < job_sequence[counter_seq+1]))begin //counter: from 6 to 0
                        change_idx <= counter_seq;
                        step2 <= 1'b1;
                        step2_min <= 7;
                    end
                    else begin
                        if(job_sequence[change_idx] < job_sequence[counter_seq] & job_sequence[counter_seq] <= step2_min)begin
                            change_idx2 <= counter_seq;
                            step2_min <= job_sequence[counter_seq];
                        end
                    end
                end
                COMPARE_MIN: begin
                    // if(tempCost < MinCost) begin
                    //     MinCost <= tempCost;
                    //     MatchCount <= 1;
                    // end
                    // else if(tempCost == MinCost) begin
                    //     MatchCount <= MatchCount + 1;
                    // end
                    // tempCost <= 0;
                    // step2 <= 0;
                    // job_sequence[change_idx] <= job_sequence[change_idx2];
                    // job_sequence[change_idx2] <= job_sequence[change_idx];
                end
                SWAP: begin
                    if(tempCost < MinCost) begin
                        MinCost <= tempCost;
                        MatchCount <= 1;
                    end
                    else if(tempCost == MinCost) begin
                        MatchCount <= MatchCount + 1;
                    end
                    tempCost <= 0;
                    step2 <= 0;
                    case (change_idx)
                        5:begin
                            job_sequence[6] <= job_sequence[7];
                            job_sequence[7] <= job_sequence[6];
                        end
                        4:begin
                            job_sequence[5] <= job_sequence[7];
                            job_sequence[7] <= job_sequence[5];
                        end
                        3:begin
                            job_sequence[4] <= job_sequence[7];
                            job_sequence[7] <= job_sequence[4];
                            job_sequence[5] <= job_sequence[6];
                            job_sequence[6] <= job_sequence[5];
                        end
                        2:begin
                            job_sequence[3] <= job_sequence[7];
                            job_sequence[7] <= job_sequence[3];
                            job_sequence[4] <= job_sequence[6];
                            job_sequence[6] <= job_sequence[4];
                        end
                        1:begin
                            job_sequence[2] <= job_sequence[7];
                            job_sequence[7] <= job_sequence[2];
                            job_sequence[3] <= job_sequence[6];
                            job_sequence[6] <= job_sequence[3];
                            job_sequence[4] <= job_sequence[5];
                            job_sequence[5] <= job_sequence[4];
                        end
                        0:begin
                            job_sequence[1] <= job_sequence[7];
                            job_sequence[7] <= job_sequence[1];
                            job_sequence[2] <= job_sequence[6];
                            job_sequence[6] <= job_sequence[2];
                            job_sequence[3] <= job_sequence[5];
                            job_sequence[5] <= job_sequence[3];
                        end
                    endcase
                end
                FINISH: begin
                    Valid <= 1'b1;
                end
            endcase
        end
    end
    assign load_finish = (counter == 8)? 1'b1 : 1'b0;
    assign cal_fin = (step2 & counter_seq == 7)? 1'b1 : 1'b0;
    always @(posedge CLK, posedge RST) begin
        if(RST) begin
            counter <= 0;
            counter_seq <= 6;
        end
        else begin
            case(curr_state)
                LOAD_CAL_NEXTSEQ: begin
                    if(counter == 8)begin
                        counter <= 0;
                        // load_finish <= 1;
                    end
                    else if(~load_finish) counter <= counter + 1;
                    // if(counter_seq == 0 & (job_sequence[counter_seq] > job_sequence[counter_seq+1])) begin
                    //     counter_seq <= 0;
                    // end
                    // if(step2 & counter_seq == 7) begin
                    //     // counter_seq <= 6;
                    //     // cal_fin <= 1;
                    // end
                    if(~cal_fin & ~step2 & ~(job_sequence[counter_seq] < job_sequence[counter_seq+1]))begin
                        counter_seq <= counter_seq - 1;
                    end
                    else if(~cal_fin) counter_seq <= counter_seq + 1;
                end
                COMPARE_MIN: begin
                    // counter <= counter;
                    // counter_seq <= 6;
                end
                SWAP: begin
                    // cal_fin <= 0;
                    // load_finish <= 0;
                    // if(((4'd8 - change_idx) >> 1) == counter) counter <= 0;
                    // else counter <= counter + 1;
                    counter_seq <= 6;
                end
                FINISH: begin
                    counter <= 0;
                end
                default: begin
                    counter <= 0;
                end
            endcase
        end
    end
    always @(*) begin
        case(curr_state)
            LOAD_CAL_NEXTSEQ: begin
                if(counter_seq == 0 & (job_sequence[counter_seq] > job_sequence[counter_seq+1])) begin
                    next_state = FINISH;
                end
                else if(cal_fin & load_finish) next_state = SWAP;
                else next_state = LOAD_CAL_NEXTSEQ;
            end
            COMPARE_MIN: begin
                next_state = SWAP;
            end
            SWAP: begin
                // if(((4'd8 - change_idx) >> 1) == counter) next_state = LOAD_CAL_NEXTSEQ;
                // else next_state = SWAP;
                next_state = LOAD_CAL_NEXTSEQ;
            end
            FINISH: begin
                next_state = FINISH;
            end
            default: begin
                next_state = LOAD_CAL_NEXTSEQ;
            end
        endcase
    end
    always @(posedge CLK, posedge RST) begin
        if(RST)begin
            curr_state <= LOAD_CAL_NEXTSEQ;
        end
        else begin
            curr_state <= next_state;
        end
    end


endmodule


