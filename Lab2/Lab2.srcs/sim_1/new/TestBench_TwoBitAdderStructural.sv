`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 11:41:03 AM
// Design Name: 
// Module Name: TestBench_TwoBitAdderStructural
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


module TestBench_TwoBitAdderStructural();
    logic a1, b1, cin1, a2, b2, cin2;
    logic sum1, cout1, sum2, cout2;
// instantiate device under test
    TwoBitAdderStructural dut( a1, b1, cin1, a2, b2, cin2, sum1, cout1, sum2, cout2);
// apply inputs one at a time
    initial begin
    a1 = 0; b1 = 0; cin1 = 0; a2 = 0; b2 = 0; #10;
    b2 = 1; #10;
    a2 = 1; b2 = 0; #10;
    b1 = 1; #10;
    cin1 = 1; a2 = 0; b2 = 0; #10;
    b2 = 1; #10;
    a2 = 1; b2 = 0; #10;
    b2 = 1; #10;
    b1 = 1; cin1 = 0; a2 = 0; b2 = 0; #10;
    b2 = 1; #10;
    a2 = 1; b2 = 0; #10;
    b2 = 1; #10;
    cin1 = 1; a2 = 0; b2 = 0; #10;
    b2 = 1; #10;
    a2 = 1; b2 = 0; #10;
    b2 = 1; #10;
    a1 = 1; b1 = 0; cin1 = 0; a2 = 0; b2 = 0; #10;
    b2 = 1; #10;
    a2 = 1; b2 = 0; #10;
    b2 = 1; #10;
    cin1 = 1; a2 = 0; b2 = 0; #10;
    b2 = 1; #10;
    a2 = 1; b2 = 0; #10;
    b2 = 1; #10;
    b1 = 1; cin1 = 0; a2 = 0; b2 = 0; #10;
    b2 = 1; #10;
    a2 = 1; b2 = 0; #10;
    b2 = 1; #10;
    cin1 = 1; a2 = 0; b2 = 0; #10;
    b2 = 1; #10;
    a2 = 1; b2 = 0; #10;
    b2 = 1; #10;
    end
endmodule