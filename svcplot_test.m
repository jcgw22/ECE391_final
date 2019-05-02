function svcplot_test(X_tr,Y_tr,X_te,Y_pred,alpha,bias,epsilon,p1,mean0,max0)
%svcplot_test: Support Vector Machine Plotting Routine for Testing data
%
%Usage: svcplot_test(X_tr,Y_tr,X_te,Y_pred,alpha,bias,epsilon,p1,mean0,max0)
%
%  Parameters: X_tr   - Training inputs
%              Y_tr   - Training outputs
%              X_te   - Testing inputs
%              Y_pred - Testing outputs
%              alpha  - Lagrange Multipliers
%              bias   - Bias term
%            epsilon  - Threshold for support vector detection
%               p1    - Sigma for RBF, spread width
%              mean0  - Mean value of simulation data
%              max0   - Max value of simulation data

%%================= Colormaping the figure here ===========================
%%=== In order to avoid the display problem of eps file in LaTeX. =========
hold on;
xmin = min(X_te(:,1));
xmax = max(X_te(:,1));
ymin = min(X_te(:,2));
ymax = max(X_te(:,2));
[x,y]= meshgrid(xmin:(xmax-xmin)/50:xmax,ymin:(ymax-ymin)/50:ymax);
z    = bias*ones(size(x));
%wh = waitbar(0,'Plotting testing result...');
for x1 = 1 : size(x,1)
    for y1 = 1 : size(x,2)
        input(1) = x(x1,y1);, input(2) = y(x1,y1);
        for i = 1 : length(Y_tr)
            if (abs(alpha(i)) > epsilon)
                z(x1,y1) = z(x1,y1) + Y_tr(i)*alpha(i)*(exp(-(input-X_tr(i,:))*(input-X_tr(i,:))'/(2*p1^2)));
            end
        end
    end
    %waitbar((x1)/size(x,1),wh)
    %set(wh,'name',['Progress = ' sprintf('%2.1f',(x1)/size(x,1)*100) '%']);
end
%close(wh);

x = x*max0(1) + mean0(1); % scale x back to original
y = y*max0(2) + mean0(2); % scale y back to original
xmin = xmin*max0(1) + mean0(1); % scale xmin
xmax = xmax*max0(1) + mean0(1); % scale xmax
ymin = ymin*max0(2) + mean0(2); % scale ymin
ymax = ymax*max0(2) + mean0(2); % scale ymax

sp = pcolor(x,y,z);
load red_black_colmap;
colormap(red_black);
shading flat;
set(gca,'XLim',[xmin xmax],'YLim',[ymin ymax]);
num_te = size(X_te,1);

for i = 1:num_te,
    XX = X_te(i,1)*max0(1) + mean0(1); % scale x back to original
    YY = X_te(i,2)*max0(2) + mean0(2); % scale y back to original
    if Y_pred(i) == 1,
        plot(XX,YY,'r+');
    else
        plot(XX,YY,'kx');
    end
end

%%======================= Plot decision boundary ==========================
contour(x,y,z,[0 0],'k','Linewidth',1);
contour(x,y,z,[-1 -1],'k:','Linewidth',1);
contour(x,y,z,[1 1],'k:','Linewidth',1);
% set(gca,'XTickLabelMode','auto');
% set(gca,'YTickLabelMode','auto');
hold off
axis on
return

end

