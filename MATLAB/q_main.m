function accuracy = q_main()
%% Load Data
load 'test.mat';
%% Quantization of Weights and Inputs
quantize_word_length=[16,12,10,8,6,4];
quantize_fract_bits =[6, 4, 4, 3,3,2];

sz = size(quantize_word_length);
accuracy = zeros(1,sz(2));
for i=1:sz(2)
    [predictions, accuracy(i)] = forward(quantize_word_length(i),quantize_fract_bits(i),labels,w1,b1,w2,b2,w3,b3);
     i;
end
accuracy;

plot(quantize_word_length,accuracy,'-*')
ylabel('Accuracy ')
xlabel('No.Of Fixed Point Bits')
title("Accuracy vs. Fixed Point Length");
grid();
end