`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2020 22:17:52
// Design Name: 
// Module Name: reduceSum
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module reduceSum(input logic clk,
    input logic reset,
    input logic calculateSum,
    input logic [7:0] readData2,
    output logic [3:0] readAddress2,
    output logic [15:0] sum);
    
    
    
    typedef enum logic [1:0] {S0,S1,S2} statetype;
    statetype [1:0] state, nextstate;
    
    logic [4:0] cnt;
    logic [4:0] nextCnt;
    logic [15:0] curSum;
    logic [15:0] nextSum;
    


        always_ff @ (posedge clk)
        if(reset) begin
            state <= S0;
            cnt <= 0;
            curSum <= 0;
            end
            else begin
            state <= nextstate;
            cnt <= nextCnt;
            curSum <= nextSum;
            end
            always_comb
            case(state)
                S0: begin
                if(calculateSum)
                nextstate = S1;
                else
                nextstate = S0;
                nextCnt = cnt;
                nextSum = curSum;
                end
        
                S1: begin
        
            nextCnt = 0;
            nextSum = 0;
            nextstate = S2;
            end
            S2: begin
            if(cnt <= 15) begin
            nextSum = curSum + readData2;
            
            nextCnt = cnt + 1;
            end
       default: nextstate = S0;
       endcase
    
        assign sum = curSum;
        assign readAddress2 = cnt;
endmodule