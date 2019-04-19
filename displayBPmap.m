function displayBPmap(fig, nsubplot, description,data,Number_of_samples,Number_of_neurons,w1)
%fig = figure;
%displayBPmap(fig, 1, 'backpropagation training',normalized_data,train_info.Number_of_samples,Number_of_neurons,w1);
%
for i =1:Number_of_samples
    x   = [data(1:2,i);1];
    hiddenR = cell(length(Number_of_neurons)-1,1);
    hiddenR{1}   = x;
    for j = 2:length(Number_of_neurons)-1
            hiddenR{j} = [hyperb(w1{j-1}*hiddenR{j-1} );1];          % hidden neurons responce 
    end
    o(:,i)= hyperb(w1{end}*hiddenR{end});

end

figure(fig);
%subplot(1,2,nsubplot);
midpoint=0;

dataPos = find(o>midpoint);
scatter(data(1,dataPos),data(2,dataPos),8,'r','filled');
hold on 
dataPos = find(o<midpoint);
scatter(data(1,dataPos),data(2,dataPos),8,'b','filled');
hold off


title(description);
end