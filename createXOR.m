function [data,answer] = createXOR(number_of_datapoints)
ranData = rand(2,number_of_datapoints);
data = ranData;
answer=zeros(1,number_of_datapoints);
for i=1:1:length(ranData(1,:))
    if  ranData(1,i)<0.25
        data(1,i) = 1+(rand(1)/50);
        data(2,i) = 1+(rand(1)/50);
        answer (1,i) = 0;
        answer (1,i) =  answer (1,i)+(rand(1)/50);
    elseif ranData(1,i)<0.5
        data(1,i) = 0+(rand(1)/50);
        data(2,i) = 1+(rand(1)/50);
        answer (1,i) = 1;
        answer (1,i) =  answer (1,i)+(rand(1)/50);
    elseif ranData(1,i)<0.75
        data(1,i) = 1+(rand(1)/50);
        data(2,i) = 0+(rand(1)/50);
        answer (1,i) = 1;
        answer (1,i) =  answer (1,i)+(rand(1)/50);
    else
        data(1,i) = 0+(rand(1)/50);
        data(2,i) = 0+(rand(1)/50);
        answer (1,i) = 0;
        answer (1,i) =  answer (1,i)+(rand(1)/50);
    end
end
data(3,:)=answer (1,:);
end


