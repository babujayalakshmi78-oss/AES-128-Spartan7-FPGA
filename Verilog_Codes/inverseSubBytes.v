`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2026 19:54:54
// Design Name: 
// Module Name: inverseSubBytes
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
module inverseSubBytes(in,out);
input [127:0] in;
output [127:0] out;

genvar i;
generate 
for(i=0;i<128;i=i+8) begin :sub_Bytes 
	inverseSbox s(in[i +:8],out[i +:8]);
	end
endgenerate


endmodule