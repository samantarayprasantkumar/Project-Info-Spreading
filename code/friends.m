clc;clear;close all;

%Test to represent a network, 


%% define network

global N; %total number of persons involved
N=0;

global person;
person=struct;

newperson('Alex',{ 'Max'});
newperson('Berta',{ 'Max' 'Karl' 'Anna' });
newperson('Max',{'Alex' 'Berta' 'Anna'});
newperson('Karl',{'Berta'});
newperson('Anna',{ 'Max' 'Karl'});

%% extract connection matrix from data
%1: know each other, 0:dont know each other 

connect=zeros(N);


for i=1:N 
    for j=1:N
        
        temp=strcmp(person(j).name,person(i).friends);
        if(find(temp==1))
            connect(i,j)=1;
        end
        
    end
end

%% extract Matrix with common friends
%by the way, tiagonal contains number of friends

common=zeros(N,N);

for i=1:N
    for j=1:N

        common(i,j)=sum(connect(i,:)==connect(j,:) & connect(i,:)==1);

    end
end

