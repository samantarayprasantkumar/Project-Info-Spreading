%Test to represent a network, 


%% define network
addpath('fetch-fb-data')
addpath('fetch-fb-data/dataset')

person=loaddata();

%% extract connection matrix from data
%1: know each other, 0:dont know each other 

N=length(person);

connect=zeros(N);
        

%%
for i=1:N 
    M=length(person(i).friends);
    for j=1:N
        for k=1:M
            if(person(j).id==person(i).friends(k))
                connect(i,j)=1;
            end
        end
    end
end

%make symmetric
for i=1:N
   for j=1:N
      if((connect(i,j)+connect(j,i))==1)
       
          connect(i,j)=1;
          connect(j,i)=1;
      end
   end
end



%% clustering coefficient

clustercoef=clustering(connect, 'undirected');


%% Determine maximal acitivity
maxakt = 0;
for i=1:N
  if person(i).activity>maxakt
    maxakt=person(i).activity;
    maxaktperson=i;
  end
end
% Normalise all activities 
for i=1:N
  person(i).activity=person(i).activity/maxakt ; 
end


%% extract Matrix with common friends
%by the way, diagonal contains number of friends

common=zeros(N,N);

for i=1:N
    for j=1:N

        common(i,j)=sum(connect(i,:)==connect(j,:) & connect(i,:)==1);

    end
end



maxcommon=max(max(common));
%% set position(from gephi file)

Position=dlmread('positions.gdf');
[Y,I]=sort(Position(:,1));
Position=Position(I,:); 
length(Position(:,1));
k=0;
for j=1:N
  person(j).x=0;
  person(j).y=0;
  for i=1:length(Position(:,1))
    if Position(i,1)==person(j).id
      person(j).x = Position(i,5); 
      person(j).y = Position(i,6);
    end
  end  
end


edges=dlmread('edges.csv');