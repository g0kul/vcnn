#vcnn - verilog CNN  
Verilog modules to build convolutional neural network on PYNQ FPGA.  

Implemented:  
1. Multiply Accumulate (cnn1l) custom IP - built using Xilinx Floating Point Operator IP with custom state machine to perform depth wise pixel convolution operation from BRAMs. Also performs ReLU activation. 

Unimplemented:
1. Max Pool layer
2. Average Pool layer

Contributors:
1. Caio Motta - Building and training CNN model on Tensor Flow
2. Barath Kumar Ramaswami - Training CNN model on Tensor Flow
3. Gokul Prasath Nallasami - Building Hardware (Verilog) modules for implementing the trained CNN model.