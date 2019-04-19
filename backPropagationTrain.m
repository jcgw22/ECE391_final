%======================= Main Loop for Training ==========================
st = cputime;
fprintf('Training the MLP using back-propagation ...\n');
fprintf('  ------------------------------------\n');
fig = figure;
while mse_train > mse_thres && epoch <= num_Epoch
    % shuffle the training data for every epoch
    [n_row, n_col] = size(normalized_data);
    shuffle_seq = randperm(train_info.Number_of_traning);
    normalized_data1 = normalized_data(:,shuffle_seq);
   
    % using all data for training for this epoch
    for i = 1:train_info.Number_of_traning,
        % FeedForward computation
        hiddenR = cell(length(Number_of_neurons)-1,1);
        x  = [normalized_data1(1:2,i);1];     % fetching input data [x,y,1]
        hiddenR{1} = x ;
        d  = normalized_data1(3,i);% fetching desired response 
        
        for j = 2:length(Number_of_neurons)-1
            hiddenR{j} = [hyperb(w1{j-1}*hiddenR{j-1} );1];          % hidden neurons responce 
        end
        o  = hyperb(w1{end}*hiddenR{end});         % output neuron is nonlinear
        error_(:,i)  = d - o;
        
        % BackPropagation computation
        delta = cell(length(Number_of_neurons)-1,1);
        delta_ou = error_(:,i).*d_hyperb(w1{end}*hiddenR{end});            % delta for output layer error*
        delta{end} = error_(:,i).*d_hyperb(w1{end}*hiddenR{end});            % delta for output layer error*
        for j = length(Number_of_neurons)-2:-1:1
            delta{j} = d_hyperb(w1{j}*hiddenR{j}).*(w1{j+1}(:,1:Number_of_neurons(j+1))'*delta{j+1});
        end
        for j = 1:length(Number_of_neurons)-1
            dw1{j} = eta{j}(epoch)*delta{j}*hiddenR{j}';
            % weights update
            w2{j} = w1{j} + alpha*dw0{j} + dw1{j};  % weights input -> hidden
        end
        % move weights one-step
        dw0 = dw1;
        w1  = w2;
    end
    
    mse(epoch) =sum(mean(error_'.^2));
    mse_train = mse(epoch);
    fprintf('   Epoch #: %d ->',epoch);
    fprintf('MSE = %f\n',mse_train);
    epoch = epoch + 1;
    
    
    displayBPmap(fig, 1, 'backpropagation training',normalized_data,train_info.Number_of_samples,Number_of_neurons,w1);
end
fprintf('   Points trained : %d\n',train_info.Number_of_traning);
fprintf('  Epochs conducted: %d\n',epoch-1);
fprintf('        Time cost : %4.2f seconds\n',cputime - st);
fprintf('  ------------------------------------\n');


%%=============== Plotting Learning Curve =================================
figure;
plot(mse,'k');
title('Learning curve');
xlabel('Number of epochs');ylabel('MSE');