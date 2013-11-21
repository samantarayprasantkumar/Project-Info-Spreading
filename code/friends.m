%Test to represent a network, 


%% define network

person=loaddata();

%% extract connection matrix from data
%1: know each other, 0:dont know each other 

N=length(person);

connect=zeros(N);


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

%% extract Matrix with common friends
%by the way, tiagonal contains number of friends

common=zeros(N,N);

for i=1:N
    for j=1:N

        common(i,j)=sum(connect(i,:)==connect(j,:) & connect(i,:)==1);

    end
end

Position=dlmread('positions.gdf');
[Y,I]=sort(Position(:,1));
Position=Position(I,:); 
length(Position(:,1));
k=0;
for j=1:382
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