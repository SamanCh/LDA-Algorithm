clc
clear all
close all

x=[  4     1   
     2     4  
     9    10   
     12     13  
     16     18  
     3     6    
     9     5  
     4     4   
     8     7   
    10     8    ];
y=[1;1;2;1;2;2;1;2;1;2];
x1=x(find(y==1),:);
x2=x(find(y==2),:);

Sw=cov(x1)+cov(x2);
St=cov(x);
Sb=St-Sw;

a=inv(Sw)*Sb;
[vec,val]=eig(a)
%%%%%%%%%%%%%%%%%%%%%%%%%55
'second method'
m1=mean(x1);
m2=mean(x2);
m12=m1-m2;
Sb=m12'*m12;
a=inv(Sw)*Sb;
[vec,val]=eig(a)

