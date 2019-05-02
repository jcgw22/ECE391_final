

fprintf('Testing the trained SVM ... \n');
H_te = zeros(num_te,num_tr);
for i=1:num_te
    for j=1:num_tr
        H_te(i,j) = Y_tr(j)*(exp(-(X_te(i,:)-X_tr(j,:))*(X_te(i,:)-X_tr(j,:))'/(2*p1^2)));
    end
end
Y_pred = sign(H_te*alpha + b0);
% Calculate testing error rate
for i = 1:num_te
    if abs(Y_pred(i)-Y_te(i)) > 1E-6
        err = err + 1;
    end
end
fprintf('  ------------------------------------\n');
fprintf('   Points tested : %d\n',num_te);
fprintf('    Error points : %d (%5.2f%%)\n',err,(err/num_te)*100);
fprintf('  ------------------------------------\n');

% %%===================== Step 8: Plot testing result =======================
figure;
svcplot_test(X_tr,Y_tr,X_te,Y_pred,alpha,b0,epsilon,p1,mean0,max0);
xlabel('x');ylabel('y');

figure
fprintf('ploting confucion matrix\n');
dataPos = find(Y_pred<0);
Y_pred2=Y_pred;
Y_pred2(dataPos)=0;
Y_pred2=Y_pred2';
ans2=Y_te';
dataPos = find(ans2<0);
ans2(dataPos)=0;
plotconfusion(ans2,Y_pred2)


   
fprintf('Mission accomplished!\n');
fprintf('_________________________________________\n');