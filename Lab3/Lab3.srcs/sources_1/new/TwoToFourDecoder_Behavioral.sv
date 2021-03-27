`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 12:43:11 PM
// Design Name: 
// Module Name: decoder2to4
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

module decoder2to4(
    input a0,
    input a1,
    input enable,
    output y0,
    output y1,
    output y2,
    output y3
    );
    assign y0 = enable & ~a0 & ~a1;
    assign y1 = enable & ~a0 & a1;
    assign y2 = enable & a0 & ~a1;
    assign y3 = enable & a0 & a1;
endmodule
