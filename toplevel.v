`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2025 01:37:54 AM
// Design Name: 
// Module Name: toplevel
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


module toplevel(
input [3:0] x0, // Changed to 4-bit
input [3:0] x1, // Changed to 4-bit
input [3:0] x2, // Changed to 4-bit
input [3:0] x3, // Changed to 4-bit
input [3:0] x4, // Changed to 4-bit
input [3:0] x5, // Changed to 4-bit
input [3:0] x6, // Changed to 4-bit
input [3:0] x7, // Changed to 4-bit
input [1:0] s0,
input [1:0] s1,
input [1:0] op,
input clk,
input rst,
input en
    );
    wire [3:0] out0; // Changed to 4-bit
    wire [3:0] out1; // Changed to 4-bit
    wire [3:0] out2; // Changed to 4-bit
    
    mux mux1(
    .x0(x0),
    .x1(x1),
    .x2(x2),
    .x3(x3),
    .s(s0),
    .clk(clk),
    .y(out0)
    );
    // ... (mux2 instantiation)
    mux mux2(
       .x0(x4),
       .x1(x5),
       .x2(x6),
       .x3(x7),
       .s(s1),
       .clk(clk),
       .y(out1)
    );
    // ... (alu1 instantiation)
    ALU alu1(
    .A(out0),
    .B(out1),
    .op(op),
    .clk(clk),
    .en(en),
    .rst(rst),
    .result(out2)
    );
    // ... (sevensegment1 instantiation - now correctly wired 4-bit to 4-bit)
    sevensegment sevensegment1(
     .clk(clk),
     .en(en),
     .rst(rst),
     .digit(out2)
    );
endmodule
