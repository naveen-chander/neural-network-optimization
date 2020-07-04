# Neural Network Optimization Flow for a 4 layer Perceptron on MNIST Dataset
****************************************************************************

### Requirements:
1. Jupyter Notebook
2. TensorFlow 
3. MATLAB(For additional analyses only)
4. Vivado HLS and Vivado Design Suite
5. .csv files for MNIST Handwritten digit dataset {mnist_train.csv and mnist_test.csv}

### Setup
This package contains

1. Pruning Framework in Python
2. Quantization Framework in Python
3. TFLite Quantization (extra)
4. Evaluate Quantized Model in MATLAB
5. HLS C++ Source Files and Testbench in Vivado HLS


1. To Prune Model, 
	open /PYTHON/Pruning.ipynb
	Explanatory Code written in Jupyter
	RESULTS obtained will be displayed below each cell
	If you want to re-run, please install Tensorflow 
	
2. To Quantize model,
	Open /PYHTON/quantization_flow.ipynb
	Explanatory Code written in Jupyter
	RESULTS obtained will be displayed below each cell
	If you want to re-run, please install Tensorflow 

3. TFlite to quantize model (Extra)	
	Open /PYTHON/quantization_keras.ipynb
	RESULTS obtained will be displayed below each cell
	Best run on Google Colab
	Uses "Quantization Aware Training" to quantize parameters
	Results can be viewed using Netron App
	

4. To evaluate the Quantized Model performance , 
	Open MATLAB/
	In MATLAB software, type in the following commands:
	>>load 'test.mat'
	>>q_main
	Warning ! This code takes 15 minutes to give plots
	
5. HLS Synthesis and Cosimulation
   Open /HLS/
   In the vivado Command Prompt, run
   >>run_hls.tcl
   This Copies the files infer_main.cpp, header.cpp, test.cpp and create a new project in the standard flow
   Problem with Co-simulation : Unable to test for more than 10 test images at a time.
   Therefore, testing done in batches of 10 images. 
   A total of 50 images have been tested.
   
   
### Acknowledgments:
1. Neuronics Lab, DESE, IISc
2. Molchanov et al., (2019) , https://arxiv.org/abs/1906.10771
3. https://www.tensorflow.org/lite/performance/post_training_integer_quant

Good Day,
V Naveen Chander