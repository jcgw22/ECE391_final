
[data, data_shuffled] = halfmoon(10,6,-4,3000);
train_info.training_percentage = 1/3;
train_info.Number_of_samples = length(data);
train_info.Number_of_traning = length(data)*(train_info.training_percentage);
train_info.Number_of_testing = length(data)*(1-train_info.training_percentage);


%%========== Step 1: Initialization of Multilayer Perceptron (MLP) ========

fprintf('Initializing the MLP ...\n');
Number_of_neurons = [2,20,1];

%w = cell(2,1); 
%w1{1} = rand(n_hd,n_in+1)./2  - 0.25; % initial weights of dim: n_hd x n_in between input layer to hidden layer
w1{1} = rand(Number_of_neurons(2),Number_of_neurons(1)+1); % initial weights of dim: n_hd x n_in between input layer to hidden layer
dw0{1}= zeros(Number_of_neurons(2),Number_of_neurons(1)+1); %rand(n_hd,n_in)./2  - 0.25;%
%w1{2} = rand(n_ou,n_hd+1)./2  - 0.25; % initial weights of dim: n_ou x n_hd between hidden layer to output layer
w1{2} = rand(Number_of_neurons(end),Number_of_neurons(end-1)+1);
dw0{2}= zeros(Number_of_neurons(end),Number_of_neurons(end-1)+1); %rand(n_ou,n_hd)./2  - 0.25;%
num_Epoch = 50;      % number of epochs
mse_thres = 1E-3;    % MSE threshold
mse_train = Inf;     % MSE for training data
epoch = 1;
alpha = 0;         % momentum constant
err    = 0;    % a counter to denote the number of error outputs
%eta2  = 0.1;         % learning-rate for output weights
%eta1  = 0.1;          % learning-rate for hidden weights
eta1 = [0.1: (1E-5 - 0.1)/(num_Epoch-1) :1E-5];
eta2 = [0.1: (1E-5 - 0.1)/(num_Epoch-1) :1E-5];
%%========= Preprocess the input data : remove mean and normalize =========
mean1 = [mean(data(1:2,:)')';0];
for i = 1:train_info.Number_of_samples,
    nor_data(:,i) = data_shuffled(:,i) - mean1;
end
max1  = [max(abs(nor_data(1:2,:)'))';1];
for i = 1:train_info.Number_of_samples,
    nor_data(:,i) = nor_data(:,i)./max1;
end

%%======================= Main Loop for Training ==========================
st = cputime;
fprintf('Training the MLP using back-propagation ...\n');
fprintf('  ------------------------------------\n');
while mse_train > mse_thres && epoch <= num_Epoch
    fprintf('   Epoch #: %d ->',epoch);
    %% shuffle the training data for every epoch
    [n_row, n_col] = size(nor_data);
    shuffle_seq = randperm(train_info.Number_of_traning);
    nor_data1 = nor_data(:,shuffle_seq);
   
    %% using all data for training for this epoch
    for i = 1:train_info.Number_of_traning,
        %% Forward computation
        x  = [nor_data1(1:2,i);1];     % fetching input data from database
        %d  = myint2vec(nor_data1(3,i));% fetching desired response from database
        d  = nor_data1(3,i);% fetching desired response from database
        hd = [hyperb(w1{1}*x);1];          % hidden neurons are nonlinear
        o  = hyperb(w1{2}*hd);         % output neuron is nonlinear
        e(:,i)  = d - o;
        
        %% Backward computation
        delta_ou = e(:,i).*d_hyperb(w1{2}*hd);            % delta for output layer
        delta_hd = d_hyperb(w1{1}*x).*(w1{2}(:,1:n_hd)'*delta_ou);  % delta for hidden layer
        dw1{1} = eta1(epoch)*delta_hd*x';
        dw1{2} = eta2(epoch)*delta_ou*hd';
              
        %% weights update
        w2{1} = w1{1} + alpha*dw0{1} + dw1{1};  % weights input -> hidden
        w2{2} = w1{2} + alpha*dw0{2} + dw1{2};  % weights hidden-> output
        
        %% move weights one-step
        dw0 = dw1;
        w1  = w2;
    end
    mse(epoch) =sum(mean(e'.^2));
    mse_train = mse(epoch);
    fprintf('MSE = %f\n',mse_train);
    epoch = epoch + 1;
end
fprintf('   Points trained : %d\n',train_info.Number_of_traning);
fprintf('  Epochs conducted: %d\n',epoch-1);
fprintf('        Time cost : %4.2f seconds\n',cputime - st);
fprintf('  ------------------------------------\n');