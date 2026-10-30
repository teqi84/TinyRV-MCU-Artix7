# TinyRV-MCU-Artix7

A custom 32-bit RISC-V microcontroller designed from scratch using SystemVerilog and implemented on a Xilinx Artix-7 XC7A35T FPGA.

## Project Objectives

- Design a custom RISC-V RV32I CPU, with an RV32M extension planned.
- Implement ROM, SRAM and a memory-mapped system bus.
- Develop GPIO, UART, SPI, I2C, Timer and PWM peripherals.
- Execute bare-metal C firmware.
- Implement a UART bootloader for firmware uploads.
- Integrate DMA and custom hardware accelerators.
- Verify modules using simulation and FPGA testing.

## Hardware

- FPGA: Xilinx Artix-7 XC7A35T
- Board: MicroPhase A7-Lite (to be verified)
- Development tools: AMD Vivado, VS Code
- HDL: SystemVerilog
- Firmware: C / RISC-V Assembly

## Roadmap

- [ ] M00 — FPGA Bring-up
- [ ] M01 — MCU Architecture Specification
- [ ] M02 — Register File
- [ ] M03 — ALU
- [ ] M04 — Instruction Decoder
- [ ] M05 — Program Counter and Branch Unit
- [ ] M06 — Load/Store Unit
- [ ] M07 — CPU Control FSM
- [ ] M08 — RV32I CPU Verification
- [ ] M09–M12 — MCU Integration and Firmware C
- [ ] M13–M15 — Bootloader and Peripherals
- [ ] M16–M18 — Interrupts and DMA
- [ ] M19–M22 — Hardware Acceleration and Final Integration

## Current Status

M00 — Environment setup and FPGA bring-up.

## License

To be determined.