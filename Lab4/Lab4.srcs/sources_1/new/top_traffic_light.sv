`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2020 04:36:19 PM
// Design Name: 
// Module Name: top_traffic_light
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


module top_traffic_light(
    input logic SA,
    input logic SB,
    input logic clk,
    input logic reset,
    output logic top_led_a2,
    output logic top_led_a1,
    output logic top_led_a0,
    output logic top_led_b2,
    output logic top_led_b1,
    output logic top_led_b0
    );
    logic clock_3s;
    logic led_a2, led_a1, led_a0, led_b2, led_b1, led_b0;
    trans_3s_clock( clk, reset, clock_3s);
    traffic_light( SA, SB, clock_3s, reset, led_a2, led_a1, 
                    led_a0, led_b2, led_b1, led_b0);
    assign top_led_a2 = led_a2;
    assign top_led_a1 = led_a1;
    assign top_led_a0 = led_a0;
    assign top_led_b2 = led_b2;
    assign top_led_b1 = led_b1;
    assign top_led_b0 = led_b0;
endmodule
