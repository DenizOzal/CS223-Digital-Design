`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2020 03:06:29 PM
// Design Name: 
// Module Name: trans_3s_clock
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



module trans_3s_clock(
    input  clock,
    input  reset,
    output logic clock_3s
    );
    localparam number_3s = 150000000;
    
    logic [31:0] counter;
 
    always @ (posedge(clock), posedge(reset))
        begin
        if ( reset == 1'b1)
            counter <= 32'b0;
        else if ( counter == number_3s - 1)
            counter <= 32'b0;
        else
            counter <= counter + 1;
        end

    always @ ( posedge(clock), posedge(reset))
        begin
        if ( reset == 1'b1)
            clock_3s <= 1'b0;
        else if (counter == number_3s - 1)
             clock_3s <= ~clock_3s;
        else
            clock_3s <= clock_3s;
        end
endmodule
