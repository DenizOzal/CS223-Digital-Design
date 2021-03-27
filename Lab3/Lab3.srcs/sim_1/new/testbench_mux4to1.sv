`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2020 04:27:15 PM
// Design Name: 
// Module Name: testbench_mux4to1
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



module testbench_mux4to1();
    logic in0, in1, in2, in3;
    logic s0, s1;
    logic y;

    mux4to1 tb_mux4to1( .in0(in0), .in1(in1), .in2(in2), .in3(in3), .s0(s0), .s1(s1), .y(y));

    initial begin
    in0 = 1'b0; in1 = 1'b0; in2 = 1'b0; in3 = 1'b0;
    s0 = 1'b0; s1 = 1'b0;
    #500 $finish;
    end
    always #40 in0 = ~in0;
    always #20 in1 = ~in1;
    always #10 in2 = ~in2;
    always #5  in3 = ~in3;
    always #80 s0 = ~s0;
    always #160 s1 = ~s1;
    
    always@( in0 or in1 or in2 or in3 or s0 or s1)
    $monitor("At time = %t, Output = %d", $time, y);  
endmodule
