`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2020 08:50:32 PM
// Design Name: 
// Module Name: datapath
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


module datapath(
    input logic clk,
    input logic reset,
    input logic [15:0] instruction,
    input logic [4:0] currentInsAddr,
    input logic [3:0] wAddr_reg,
    input logic [7:0] wData_reg,
    input logic [7:0] rData1_reg,
    input logic [7:0] rData2_reg,
    input logic [3:0] wAddr_data,
    input logic [7:0] wData_data,
    input logic [7:0] rData1_data,
    output logic [7:0] rData2_mem,
    output logic [4:0] nextInsAddr
    );
    
endmodule
