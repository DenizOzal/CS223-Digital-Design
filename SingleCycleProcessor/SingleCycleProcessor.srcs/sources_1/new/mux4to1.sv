`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2020 07:17:30 PM
// Design Name: 
// Module Name: mux4to1
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


module mux4to1#(parameter WIDTH = 8)(
    input logic [WIDTH-1:0] in0,
    input logic [WIDTH-1:0] in1,
    input logic [WIDTH-1:0] in2,
    input logic [WIDTH-1:0] in3,
    input logic [1:0] sel,
    output logic [WIDTH-1:0] out
    );
    assign out = sel[1] ? (sel[0] ? in3 : in2) : (sel[0] ? in1 : in0); 
endmodule
