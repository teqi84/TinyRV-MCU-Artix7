# TinyRV-MCU-Artix7

A custom 32-bit RISC-V RV32IM pipelined microcontroller designed from scratch using Verilog/SystemVerilog and implemented on a Xilinx Artix-7 FPGA.

## 1. Project Objectives

- Design a custom RISC-V RV32I CPU with a 5-stage pipeline.
- Extend the CPU to support RV32M multiplication and division.
- Implement hazard detection, data forwarding, pipeline stalls and flushes.
- Implement ROM, SRAM and a memory-mapped system bus.
- Develop GPIO, UART, SPI, I2C, Timer and PWM peripherals.
- Execute bare-metal C firmware.
- Implement a UART bootloader for firmware uploads.
- Integrate interrupt handling, DMA and custom hardware accelerators.
- Verify the CPU and MCU using simulation, FPGA testing and performance benchmarks.

## 2. Target Hardware

- FPGA: Xilinx Artix-7 XC7A35T
- Board: MicroPhase A7-Lite (to be verified)
- FPGA Tools: AMD Vivado 2025.2
- Development Environment: VS Code
- RTL: Verilog / SystemVerilog
- Verification: SystemVerilog Testbenches, Vivado XSim
- Firmware: C / RISC-V Assembly
- Compiler: RISC-V GNU Toolchain

## 3. CPU Architecture

**ISA:** RV32I initially, RV32IM after implementing the M extension.

**Microarchitecture:** 5-stage, in-order, single-issue pipeline.

### Pipeline Stages

| Stage | Function |
|---|---|
| IF | Instruction Fetch |
| ID | Instruction Decode and Register Read |
| EX | ALU Operations, Branch Resolution |
| MEM | Memory Access |
| WB | Register Writeback |

### Pipeline Registers

- IF/ID
- ID/EX
- EX/MEM
- MEM/WB

### Hazard Handling

- Data hazard detection
- EX/MEM forwarding
- MEM/WB forwarding
- Load-use stall and bubble insertion
- Branch/jump flush
- Structural hazard handling
- Memory wait-state handling
- Pipeline valid, stall and kill control

### CPU Targets

- 32-bit datapath and address space
- 32 general-purpose integer registers
- 5-stage pipeline
- Single instruction issue
- Initial clock target: 50 MHz
- Ideal CPI approaching 1 under stall-free conditions
- RV32I instruction compatibility
- RV32M support planned
- Retirement trace for CPU verification

## 4. MCU Architecture

The complete MCU will integrate:

1. **CPU:** Custom RV32IM pipelined processor
2. **Memory:** Boot ROM, SRAM, SPI Flash and optional DDR3
3. **System Bus:** Address decoding, handshake and arbitration
4. **Peripherals:** GPIO, UART, SPI, I2C, Timer, PWM
5. **System Control:** Clock, Reset, Interrupt, Watchdog
6. **DMA:** Direct Memory Access Controller
7. **Firmware:** Bootloader, HAL, Drivers and Applications
8. **Accelerator:** FIR Filter, MAC Engine and Parallel DSP

## 5. Development Roadmap

### Phase 0 — FPGA Setup
- [ ] M00 — FPGA Bring-up
- [ ] M01 — MCU Architecture Specification

### Phase 1 — RISC-V CPU
- [ ] M02 — Register File
- [ ] M03 — ALU
- [ ] M04 — Instruction Decoder and Immediate Generator
- [ ] M05 — Program Counter and Branch Unit
- [ ] M06 — Load/Store Unit
- [ ] M07 — 5-Stage Pipeline CPU Integration and Hazard Handling
- [ ] M08 — RV32I CPU Verification

### M07 — Pipeline Development
- [ ] M07-A — Pipeline Stages and Pipeline Registers
- [ ] M07-B — Pipeline Datapath Integration
- [ ] M07-C — Forwarding Unit
- [ ] M07-D — Hazard Detection and Load-Use Stall
- [ ] M07-E — Branch Flush and PC Redirect
- [ ] M07-F — Structural Hazards and Memory Wait States
- [ ] M07-G — RV32M Multiplier/Divider Extension
- [ ] M07-H — Pipeline Control Integration

### Phase 2 — MCU Integration
- [ ] M09 — Memory and System Bus
- [ ] M10 — Clock, Reset and GPIO
- [ ] M11 — Bare-Metal C Firmware
- [ ] M12 — UART Peripheral

### Phase 3 — Programmable MCU
- [ ] M13 — UART Bootloader
- [ ] M14 — Timer, PWM and Watchdog
- [ ] M15 — SPI Flash Boot

### Phase 4 — Advanced MCU
- [ ] M16 — CSR, Interrupt and Trap Handling
- [ ] M17 — SPI and I2C
- [ ] M18 — DMA Controller

### Phase 5 — Hardware Acceleration
- [ ] M19 — FIR Hardware Accelerator
- [ ] M20 — Parallel DSP and Benchmark

### Phase 6 — Final Integration
- [ ] M21 — DDR3 Memory Integration
- [ ] M22 — Full MCU Integration and Verification

## 6. Project Milestones

| Milestone | Goal |
|---|---|
| A | RISC-V CPU executes Assembly programs |
| B | MCU executes bare-metal C firmware |
| C | MCU supports firmware uploading through UART |
| D | MCU integrates DMA and hardware accelerators |

## 7. Verification Strategy

Each module must include:

- RTL source code
- Design specification
- Self-checking testbench
- Functional simulation results
- Edge-case testing
- Integration tests
- FPGA resource and timing reports where applicable

The CPU will additionally be tested for instruction dependencies, hazards, branching, memory stalls and architectural correctness.

## 8. Repository Structure

```text
TinyRV-MCU-Artix7/
├── rtl/
│   ├── cpu/
│   ├── bus/
│   ├── memory/
│   ├── peripherals/
│   ├── system/
│   └── accelerators/
├── tb/
├── firmware/
├── constraints/
├── docs/
├── scripts/
├── README.md
└── .gitignore
```

Subdirectories will be created progressively as each module is implemented.

## 9. Current Status

**M00 — FPGA Bring-up**

- GitHub repository initialized.
- Blink RTL and testbench created.
- Behavioral simulation debugging in progress.
- FPGA synthesis and hardware validation pending.

## 10. License

To be determined.