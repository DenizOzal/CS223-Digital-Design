`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2020 02:58:20 PM
// Design Name: 
// Module Name: mux8to1
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
module mux2to1( input logic in0, in1, s0, output logic y);
    assign y = s0 ? in1 : in0; // s0 & in1 | ~s0 & in0
endmodule

module mux8to1(
    input in0,
    input in1,
    input in2,
    input in3,
    input in4,
    input in5,
    input in6,
    input in7,
    input s0,
    input s1,
    input s2,
    output out
    );
    logic temp1, temp2;
    mux4to1 mux4to1_gate1( in0, in1, in2, in3, s0, s1, temp1);
    mux4to1 mux4to1_gate2( in4, in5, in6, in7, s0, s1, temp2);
    mux2to1 mux2to1_gate1( temp1, temp2, s2, out);
endmodule
