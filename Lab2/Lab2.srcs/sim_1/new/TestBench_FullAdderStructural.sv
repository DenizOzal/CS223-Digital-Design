`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 11:08:51 AM
// Design Name: 
// Module Name: TestBench_FullAdderStructural
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


module TestBench_FullAdderStructural();
    logic a, b, cin;
    logic sum, cout;
// instantiate device under test
    FullAdderStructural dut(a, b, cin, sum, cout);
// apply inputs one at a time
    initial begin
    a = 0; b = 0; cin = 0; #10;
    cin = 1; #10;
    b = 1; cin = 0; #10;
    cin = 1; #10;
    a = 1; b = 0; cin = 0; #10;
    cin = 1; #10;
    b = 1; cin = 0; #10;
    cin = 1; #10;
    end
endmodule
