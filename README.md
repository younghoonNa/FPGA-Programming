# FPGA-Programming
FPGA Programming basic

### download [Quartus -> MIPS programming, modelsim -> Simulator]
1. https://www.intel.com/content/www/us/en/software-kit/757262/intel-quartus-prime-lite-edition-design-software-version-22-1-for-windows.html
2. https://www.intel.com/content/www/us/en/software-kit/750637/modelsim-intel-fpgas-standard-edition-software-version-20-1.html

- Upload to FPGA: Tools -> Programmer
- Visualize the output of the FPGA Signal using the ModelSim: Tools -> Run Simulation tools -> RTL Simulation

```C++
module first_gate(input a,b, output y);  // Start function Command : module, End of line text : ;, function name: same as file name 
    assign y = a & b; // a and b next or with c <br>
        ....
endmodule // End function command : endmodule <br>
```
