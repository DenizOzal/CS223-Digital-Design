`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2020 07:28:36 PM
// Design Name: 
// Module Name: mux2to1
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


module mux2to1 #(parameter WIDTH = 8)(
    input logic [WIDTH - 1:0] in0,
    input logic [WIDTH - 1:0] in1,
    input logic sel,
    output logic[WIDTH - 1:0] out
    );
    assign out = sel ? in1 : in0;
endmodule
