open_project MLP_MNIST
set_top MLP_MNIST
add_files infer_main.cpp -cflags -std=c++0x 
add_files header.hpp -cflags -std=c++0x 
add_files -tb test.cpp -cflags -std=c++0x
open_solution "mlp_16bit"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
csim_design -compiler clang
csynth_design
# cosim_design
# export_design -format ip_catalog -description "Multi Layer Pcerceptron for handwritten Digit Recognition" -vendor "UCSD" -version "1.0" -display_name "MLP"
exit
