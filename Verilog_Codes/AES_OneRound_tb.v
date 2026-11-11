`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2026 20:03:30
// Design Name: 
// Module Name: AES_OneRound_tb
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
module AES_TenRound_Decrypt_tb;

reg [127:0] cipher;
reg [127:0] key;

wire [127:0] after_inverse_round10;
wire [127:0] after_inverse_round9;
wire [127:0] after_inverse_round8;
wire [127:0] after_inverse_round7;
wire [127:0] after_inverse_round6;
wire [127:0] after_inverse_round5;
wire [127:0] after_inverse_round4;
wire [127:0] after_inverse_round3;
wire [127:0] after_inverse_round2;
wire [127:0] after_inverse_round1;
wire [127:0] plaintext;


AES_TenRound_Decrypt dut(
    cipher,
    key,
    after_inverse_round10,
    after_inverse_round9,
    after_inverse_round8,
    after_inverse_round7,
    after_inverse_round6,
    after_inverse_round5,
    after_inverse_round4,
    after_inverse_round3,
    after_inverse_round2,
    after_inverse_round1,
    plaintext
);


initial begin

    cipher = 128'h69C4E0D86A7B0430D8CDB78070B4C55A;
    key    = 128'h000102030405060708090A0B0C0D0E0F;

    #10;

    $display("Inverse Round 10 = %h", after_inverse_round10);
    $display("Inverse Round 9  = %h", after_inverse_round9);
    $display("Inverse Round 8  = %h", after_inverse_round8);
    $display("Inverse Round 7  = %h", after_inverse_round7);
    $display("Inverse Round 6  = %h", after_inverse_round6);
    $display("Inverse Round 5  = %h", after_inverse_round5);
    $display("Inverse Round 4  = %h", after_inverse_round4);
    $display("Inverse Round 3  = %h", after_inverse_round3);
    $display("Inverse Round 2  = %h", after_inverse_round2);
    $display("Inverse Round 1  = %h", after_inverse_round1);
    $display("Plaintext        = %h", plaintext);

end

endmodule