## Introduction to the ISA
- "The current data" is stored in the Data Registers
-> The Data Register store the pieces of data which are used by the instructions.

## MIPS Intructions.
### General 3-operand format.
- operation destination source1, source2
- if operation was addi, then source2 will be constant or immediate
  - operation: ex) add, sub
  - Destination <- source1 [operation] source2


### type of instructions.
- Data operation
  - Arithmetic (add, substract)
  - Logical (and, or, not, xor)
  - Detail.
    1. Program counter hold the instruction addreass (where look at)
    2. Instruction are fetched from memory into instruction register.
    3. Control logic decodes the instruction and tells the ALU and Register File what to do.
    4. ALU executes the instruction and results flow back to the Register File.
    5. The Control logic updates the Program Counter(PC) for the next intruction.
- Data transfer
  - Load (memory -> register)
  - Store (register -> memory)
- Sequencing
  - Branch (Conditional, e.g <, >, ==)
  - Jump (unconditional, e.g goto)
  - 
### MIPS has 32 Register file.
- R0, ..., R31 or $0, ..., $31
- <span style="color: red"> 1 Word = 4byte  = 32bit </span>
- R0 is always zeros -> it is hardwired zero. we can't access.
  -  So, <b> add r3, r1, r0 </b> do Move r1 -> r3
- R29, R31 are used for function calls
- PC(program counter) : which indicate the current instruction.
- Register file consist 32bit each array. and 32 layers 

## Registers and memory
- Register memory is Fast and small, but Memory is large and Slow.
  - Register has restrict memory capacity. So we have to transfer
- Load & Store
  - Load data : from memory to Register file
  - Store data : from register to memory
- Memory has large 1-dimension array. and each array has 8-bit (1-byte)
  - 32-bit computer memory has 4GB(2^32, 2^30 is 1GB) 
  - 64-bit computer memory has 16EB(2^64, 2^60 is 1EB)
- Memory is 8bit and Register is 32bit so it is inconvenience
  - so we used <b> word-aligned view of memory </b>. the PC increase multiple of 4
  - Also MIPS allow aligned addresses access. ex) 0-3, 4-7, 8-11 .. ect. // Not allow Unaligned addresses access 1,3,4,5 
  - if we want Unaligned accesss. we used software (it will be slow..) or access 2 aligned access and combine.

## Instruction execution Model.
- Processor execution model
  - appear to be sequential and atomic
    - sequential : execute instructions in-order
      - R1 = R1 + R2 then R3 = R1 + R2, then Program have to execute first one.
    - atomic : execute each instruction all at once
      - R2 = R1 + R2 then R1 = R1 + R2, then Program finish the first before starting the posterior
- Program storage model.
  - Instruction have to be fetched(loaded) from the memory for execution
  - 
