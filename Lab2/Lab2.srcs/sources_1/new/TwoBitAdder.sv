`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 11:38:13 AM
// Design Name: 
// Module Name: TwoBitAdderStructural
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


module TwoBitAdderStructural( input logic a1, b1, cin1, a2, b2, cin2, output logic sum1, cout1, sum2, cout2);
    logic temp1;
    FullAdderStructural adder1( a1, b1, cin1, sum1, temp1);
    FullAdderStructural adder2( a2, b2, temp1, sum2, cout2);
// Or cin2 can be applied since cin2 is equal to temp1
/*
cin2 = temp1;
fullAdder adder2( a2, b2, cin2, sum2, cout2);
*/
endmodule
//
