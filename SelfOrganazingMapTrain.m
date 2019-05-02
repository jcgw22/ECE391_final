function som = SelfOrganazingMapTrain(trainingData,nfeatures, ndim, nepochs, ntrainingvectors, eta0, etadecay, sgm0, sgmdecay)
%       som = SelfOrganazingMapTrain(trainingData,nfeatures, ndim, nepochs, ntrainingvectors, eta0, etadecay, sgm0, sgmdecay, showMode)
%       trains a self-organizing map with the following parameters
%       nfeatures        - dimension size of the training feature vectors
%       ndim             - width of a square SOM map
%       nepochs          - number of epochs used for training
%       ntrainingvectors - number of training vectors that are randomly generated
%       eta0             - initial learning rate
%       etadecay         - exponential decay rate of the learning rate
%       sgm0             - initial variance of a Gaussian function that
%                          is used to determine the neighbours of the best 
%                          matching unit (BMU)
%       sgmdecay         - exponential decay rate of the Gaussian variance 
%       

nrows = ndim;
ncols = ndim;

som = rand(nrows,ncols,nfeatures);


    fig = figure;
    displaySOMmap(fig, 1, 'Randomly initialized SOM', som, nfeatures,ndim);



scatter(trainingData(:,1),trainingData(:,2));
axis square;

% Generate coordinate system
[x y] = meshgrid(1:ncols,1:nrows);

for t = 1:nepochs    
    % Compute the learning rate for the current epoch
    eta = eta0 * exp(-t*etadecay);        

    % Compute the variance of the Gaussian (Neighbourhood) function for the ucrrent epoch
    sgm = sgm0 * exp(-t*sgmdecay);
    
    % Consider the width of the Gaussian function as 3 sigma
    width = ceil(sgm*3);        
    
    for ntraining = 1:ntrainingvectors
        % Get current training vector
        trainingVector = trainingData(ntraining,:);
                
        % Compute the Euclidean distance between the training vector and
        % each neuron in the SOM map
        dist = getEuclideanDistance(trainingVector, som, nrows, ncols, nfeatures);
        
        % Find the best matching unit (bmu)
        [~, bmuindex] = min(dist);
        
        % transform the bmu index into 2D
        [bmurow bmucol] = ind2sub([nrows ncols],bmuindex);        
                
        % Generate a Gaussian function centered on the location of the bmu
        g = exp(-(((x - bmucol).^2) + ((y - bmurow).^2)) / (2*sgm*sgm));
                        
        % Determine the boundary of the local neighbourhood
        from_row = max(1,bmurow - width);
        to_row   = min(bmurow + width,nrows);
        from_collum = max(1,bmucol - width);
        to_collum   = min(bmucol + width,ncols);

        % Get the neighbouring neurons and determine the size of the neighbourhood
        neighbour_Neurons = som(from_row:to_row,from_collum:to_collum,:);
        sz = size(neighbour_Neurons);
        
        % Transform the training vector and the Gaussian function into 
        % multi-dimensional to facilitate the computation of the neuron weights update
        T = reshape(repmat(trainingVector,sz(1)*sz(2),1),sz(1),sz(2),nfeatures);                   
        G = repmat(g(from_row:to_row,from_collum:to_collum),[1 1 nfeatures]);
        
        % Update the weights of the neurons that are in the neighbourhood of the bmu
        neighbour_Neurons = neighbour_Neurons + eta .* G .* (T - neighbour_Neurons);

        % Put the new weights of the BMU neighbouring neurons back to the
        % entire SOM map
        som(from_row:to_row,from_collum:to_collum,:) = neighbour_Neurons;

       
            displaySOMmap(fig, 2, ['Epoch: ',num2str(t),'/',num2str(nepochs),', Training Vector: ',num2str(ntraining),'/',num2str(ntrainingvectors)], som, nfeatures,ndim);
           
    end
end


    displaySOMmap(fig, 2, 'Trained SOM', som, nfeatures,ndim);


function ed = getEuclideanDistance(trainingVector, sommap, nrows, ncols, nfeatures)

% Transform the 3D representation of neurons into 2D
neuronList = reshape(sommap,nrows*ncols,nfeatures);               

% Initialize Euclidean Distance
ed = 0;
for n = 1:size(neuronList,2)
    ed = ed + (trainingVector(n)-neuronList(:,n)).^2;
end
ed = sqrt(ed);

function displaySOMmap(fig, nsubplot, description, sommap, nfeatures,ndim)
% Display given SOM map
neuronList = reshape(sommap,ndim*ndim,nfeatures);
figure(fig);
subplot(1,2,nsubplot);
if nfeatures >= 3
  
    scatter(neuronList(:,2),neuronList(:,1));
else
 
    scatter(neuronList(:,2),neuronList(:,1));
end
axis square;
title(description);


