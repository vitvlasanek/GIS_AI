A=[];
for i = 0:1000
    s = sprintf('%03d',i);
    img = imread('zaznam_c'+ string(s) +'.png');
    result=trainedNetwork_1.classify(img);
    A(i+1) = result;
end

A;
plot(1:length(A), A-1,':r.','MarkerSize',10)
yticks([0 1 2 3])
xticks(1:200:1000)
ytickangle(90)
xlabel('Dny')
ylabel('Třída')
