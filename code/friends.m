clc;clear;close all;

%Test to represent a network, 


%% define network

global N; %total number of persons involved
N=0;

global person;
person=struct;

newperson('Alex',{'Berta' 'Max'});
newperson('Berta',{'Alex' 'Max' 'Karl' 'Anna' });
newperson('Max',{'Alex' 'Berta' 'Anna'});
newperson('Karl',{'Berta' 'Anna'});
newperson('Anna',{'Berta' 'Max' 'Karl'});

%% extract connection matrix from data
%1: know each other, 0:dont know each other 

connect=eye(N);


for i=1:N 
    for j=1:N
        
        temp=strcmp(person(j).name,person(i).friends);
        if(find(temp==1))
            connect(i,j)=1;
        end
        
    end
end

%% extract Matrix with common friends




