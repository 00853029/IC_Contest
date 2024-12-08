module JAM_tf (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
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
    localparam  LOAD = 3'd0,
                    COMPARE_MIN = 3'd1,
                    CAL_NEXTSEQ = 3'd2,
                    SWAP = 3'd3,
                    FINISH = 3'd4;
    reg [2:0] curr_state, next_state;
    reg [4:0] counter, change_idx, change_idx2;

    reg [2:0] job_sequence [7:0];
    reg [2:0] step2_min;
    reg [10:0] tempCost;
    reg step2;
    

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
                LOAD: begin
                    if(counter > 1) tempCost <= tempCost + Cost;
                    if(counter < 8) begin
                        W <= counter;
                        J <= job_sequence[counter];
                    end
                    step2 <= 1'b0;
                end
                COMPARE_MIN: begin
                    if(tempCost < MinCost) begin
                        MinCost <= tempCost;
                        MatchCount <= 1;
                    end
                    else if(tempCost == MinCost) begin
                        MatchCount <= MatchCount + 1;
                    end
                end
                CAL_NEXTSEQ: begin
                    if(~step2 & (job_sequence[counter] < job_sequence[counter+1]))begin //counter: from 6 to 0
                        change_idx <= counter;
                        step2 <= 1'b1;
                        step2_min <= 7;
                    end
                    else begin
                        if(job_sequence[change_idx] < job_sequence[counter] & job_sequence[counter] <= step2_min)begin
                            change_idx2 <= counter;
                            step2_min <= job_sequence[counter];
                        end
                    end
                end
                SWAP: begin
                    if(counter == 0)begin
                        tempCost <= 0;
                        job_sequence[change_idx] <= job_sequence[change_idx2];
                        job_sequence[change_idx2] <= job_sequence[change_idx];
                    end
                    else begin
                        job_sequence[change_idx+counter] <= job_sequence[8-counter];
                        job_sequence[8-counter] <= job_sequence[change_idx+counter];
                    end
                end
                FINISH: begin
                    Valid <= 1'b1;
                end
            endcase
        end
    end
    always @(posedge CLK, posedge RST) begin
        if(RST) begin
            counter <= 0;
        end
        else begin
            case(curr_state)
                LOAD: begin
                    if(counter == 9)begin
                        counter <= 6;
                    end
                    else counter <= counter + 1;
                end
                COMPARE_MIN: begin
                    counter <= counter;
                end
                CAL_NEXTSEQ: begin
                    if(counter == 0 & (job_sequence[counter] > job_sequence[counter+1])) begin
                        counter <= 0;
                    end
                    if(step2 & counter == 7) counter <= 0;
                    else if(~step2 & ~(job_sequence[counter] < job_sequence[counter+1]))begin
                        counter <= counter - 1;
                    end
                    else counter <= counter + 1;

                end
                SWAP: begin
                    if(((4'd8 - change_idx) >> 1) == counter) counter <= 0;
                    else counter <= counter + 1;
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
            LOAD: begin
                if(counter == 9) begin
                    next_state = COMPARE_MIN;
                end
                else next_state = LOAD;
            end
            COMPARE_MIN: begin
                next_state = CAL_NEXTSEQ;
            end
            CAL_NEXTSEQ: begin
                if(counter == 0 & (job_sequence[counter] > job_sequence[counter+1])) begin
                    next_state = FINISH;
                end
                else if(step2 & counter == 7) next_state = SWAP;
                else next_state = CAL_NEXTSEQ;
            end
            SWAP: begin
                if(((4'd8 - change_idx) >> 1) == counter) next_state = LOAD;
                else next_state = SWAP;
            end
            FINISH: begin
                next_state = FINISH;
            end
            default: begin
                next_state = LOAD;
            end
        endcase
    end
    always @(posedge CLK, posedge RST) begin
        if(RST)begin
            curr_state <= LOAD;
        end
        else begin
            curr_state <= next_state;
        end
    end


endmodule


