`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2020 05:25:00 PM
// Design Name: 
// Module Name: mux8to1_function
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
module inv( input logic in0, output logic out0);
    assign out0 = ~in0;
endmodule

module mux8to1_function(
    input a,
    input b,
    input c,
    input d,
    output out
    );
    logic temp1;
    inv inverter1( d, temp1);
    mux8to1 mux8to1_one( 1, d, temp1, d, temp1, 1,
                         0, d, c, b, a, out);
endmodule
