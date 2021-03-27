`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2020 12:02:44 AM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input logic [1:0] ALU_control,
    input logic [7:0] readData1,
    input logic [7:0] readData2,
    output logic [7:0] result
    );
    always@(*)
    begin 
        case(ALU_control)
        1'b0: result = readData1 + readData2;
        1'b1: begin
              if (readData1 == readData2) result = 8'b00000001;
              else result = 8'b00000000;
              end
        default: result = readData1 + readData2;
        endcase
    end       
endmodule
