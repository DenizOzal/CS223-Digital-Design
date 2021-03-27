`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2020 01:54:00 PM
// Design Name: 
// Module Name: registerFile
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


module registerFile(
    input logic clk,
    input logic reset,
    input logic writeEnableReg,
    input logic [3:0] readAddress1,
    input logic [3:0] readAddress2,
    input logic [3:0] writeAddress,
    input logic [7:0] writeData,
    output logic [7:0] readData1,
    output logic [7:0] readData2
    );
    logic [7:0] registerFile [15:0];
    always@(posedge clk)
        if(reset)
            registerFile[writeAddress] <= 8'b00000000;
        else if(writeEnableReg)
            registerFile[writeAddress] <= writeData;
    assign readData1 = registerFile[readAddress1];
    assign readData2 = registerFile[readAddress2];
endmodule
