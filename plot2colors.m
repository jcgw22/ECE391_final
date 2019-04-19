function plot2colors(data,answer,first_Value,second_Value)
%plot2colors(data,answer,first_Value,second_Value)

midpoint=(first_Value+second_Value)/2;

dataPos = find(answer>midpoint);
scatter(data(1,dataPos),data(2,dataPos),8,'r','filled');
hold on 
dataPos = find(answer<midpoint);
scatter(data(1,dataPos),data(2,dataPos),8,'b','filled');
hold off