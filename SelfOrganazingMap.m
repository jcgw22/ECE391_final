
%       nfeatures        - dimension size of the training feature vectors
%       ndim             - width of a square SOM map
%       nepochs          - number of epochs used for training
%       ntrainingvectors - number of training vectors that are randomly generated
%       eta0             - initial learning rate
%       etadecay         - exponential decay rate of the learning rate
%       sgm0             - initial variance of a Gaussian function that
%                          is used to determine the neighbours of the best 
%                          matching unit (BMU)(atrraction)
%       sgmdecay         - exponential decay rate of the Gaussian variance 
%       showMode         - 0: do not show output, 
%                          1: show the initially randomly generated SOM map 
%                             and the trained SOM map,
%                          2: show the trained SOM map after each update

%             
%             Number_of_neurons
%             
%             
%             Sigma
%             data_Format
%             Inputdata
% % % 
clc
fprintf('opening file ...\n');
% trainingData = readmatrix(Inputdata);

trainingData =xlsread(filename);
if strcmp(data_Format,'Row')
    trainingData=trainingData(1:Number_Of_Dimentions,:);
    trainingData=trainingData';
else
    trainingData=trainingData(:,1:Number_Of_Dimentions);
end
fprintf('file open ...\n');
% trainingData = createXOR(100);
% trainingData=trainingData(1:2,:);
% trainingData=trainingData';
nfeatures=Number_Of_Dimentions;
ndim=Number_of_neurons;
nepochs=Number_of_epochs;
ntrainingvectors=Number_of_Vectors;
eta0=learning_rate;
neta=0.05;
sgm0=Sigma;
nsgm=0.05;

som = SelfOrganazingMapTrain(trainingData,nfeatures, ndim, nepochs, ntrainingvectors, eta0, neta, sgm0, nsgm); 
