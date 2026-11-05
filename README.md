# AES-128-Spartan7-FPGA
Design and Performance Evaluation of AES-128 on a Spartan-7 FPGA
# Design and Performance Evaluation of AES-128 on a Spartan-7 FPGA

## 1. Project Overview

This project focuses on the design, implementation, verification, and performance evaluation of the Advanced Encryption Standard (AES-128) algorithm using Verilog HDL on a Spartan-7 FPGA platform.

The work includes AES-128 encryption and decryption, round-wise output verification, comparison with a reference implementation, and FPGA hardware performance analysis.

## 2. Project Objectives

- Design AES-128 encryption and decryption using Verilog HDL.
- Implement the AES transformation stages.
- Verify intermediate outputs of each AES round.
- Validate the final encryption and decryption results using CrypTool 2.
- Analyze the RTL and synthesized hardware architecture.
- Evaluate FPGA resource utilization and power consumption.
- Compare the implementation results with reference designs.

## 3. Tools and Technologies

- Verilog HDL
- Xilinx Vivado
- Spartan-7 FPGA
- CrypTool 2

## 4. AES-128 Architecture

AES-128 is a symmetric block cipher that operates on 128-bit plaintext blocks using a 128-bit secret key.

The encryption process consists of 10 rounds, involving the following transformations:

- SubBytes
- ShiftRows
- MixColumns
- AddRoundKey
- Key Expansion

The final round excludes the MixColumns transformation.

## 5. Repository Contents

### Verilog Codes
Contains the Verilog HDL source files for AES-128 modules, including encryption, decryption, key expansion, and testbenches.

### Round-Wise Outputs
Contains intermediate AES states and round-by-round simulation outputs used to verify the correctness of the encryption process.

### Validation Results
Contains AES test vectors, CrypTool 2 verification results, and comparisons between the hardware simulation outputs and reference outputs.

### RTL Schematic
Contains the RTL schematic generated using Xilinx Vivado.

### Synthesized Design
Contains the synthesized hardware design and related synthesis reports.

### Implemented Design
Contains the implemented FPGA design and implementation reports.

### FPGA Utilization
Contains FPGA resource utilization reports, including LUTs, flip-flops, and other relevant hardware resources.

### Power Analysis
Contains power estimation reports and power consumption analysis.

### Performance Comparison
Contains comparison tables and performance evaluation results.

## 6. Verification and Validation

The AES-128 implementation is verified using standard AES test vectors. Intermediate round outputs are examined to validate the individual transformation stages.

The final encryption and decryption results are compared with reference results obtained using CrypTool 2.

## 7. Performance Evaluation

The design is evaluated based on:

- FPGA resource utilization
- LUT utilization
- Flip-flop utilization
- Power consumption
- Timing performance
- Hardware implementation results

Actual measured values are provided in the corresponding reports and comparison tables.

## 8. References and Acknowledgement

Relevant research papers, technical documentation, and existing AES implementations were studied during the development of this project. Original sources and applicable licences are acknowledged appropriately.

## 9. Project Information

**Project Title:** Design and Performance Evaluation of AES-128 on a Spartan-7 FPGA

**Main Project:** FPGA Based Secure Examination System

**Department:** Electronics Engineering – VLSI Design and Technology

**Platform:** Spartan-7 FPGA

**HDL:** Verilog

**Tools:** Xilinx Vivado and CrypTool 2
