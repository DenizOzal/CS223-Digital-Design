`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2020 05:41:59 PM
// Design Name: 
// Module Name: testbench_mux8to1_function
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
module testbench_mux8to1_function();
    logic a, b, c, d;
    logic out;
    
    mux8to1_function tb_mux8to1_function( .a(a), .b(b), .c(c), .d(d), .out(out));
    initial begin
    a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
    #500 $finish;
    end
    always #40 a = ~a;
    always #20 b = ~b;
    always #10 c = ~c;
    always #5 d = ~d;
    always@( a or b or c or d)
    $monitor( "At time = %t, Output = %d", $time, out);
endmodule
