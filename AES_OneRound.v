`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2026 19:45:25
// Design Name: 
// Module Name: AES_OneRound
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
module AES_TenRound_Decrypt(
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

input [127:0] cipher;
input [127:0] key;

output [127:0] after_inverse_round10;
output [127:0] after_inverse_round9;
output [127:0] after_inverse_round8;
output [127:0] after_inverse_round7;
output [127:0] after_inverse_round6;
output [127:0] after_inverse_round5;
output [127:0] after_inverse_round4;
output [127:0] after_inverse_round3;
output [127:0] after_inverse_round2;
output [127:0] after_inverse_round1;
output [127:0] plaintext;

wire [1279:0] fullkeys;

// Temporary wires
wire [127:0] ark10;
wire [127:0] isr10;

wire [127:0] ark9;
wire [127:0] imc9;
wire [127:0] isr9;

wire [127:0] ark8;
wire [127:0] imc8;
wire [127:0] isr8;

wire [127:0] ark7;
wire [127:0] imc7;
wire [127:0] isr7;

wire [127:0] ark6;
wire [127:0] imc6;
wire [127:0] isr6;

wire [127:0] ark5;
wire [127:0] imc5;
wire [127:0] isr5;

wire [127:0] ark4;
wire [127:0] imc4;
wire [127:0] isr4;

wire [127:0] ark3;
wire [127:0] imc3;
wire [127:0] isr3;

wire [127:0] ark2;
wire [127:0] imc2;
wire [127:0] isr2;

wire [127:0] ark1;
wire [127:0] imc1;
wire [127:0] isr1;


// Key expansion
keyExpansion #(4,10) ke(
    key,
    fullkeys
);


// ======================================================
// INVERSE ROUND 10
// Forward Round 10:
// SubBytes -> ShiftRows -> AddRoundKey
//
// Reverse:
// AddRoundKey -> Inverse ShiftRows -> Inverse SubBytes
// ======================================================

addRoundKey ark_10(
    cipher,
    ark10,
    fullkeys[127:0]
);

inverseShiftRows isr_10(
    ark10,
    isr10
);

inverseSubBytes isb_10(
    isr10,
    after_inverse_round10
);


// ======================================================
// INVERSE ROUND 9
// ======================================================

addRoundKey ark_9(
    after_inverse_round10,
    ark9,
    fullkeys[255:128]
);

inverseMixColumns imc_9(
    ark9,
    imc9
);

inverseShiftRows isr_9(
    imc9,
    isr9
);

inverseSubBytes isb_9(
    isr9,
    after_inverse_round9
);


// ======================================================
// INVERSE ROUND 8
// ======================================================

addRoundKey ark_8(
    after_inverse_round9,
    ark8,
    fullkeys[383:256]
);

inverseMixColumns imc_8(
    ark8,
    imc8
);

inverseShiftRows isr_8(
    imc8,
    isr8
);

inverseSubBytes isb_8(
    isr8,
    after_inverse_round8
);


// ======================================================
// INVERSE ROUND 7
// ======================================================

addRoundKey ark_7(
    after_inverse_round8,
    ark7,
    fullkeys[511:384]
);

inverseMixColumns imc_7(
    ark7,
    imc7
);

inverseShiftRows isr_7(
    imc7,
    isr7
);

inverseSubBytes isb_7(
    isr7,
    after_inverse_round7
);


// ======================================================
// INVERSE ROUND 6
// ======================================================

addRoundKey ark_6(
    after_inverse_round7,
    ark6,
    fullkeys[639:512]
);

inverseMixColumns imc_6(
    ark6,
    imc6
);

inverseShiftRows isr_6(
    imc6,
    isr6
);

inverseSubBytes isb_6(
    isr6,
    after_inverse_round6
);


// ======================================================
// INVERSE ROUND 5
// ======================================================

addRoundKey ark_5(
    after_inverse_round6,
    ark5,
    fullkeys[767:640]
);

inverseMixColumns imc_5(
    ark5,
    imc5
);

inverseShiftRows isr_5(
    imc5,
    isr5
);

inverseSubBytes isb_5(
    isr5,
    after_inverse_round5
);


// ======================================================
// INVERSE ROUND 4
// ======================================================

addRoundKey ark_4(
    after_inverse_round5,
    ark4,
    fullkeys[895:768]
);

inverseMixColumns imc_4(
    ark4,
    imc4
);

inverseShiftRows isr_4(
    imc4,
    isr4
);

inverseSubBytes isb_4(
    isr4,
    after_inverse_round4
);


// ======================================================
// INVERSE ROUND 3
// ======================================================

addRoundKey ark_3(
    after_inverse_round4,
    ark3,
    fullkeys[1023:896]
);

inverseMixColumns imc_3(
    ark3,
    imc3
);

inverseShiftRows isr_3(
    imc3,
    isr3
);

inverseSubBytes isb_3(
    isr3,
    after_inverse_round3
);


// ======================================================
// INVERSE ROUND 2
// ======================================================

addRoundKey ark_2(
    after_inverse_round3,
    ark2,
    fullkeys[1151:1024]
);

inverseMixColumns imc_2(
    ark2,
    imc2
);

inverseShiftRows isr_2(
    imc2,
    isr2
);

inverseSubBytes isb_2(
    isr2,
    after_inverse_round2
);


// ======================================================
// INVERSE ROUND 1
// ======================================================

addRoundKey ark_1(
    after_inverse_round2,
    ark1,
    fullkeys[1279:1152]
);

inverseMixColumns imc_1(
    ark1,
    imc1
);

inverseShiftRows isr_1(
    imc1,
    isr1
);

inverseSubBytes isb_1(
    isr1,
    after_inverse_round1
);


// ======================================================
// REVERSE ROUND 0
// Original AddRoundKey
// ======================================================

addRoundKey final_ark(
    after_inverse_round1,
    plaintext,
    key
);

endmodule