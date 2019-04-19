

data=normalized_data;

% for i = train_info.Number_of_traning+1:train_info.Number_of_samples
for i =1:train_info.Number_of_samples
    x   = [data(1:2,i);1];
    hiddenR = cell(length(Number_of_neurons)-1,1);
    hiddenR{1}   = x;
    for j = 2:length(Number_of_neurons)-1
            hiddenR{j} = [hyperb(w1{j-1}*hiddenR{j-1} );1];          % hidden neurons responce 
    end
    o(:,i)= hyperb(w1{end}*hiddenR{end});

end
figure
  plot2colors(data(1:2,:),o,1,-1)