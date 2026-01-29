`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2025 01:33:22 AM
// Design Name: 
// Module Name: 7_segment
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


module sevensegment(
    input [3:0] digit,  
    input clk,
    input en,
    input rst, 
    output reg [6:0] L
    
);

always @(posedge clk or posedge rst) begin
    if (rst)begin
     L = 7'b0000000;
     end
    else if(en) begin
     case (digit)
            4'b0000: L = 7'b1111110;//0
            4'b0001: L = 7'b1000010;//1
            4'b0010: L = 7'b0110111;//2
            4'b0011: L = 7'b1100111;//3 
            4'b0100: L = 7'b1001011;//4 
            4'b0101: L = 7'b1101101;//5 
            4'b0110: L = 7'b1111101;//6 
            4'b0111: L = 7'b1000110;//7 
            4'b1000: L = 7'b1111111;//8 
            4'b1001: L = 7'b1101111;//9  
        endcase
        end 
        end
        endmodule


