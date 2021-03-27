`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 04:15:14 PM
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


module mux4to1(
    input in0,
    input in1,
    input in2,
    input in3,
    input s0,
    input s1,
    output y
    );
    assign y = ( ~s0 & ~s1 & in0) | ( s0 & ~s1 & in1) | ( ~s0 & s1 & in2) | ( s0 & s1 & in3);
endmodule
