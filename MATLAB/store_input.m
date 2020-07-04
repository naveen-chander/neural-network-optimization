function store_input()
    
    x = csvread('mnist_test.csv');
    images = x(41:50,2:785);
    labels = x(41:50,1);
    images = images/255;

    h = fopen('inputs_41_50.txt', 'w');
    fprintf(h,'//Input 10000 x 784 -------------\n');
    %% Print x
    sz = size(images);
    fprintf(h,'my_type x_sw[%d][%d] ={ \n {', sz(1),sz(2) );   %sz(1)
 
    for row=1:sz(1)
        for col=1:sz(2)
            if(col == sz(2))
                fprintf(h, '%1.3f ', (images(row,col)));
            else
                fprintf(h, '%1.3f, ', (images(row,col)));
            end
        end
        if(row == sz(1))
            fprintf(h, '}\n ');
        else
            fprintf(h, '},\n {');
        end
    end
    fprintf(h, '};\n\t');
    fprintf(h,'//********************************************// \n\n\n');

 %% Print labels
    sz = size(labels);
    fprintf(h,'my_type labels[%d] ={ \n {', sz );   %sz(1)
 
    for row=1:sz
       if(row == sz)
           fprintf(h, '%d };', (labels(row)));
       else
           fprintf(h, '%d, ', (labels(row)));
       end
    end
    fprintf(h, '};\n\t');
    fprintf(h,'//********************************************// \n\n\n');

    fclose(h);
    
    
end
