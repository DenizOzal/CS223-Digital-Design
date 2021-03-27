`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 12:54:52 PM
// Design Name: 
// Module Name: testbench_decoder2to4
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
module testbench_decoder2to4();
    logic a0, a1, enable;
    logic y0, y1, y2, y3;
// instantiate device under test
    decoder2to4 dut( a0, a1, enable, y0, y1, y2, y3);
// apply inputs one at a time
    initial begin
    enable = 0; a0 = 0; a1 = 0; #10;
    a1 = 1; #10;
    a0 = 1; a1 = 0; #10;
    a1 = 1; #10;
    enable = 1; a0 = 0; a1 = 0; #10;
    a1 = 1; #10;
    a0 = 1; a1 = 0; #10;
    a1 = 1; #10;
    end
endmodule
