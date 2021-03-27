`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2020 11:50:59 PM
// Design Name: 
// Module Name: dataMemory
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


module dataMemory(
    input logic clk,
    input logic reset,
    input logic writeEnableMem,
    input logic [3:0] readAddress1,
    input logic [3:0] readAddress2,
    input logic [3:0] writeAddress,
    input logic [7:0] writeData,
    output logic [7:0] readData1,
    output logic [7:0] readData2
    );
    logic [7:0] dataMemory [15:0];
    
    always@(posedge clk)
        if(reset)
            dataMemory[writeAddress] <= 8'b00000000;
        else if(writeEnableMem)
            dataMemory[writeAddress] <= writeData;
    assign readData1 = dataMemory[readAddress1];
    assign readData2 = dataMemory[readAddress2];
endmodule
