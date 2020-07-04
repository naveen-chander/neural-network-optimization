function [predictions,accuracy] = forward(integer,fraction,labels,w1,b1,w2,b2,w3,b3)
    x = csvread('mnist_test.csv',0,1);
    predictions = zeros(1,length(x));
    layer1_op = fi(zeros(1,32),1,integer,fraction);
    layer2_op = fi(zeros(1,16),1,integer,fraction);
    layer3_op = fi(zeros(1,10),1,integer,fraction);
    %%layer2_op = zeros(1,16);
    %%layer3_op = zeros(1,10);
    w1_q = fi(w1,1,integer,fraction);
    w2_q = fi(w2,1,integer,fraction);
    w3_q = fi(w3,1,integer,fraction);
    b1_q = fi(b1,1,integer,fraction);
    b2_q = fi(b2,1,integer,fraction);
    b3_q = fi(b3,1,integer,fraction);

    for i=1:length(x)
        x_q = fi((x(i,:)/255)',1,16,6);
        prod = w1_q'*x_q;
        prod = fi(prod,1,integer,fraction);
        layer1_op = relu(prod + b1_q');
        layer1_op = fi(layer1_op,1,integer,fraction);
        %layer1_op
        
        prod = w2_q'*layer1_op';
        prod = fi(prod,1,integer,fraction);
        layer2_op = relu(prod + b2_q');
        layer2_op = fi(layer2_op,1,integer,fraction);
        %layer2_op
        
        prod = w3_q'*layer2_op';
        prod = fi(prod,1,integer,fraction);
        layer3_op = prod + b3_q';
        layer3_op = fi(layer3_op,1,integer,fraction);
        [argvalue, argmax] = max(layer3_op);
        %layer3_op
        predictions(i) = argmax-1;
        %predictions(i)
    end
          diff = (uint8(predictions) - labels);
    accuracy = sum(~diff(:))/10000;
end
        
        
        
        