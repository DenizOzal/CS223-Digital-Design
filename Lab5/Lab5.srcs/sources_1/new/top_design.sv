`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2020 11:06:53 PM
// Design Name: 
// Module Name: top_design
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


module top_design(
    input logic clk,
    input logic reset,
    input logic [3:0] writeAddress,
    input logic [7:0] writeData,
    input logic writeEnable,
    input logic calculateSum,
    input logic displayNext,
    input logic displayPrev,
    output logic [15:0] totalSum,
    output logic [6:0] seg,
    output logic dp,
    output logic [3:0] an
    );
    
    logic [7:0] readData1, readData2;
    logic [3:0] readAddress1, readAddress2;
    logic [15:0] totSum;
    logic pulse1, pulse2, pulse3, pulse4, pulse5;
    
    initial begin
        readData1 = 0;
        readAddress1 = 0;
        readData2 = 0;
        readAddress2 = 0;
    end
    
    debounce de1(clk, writeEnable, pulse1);
    debounce de2(clk, calculateSum, pulse2);
    debounce de3(clk, displayNext, pulse3);
    debounce de4(clk, displayPrev, pulse4);
    debounce de5(clk, reset, pulse5);
    
    always_ff@(posedge clk)
        if(pulse3)
            begin
            if (readAddress1 < 16)
                readAddress1 <= readAddress1 + 1;
            else
                readAddress1 <= 4'b0000;
            end
        else if (pulse4)
            begin
            if (readAddress1 > 0)
                readAddress1 <= readAddress1 - 1;
            else
                readAddress1 <= 15;
            end
        else
            readAddress1 <= readAddress1;
        
        memory memory(clk,writeAddress,writeData,pulse1,readAddress1,readAddress2,readData1,readData2);
        ReduceSum rs(clk,pulse5,pulse2,readData2,readAddress2,totSum);
        SevSeg_4digit se(clk, readAddress1, 0, readData1[7:4], readData1[3:0], seg, dp, an);
        
        assign totalSum = totSum;
endmodule
