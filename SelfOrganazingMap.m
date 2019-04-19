%SOMSimple Simple demonstration of a Self-Organizing Map that was proposed by Kohonen.
%   sommap = SOMSimple(nfeatures, ndim, nepochs, ntrainingvectors, eta0, neta, sgm0, nsgm, showMode) 
%   trains a self-organizing map with the following parameters
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

trainingData = createXOR(100);
trainingData=trainingData(1:2,:);
trainingData=trainingData';
nfeatures=2;
ndim=20;
nepochs=10;
ntrainingvectors=80;
eta0=0.1;
neta=0.05;
sgm0=10;
nsgm=0.05;
showMode=2;

som = SelfOrganazingMapTrain(trainingData,nfeatures, ndim, nepochs, ntrainingvectors, eta0, neta, sgm0, nsgm, showMode); 
