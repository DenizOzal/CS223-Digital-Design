`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2020 03:18:12 PM
// Design Name: 
// Module Name: testbench_mux8to1
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


module testbench_mux8to1();
    logic in0, in1, in2, in3, in4, in5, in6, in7;
    logic s0, s1, s2;
    logic out;
    
    mux8to1 tb_mux8to1( .in0(in0), .in1(in1), .in2(in2), .in3(in3),
                        .in4(in4), .in5(in5), .in6(in6), .in7(in7),
                        .s0(s0), .s1(s1), .s2(s2), .out(out));
    initial begin
    in0 = 1'b0; in1 = 1'b0; in2 = 1'b0; in3 = 1'b0; 
    in4 = 1'b0; in5 = 1'b0; in6 = 1'b0; in7 = 1'b0;
    s0 = 1'b0; s1 = 1'b0; s2 = 1'b0;
    #500 $finish;
    end
    always #1 in0 = ~in0;
    always #2 in1 = ~in1;
    always #3 in2 = ~in2;
    always #4 in3 = ~in3;
    always #5 in4 = ~in4;
    always #6 in5 = ~in5;
    always #7 in6 = ~in6;
    always #8 in7 = ~in7;
    always #9 s0 = ~s0;
    always #10 s1 = ~s1;
    always #11 s2 = ~s2;
    
    always@( in0 or in1 or in2 or in3 or in4 or in5 or in6 or in7 or s0 or s1 or s2)
    $monitor("At time: %t, Output = %d", $time, out);   
endmodule
