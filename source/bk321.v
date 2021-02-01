`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/12 12:30:22
// Design Name: 
// Module Name: bk321
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


module bk321(
 input [15:0] A,
    input [15:0] B,
    input cin,
    output [15:0] sum,
    output cout
    );
    wire [15:0]sum0;
 bk32  minus(.A(~B),.B(1),.cin(0),.sum(sum0));
 bk32  minus1(.A(sum0),.B(A),.cin(0),.sum(sum));
 
endmodule
