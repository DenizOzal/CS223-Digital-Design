`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 11:21:28 AM
// Design Name: 
// Module Name: TestBench_FullSubstractorStructural
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


module TestBench_FullSubstractorStructural();
    logic a, b, bin;
    logic d, bo;
// instantiate device under test
    FullSubstractorStructural dut(a, b, bin, d, bo);
// apply inputs one at a time
    initial begin
    a = 0; b = 0; bin = 0; #10;
    bin = 1; #10;
    b = 1; bin = 0; #10;
    bin = 1; #10;
    a = 1; b = 0; bin = 0; #10;
    bin = 1; #10;
    b = 1; bin = 0; #10;
    bin = 1; #10;
    end
endmodule
