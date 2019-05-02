
%%==== Step 1: Preprocess the input data, remove mean and normalize =======
mean0 = [mean(data(1:2,:)')';0];         % mean of the original data
for i = 1:num_samp
    data_norm(:,i) = data_shuffled(:,i) - mean0;
end
max0  = [max(abs(data_norm(1:2,:)'))';1];% max of the original data
for i = 1:num_samp
    data_norm(:,i) = data_norm(:,i)./max0;
end

%========== Step 2: Fetch Training and Testing Data ======================
X_tr = data_norm(1:2,1:num_tr)';
Y_tr = data_norm(3,1:num_tr)';
X_te = data_norm(1:2,1+num_tr:num_tr+num_te)';
Y_te = data_norm(3,1+num_tr:num_tr+num_te)';

%==================== Step 3: Construct the Kernel matrix =================
fprintf('Constructing RBF kernal matrix ...\n');
H = zeros(num_tr,num_tr);
for i=1:num_tr
    for j=1:num_tr
        H(i,j) = Y_tr(i)*Y_tr(j)*(exp(-(X_tr(i,:)-X_tr(j,:))*(X_tr(i,:)-X_tr(j,:))'/(2*p1^2)));
    end
end
c = -ones(num_tr,1);
H = H + 1E-10*randn(size(H)); % add artifical noise to avoid Hessian problem.

%============ Step 4: Use QP to solve the Optimization Problem ============
% Set up the parameters for the Optimization problem
fprintf('Optimizing using QP ...\n');
vlb = zeros(num_tr,1); % Set the bounds: alphas >= 0
vub = C*ones(num_tr,1);%                 alphas <= C
x0  = zeros(num_tr,1); % The starting point is [0 0 0   0]
neqcstr = 0;           % Set the number of equality constraints (1 or 0)
A = []; 
b = [];
% Running QP to solve the optimization problem
% The QP is implemented using C++ and then exported to a .dll file
st = cputime;
[alpha lambda how] = qp(H, c, A, b, vlb, vub, x0, neqcstr);

%======== Step 5: Compute the number of Support Vectors ===================
svi = find( alpha > epsilon);
nsv = length(svi);

fprintf('  ------------------------------------\n');
fprintf('   Points trained: %d\n',num_tr);
fprintf('   Execution time: %4.1f seconds\n',cputime - st);
fprintf('       Status    : %s\n',how);
fprintf('         C       : %f\n',C);
w2 = alpha'*H*alpha;
fprintf('       |w0|^2    : %f\n',w2);
fprintf('       Margin    : %f\n',2/sqrt(w2));
fprintf('      Sum alpha  : %f\n',sum(alpha));
fprintf('  Support Vectors: %d (%3.1f%%)\n',nsv,100*nsv/num_tr);
fprintf('  ------------------------------------\n');

%============= Step 6: Plot training result ===============================
figure;
svcplot_train(X_tr,Y_tr,alpha,b0,epsilon,p1,mean0,max0);
xlabel('x');ylabel('y');
title(['Classification using SVM with dist = ',num2str(dist),', radius = ',...
       num2str(rad), ' and width = ',num2str(width), '(Training)']);
