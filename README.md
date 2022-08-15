# Pipeline_CPU

使用 Verilog HDL 與 Modelsim 模擬器，以 Midterm Project 所設計之 ALU Design 為基礎

1. 需實現指令：需完成下列 16 道 MIPS 指令

a) Integer Arithmetic: add, sub, and, or, srl, slt, ori

b) Integer Memory Access: lw, sw

c) Integer Branch: beq, j, jr

d) Integer Multiply/Divide: divu

e) Other Instructions: mfhi, mflo, nop


2. 設計要求：須滿足該項目之規定，否則該項不予計分。

(1) ALU: 需使用 Midterm Project 所設計之 ALU 完成 add, sub, and, or, srl, slt, ori 指令。

其設計方法請詳見 Midterm Project。不接受其他設計方式。

(2) Datapath: 所有指令之執行，須遵守 5-Stage Pipelined CPU 執行指令之行為。

(3) divu: 32-bits 無號數除法指令，需使用 Midterm Project 所設計之 Divider。其設計方法

請詳見 Midterm Project。不接受其他設計方式。

(4) Testbench: 為所設計之模組之測試平台，須以讀檔的方式，讀入測試資料。以驗證

所設計之模組，功能正確性。
