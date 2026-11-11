`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2026 22:38:33
// Design Name: 
// Module Name: tb_10
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
module encryptRound_tb;

reg  [127:0] plaintext;
reg  [127:0] key;

wire [127:0] round_keys;
wire [127:0] initial_transform;
wire [127:0] round1_out;

// Generate all AES-128 round keys
keyExpansion #(4,10) key_expansion(
    key,
    round_keys
);

// Round 0: Initial AddRoundKey
assign initial_transform = plaintext ^ key;

// Round 1
encryptRound round1(
    initial_transform,
    round_keys[0:127],
    round1_out
);

initial begin

    plaintext = 128'h001122334455566778899aabbccddeeff;
    key       = 128'h000102030405060708090a0b0c0d0e0f;

    #10;

    $display("Plaintext           = %h", plaintext);
    $display("Original Key        = %h", key);
    $display("Initial AddRoundKey = %h", initial_transform);
    $display("Round 1 Key         = %h", round_keys[0:127]);
    $display("After Round 1       = %h", round1_out);

end

endmodule