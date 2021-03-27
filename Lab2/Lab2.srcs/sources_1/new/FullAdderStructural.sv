`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 11:05:06 AM
// Design Name: 
// Module Name: FullAdderStructural
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



module xor2( input logic a, b, output logic y);
    assign y = a ^ b;
endmodule

module and2( input logic a, b, output logic y);
    assign y = a & b;
endmodule

module or2( input logic a, b, output logic y);
    assign y = a | b;
endmodule

module FullAdderStructural( input logic a, b, cin, output logic sum, cout);
    logic temp1, temp2, temp3;

    xor2 xorgate1( a, b, temp1);
    xor2 xorgate2( temp1, cin, sum);
    and2 andgate1( a, b, temp2);
    and2 andgate2( cin, temp1, temp3);
    or2 orgate1( temp2, temp3, cout);
endmodule