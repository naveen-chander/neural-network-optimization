function store_param(w1,b1,w2,b2,w3,b3)
    %w1 = w1*8;
    %w2 = w2*8;
    %w3 = w3*8;
    %b1 = b1*8;
    %b2 = b2*8;
    %b3 = b3*8;
    
    h = fopen('param_orig.txt', 'w');
    fprintf(h,'//Parameters : w1,b1,w2,b2,w3,b3-------------\n');
    %% Print w1
    sz = size(w1);
    fprintf(h,'my_type w1[%d][%d] ={ \n {', sz(1),sz(2) );
 
    for row=1:sz(1)
        for col=1:sz(2)
            if(col == sz(2))
                fprintf(h, '%1.6f ', (w1(row,col)));
            else
                fprintf(h, '%1.6f, ', (w1(row,col)));
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

    %% Print b1
    b1 = b1';
    sz = size(b1);
    fprintf(h,'my_type b1[%d] = {', sz(1));
    
    for row=1:sz(1)
        if(row == sz(1))
            fprintf(h, '%1.6f };\n  ', (b1(row)));
        else
            fprintf(h, '%1.6f, ', (b1(row)));
        end
    end

    fprintf(h,'//********************************************// \n\n\n');
    
    
    %% Print w2
    sz = size(w2);
    fprintf(h,'my_type w2[%d][%d] ={ \n {', sz(1),sz(2) );
 
    for row=1:sz(1)
        for col=1:sz(2)
            if(col == sz(2))
                fprintf(h, '%1.6f ', (w2(row,col)));
            else
                fprintf(h, '%1.6f, ', (w2(row,col)));
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

    %% Print b2
    b2 = b2';
    sz = size(b2);
    fprintf(h,'my_type b2[%d] = {', sz(1));
    
    for row=1:sz(1)
        if(row == sz(1))
            fprintf(h, '%1.6f };\n  ', (b2(row)));
        else
            fprintf(h, '%1.6f, ', (b2(row)));
        end
    end

    fprintf(h,'//********************************************// \n\n\n');
    

    %% Print w3
    sz = size(w3);
    fprintf(h,'my_type w3[%d][%d] ={ \n {', sz(1),sz(2) );
 
    for row=1:sz(1)
        for col=1:sz(2)
            if(col == sz(2))
                fprintf(h, '%1.6f ', (w3(row,col)));
            else
                fprintf(h, '%1.6f, ', (w3(row,col)));
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

    %% Print b3
    b3 = b3';
    sz = size(b3);
    fprintf(h,'my_type b3[%d] = {', sz(1));
    
    for row=1:sz(1)
        if(row == sz(1))
            fprintf(h, '%1.6f };\n  ', (b3(row)));
        else
            fprintf(h, '%1.6f, ', (b3(row)));
        end
    end

    fprintf(h,'//********************************************// \n\n\n');
    fclose(h);
    
    
end
