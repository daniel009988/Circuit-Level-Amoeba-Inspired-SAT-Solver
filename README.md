# FPGA Circuit-Level Amoeba-Inspired SAT Solver

Verilog (FPGA) implementation of the paper "A Circuit-Level Amoeba-Inspired SAT Solver" from N. Takeuchi, Member, IEEE, M. Aono, Y. Hara-Azumi, and C. L. Ayala, Member, IEEE. The proposed solver is a biologically-inspired stochastic local search (SLS) solver to explore solutions to the Boolean satisfiability problem (SAT). It updates multiple variables in parallel at every iteration step, and thus it can find solutions with a fewer number of iteration steps than some other conventional SLS solvers for a specific set of SAT instances. However, the parallelism of the solver is not compatible with general-purpose microprocessors in that many clock cycles are required to execute each iteration; thus, it requires special hardware that can exploit the parallelism to quickly find solutions. In their paper, they propose a circuit model (hardware-friendly algorithm) that explores solutions to SAT, which they call circuit-level AmbSAT (CLAmbSAT). The authors conducted numerical simulation to evaluate the search performance of CL-AmbSAT for a set of randomly generated SAT instances that was designed to estimate the scalability of their approach. Simulation results showed that CLAmbSAT finds solutions with a fewer iteration number than a powerful SLS solver, ProbSAT, and outperforms even AmbSAT. Since CL-AmbSAT uses simple combinational logic to update variables, CL-AmbSAT can be easily implemented in various
hardware.

## Requirements

We have tested the implementation on Xilinx and Intel based environments. Python is required to convert the SAT formulation (CNF) into hardware description. 

## Usage

The DIMACS CNF based formulation has to be converted into a Verilog description. Update the filename in the python progam FPGAmapper.py and run the program with:

```python FPGAmapper.py``` 

After execution, the file "varcells.v" is being produced in the directory which is required to syntesize the solver.

## Running the FPGA SAT Solver

Copy the verilog files into a new project in your Xilinx or Intel Quartus Prime environment. After generating the bitstream, the FPGA will apply the methodology as described in the paper and solve the SAT problem.

<sup>@article{Takeuchi2020ACA,
  title={A Circuit-Level Amoeba-Inspired SAT Solver},
  author={Naoki Takeuchi and Masashi Aono and Yuko Hara-Azumi and Christopher Lawrence Ayala},
  journal={IEEE Transactions on Circuits and Systems II: Express Briefs},
  year={2020},
  volume={67},
  pages={2139-2143}
}</sup>