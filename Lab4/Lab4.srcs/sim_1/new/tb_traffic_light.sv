`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2020 10:44:07 PM
// Design Name: 
// Module Name: tb_traffic_light
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


module tb_traffic_light();
    logic SA, SB;
    logic clk, reset;
    logic led_a2, led_a1, led_a0, led_b2, led_b1, led_b0;
    
    traffic_light tb_traffic( .SA(SA), .SB(SB), .clk(clk), .reset(reset), 
                              .led_a2(led_a2), .led_a1(led_a1), .led_a0(led_a0),
                              .led_b2(led_b2), .led_b1(led_b1), .led_b0(led_b0));
    initial begin
        reset <= 1; SB = 0; SA = 0; #30;
        reset <= 0; #30;
    end   
    always begin
        SA <= ~SA; #30;
        SB <= ~SB; #60;
        clk <= 1;  #10;
        clk <= 0;  #10;
    end
endmodule
