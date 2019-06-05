% clear
% 
% [data, data_shuffled] = halfmoon(10,6,-4,3000); 
% %data = createXOR(3000);
% data= data_shuffled;
% train_info.training_percentage = 3/12;
% 
% Number_of_neurons = [2,20,5,1];
% num_Epoch = 50;      % number of epochs
% mse_thres = 1E-3;    % MSE threshold
% 
% train_info.Number_of_samples = length(data);
% train_info.Number_of_traning = length(data)*(train_info.training_percentage);
% train_info.Number_of_testing = length(data)*(1-train_info.training_percentage);
%========== : Initialization of Multilayer Perceptron (MLP) ========
clc
fprintf('opening file ...\n');
% data = readmatrix(filename);
data =xlsread(filename);
if strcmp(dataFormat,'Column')
data=data';
end
data_shuffled=data;
train_info.Number_of_samples = length(data);
train_info.Number_of_traning = length(data)*(train_info.training_percentage);
train_info.Number_of_testing = length(data)*(1-train_info.training_percentage);



fprintf('Initializing the Multy Layerd Percepton ...\n');


w1 = cell(length(Number_of_neurons)-1,1); 
for i = 1:length(Number_of_neurons)-1% initialize weights of dim: next_neurons x current_neurons (aka  between input to hidden layer or hiden to output )
    w1{i} = rand(Number_of_neurons(i+1),Number_of_neurons(i)+1); 
    dw0{i}= zeros(Number_of_neurons(i+1),Number_of_neurons(i)+1); 
end

mse_train = Inf;     % MSE for training data
epoch = 1;
alpha = 0;           % momentum constant
err    = 0;          % a counter to denote the number of error outputs
%eta2  = 0.1;         
%eta1  = 0.1;   
for i = 1:length(Number_of_neurons)-1% generate learning-rate
eta{i} = [0.1: (1E-5 - 0.1)/(num_Epoch-1) :1E-5];% learning-rate for output weights
end
%%========= Preprocess the input data : remove mean and normalize =========
mean1 = [mean(data(1:2,:)')';0];
for i = 1:train_info.Number_of_samples
    normalized_data(:,i) = data_shuffled(:,i) - mean1;
end
max1  = [max(abs(normalized_data(1:2,:)'))';1];
for i = 1:train_info.Number_of_samples
    normalized_data(:,i) = normalized_data(:,i)./max1;
end

 backPropagationTrain
 

