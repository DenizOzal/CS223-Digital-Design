`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2020 03:31:34 PM
// Design Name: 
// Module Name: memory
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


module memory(
    input logic clk,
    input logic [3:0] writeAddress,
    input logic [7:0] writeData,
    input logic writeEnable,
    input logic [3:0] readAddress1,
    input logic [3:0] readAddress2,
    output logic [7:0] readData1,
    output logic [7:0] readData2
    );
    logic [7:0] memory [15:0];
    
    always @(posedge clk)
        if(writeEnable)
            memory[writeAddress] <= writeData;
    assign readData1 = memory[readAddress1];
    assign readData2 = memory[readAddress2];        
endmodule
