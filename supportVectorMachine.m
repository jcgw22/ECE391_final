%function [nsv alpha bias] = NN_SVM(data,data_shuffled,C,p1,epsilon)
% NN_SVM: Support Vector Machine for Classification
%
%  Usage: [nsv alpha bias] = NN_SVM(X,Y,ker,C)
%
%  Parameters: X      - Training inputs
%              Y      - Training targets
%              ker    - kernel function
%              C      - upper bound (non-separable case)
%              nsv    - number of support vectors
%              alpha  - Lagrange Multipliers
%              b0     - bias term
%
%  Original code: Steve Gunn (srg@ecs.soton.ac.uk)
%  Modified by Yanbo Xue (yxue@soma.mcmaster.ca) for non-commercial use
%  March 28, 2007
% 
%--------------------- BEGIN OF MAIN ROUTINE -----------------------------

clc
fprintf('opening file ...\n');
% data = readmatrix(filename);
data = xlsread(filename);

if strcmp(dataFormat,'Column')
data=data';
end
fprintf('opening file ...\n');
data_shuffled=data;
num_samp=length(data);
num_tr=floor(num_samp*(Ptrainning)/100);
num_te=num_samp-num_tr;
%============== Step 0A: Generate halfmoon data ==========================
% rad      = 10;   % central radius of the half moon
% width    = 6;    % width of the half moon
% dist     = -4;   % distance between two half moons
% num_tr   = 300;  % # of training datasets
% num_te   = 2000; % # of testing datasets
% num_samp = num_tr + num_te;% number of samples
% fprintf('Support Vector Machine for Classification\n');
% fprintf('_________________________________________\n');
% fprintf('Generating halfmoon data ...\n');
% fprintf('  ------------------------------------\n');
% fprintf('  Points generated: %d\n',num_samp);
% fprintf('  Halfmoon radius : %2.1f\n',rad);
% fprintf('  Halfmoon width  : %2.1f\n',width);
% fprintf('      Distance    : %2.1f\n',dist);
% fprintf('  ------------------------------------\n');
% % seed=2e5;
% % rand('seed',seed);
% [data, data_shuffled] = halfmoon(rad,width,dist,num_samp);



warning off;


% ================== Step 0B: Initialization of SVM =======================
%  C      = 50;  % upper bound (non-separable case)
%  p1     = 1;    % sigma for RBF, width
%  epsilon= 1e-5; % threshold for Support Vector Detection
err    = 0;    % a counter to denote the number of error outputs
b0     = 0;    % Implicit bias, 0 for RBF kernal

SVMtrain
SVMtest
%=============== Step 7: Test the trained SVM ============================


%================== Final: Output data for further process ================
% data.X_tr = X_tr; % training input
% data.Y_tr = Y_tr; % training output
% data.X_te = X_te; % testing input
% data.Y_te = Y_te; % ideal testing output
% data.Y_pred=Y_pred;% predicted testing output
% data.mean = mean0;% mean value of the data (training + testing)
% data.max  = max0; % max value of the data (training + testing)
% data.dist = dist; % parameter of halfmoon data: distance
% data.rad  = rad;  % parameter of halfmoon data: radius
% data.width= width;% parameter of halfmoon data: width
% data.err  = err;  % number of error outputs

