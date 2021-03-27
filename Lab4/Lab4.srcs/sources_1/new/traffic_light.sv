`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2020 05:35:21 PM
// Design Name: 
// Module Name: traffic_light
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


module traffic_light(
    input logic SA,
    input logic SB,
    input logic clk,
    input logic reset,
    output logic led_a2,
    output logic led_a1,
    output logic led_a0,
    output logic led_b2,
    output logic led_b1,
    output logic led_b0
    );
    typedef enum logic [2:0] {S0, S1, S2, S3, S4, S5, S6, S7} statetype;
    statetype state, nextstate;
    
    //state register
    always_ff @(posedge clk, posedge reset)
        if(reset) state <= S0;
        else      state <= nextstate;
    
    //next state logic 
    always_comb
        case(state)
            S0: if(SA) nextstate = S0;
                else   nextstate = S1;
            S1:        nextstate = S2;
            S2:        nextstate = S3;   
            S3:        nextstate = S4;   
            S4: if(SB) nextstate = S4;
                else   nextstate = S5;
            S5:        nextstate = S6;
            S6:        nextstate = S7;
            S7:        nextstate = S0;
            default:   nextstate = S0;
        endcase 
         
     //output logic
     assign led_a2 = ( state[1] ^ state[2]) | ( ~state[0] & ( state[1] | state[2]));
     assign led_a1 = ~state[0] | ( state[1] ^ state[2]);
     assign led_a0 = 1;
     assign led_b2 = ( ~state[2] & ( ~state[1] | ~state[0])) | ( state[1] & ( ~state[0] | state[2]));
     assign led_b1 = ~state[0] | ( ~state[2] & ~state[1]) | ( state[2] & state[1]);
     assign led_b0 = 1;
endmodule
