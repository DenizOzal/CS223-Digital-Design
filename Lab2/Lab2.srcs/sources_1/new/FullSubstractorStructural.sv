`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 11:15:18 AM
// Design Name: 
// Module Name: FullSubstractorStructural
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


//not gate
module not1( input logic a, output logic y);
    assign y = ~a;
endmodule

module FullSubstractorStructural( input logic a, b, bin, output logic d, bo);
    logic temp1, temp2, temp3, temp4;
//D
    xor2 xorgate1( a, b, temp1);
    xor2 xorgate2( temp1, bin, d);
//Bo
    and2 andgate1( ~a, b, temp2);
    not1 xnorgate1( temp1, temp3);
    and2 andgate2( temp3, bin, temp4);
    or2 orgate1( temp2, temp4, bo);
endmodule