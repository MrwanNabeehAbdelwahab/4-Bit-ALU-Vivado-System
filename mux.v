`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2025 01:25:28 AM
// Design Name: 
// Module Name: mux
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


module mux(
    input [3:0] x0, // Changed to 4-bit
    input [3:0] x1, // Changed to 4-bit
    input [3:0] x2, // Changed to 4-bit
    input [3:0] x3, // Changed to 4-bit
    input [1:0] s,
    output reg [3:0] y, // Changed to 4-bit
    input clk
    );
    always @ (posedge clk) begin
    case(s)
    2'b00:y=x0;
     2'b10:y=x1;
        2'b01:y=x2;
         2'b11:y=x3;
           endcase
           end
endmodule