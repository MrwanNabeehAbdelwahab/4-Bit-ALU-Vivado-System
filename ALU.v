`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2025 01:29:33 AM
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
    input [3:0] A, // Changed to 4-bit
    input [3:0] B, // Changed to 4-bit
    input [1:0] op,
    input clk,
    input en,
    input rst,
    output reg [3:0] result // Changed to 4-bit
    );
    always @(posedge clk or posedge rst) begin
    if (rst) begin
    result=4'b0000;
    end
    else if(en) begin
    case(op)
    2'b00:result=A+B;       // Addition
      2'b10:result=A*B;     // Multiplication (Modified from A-B)
        2'b01:result=A&B;     // Bitwise AND
          2'b11:result=A|B;     // Bitwise OR
    endcase
    end 
    end
endmodule