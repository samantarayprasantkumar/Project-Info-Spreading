% Test to represent a network, 


%% Load data
addpath('fetch-fb-data')
addpath('fetch-fb-data/dataset')
person=loaddata();

%% Create a connection matrix from data
%  1: know each other, 0:dont know each other 

% Number of people in the network
N=length(person); 

% Initialize adj matrix
connect=zeros(N); % Adj matrix

% Create adj matrix
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

% Make adj matrix symmetric
for i=1:N
   for j=1:N
      if((connect(i,j)+connect(j,i))==1)
       
         connect(i,j)=1;
         connect(j,i)=1;
      end
   end
end


%% Update person.friend

for i=1:N
    k=0;
   for j=1:N
      if(connect(i,j)==1)
         
         k=k+1;  
         person(i).friends(k)=j;
      end
   end
end


%% Extract matrix with common friends
%  Diagonal contains total number of friends of a person

% Initialize matrix

common=zeros(N,N);

% Create matrix
for i=1:N
   for j=1:N

      common(i,j)=sum(connect(i,:)==connect(j,:) & connect(i,:)==1);
   end
end

% Save total number of friends in a vector
Nfriends=diag(common);


%% Determine the maximum number of common friends two persons have

maxcommon=max(max(common-diag(Nfriends,0)));


%% Determine clustering coefficient

clustercoef=clustering(connect, 'undirected');


%% Determine betweenness centrality
%  Do it only the first time you work with the
%  network. The other times load the saved data to
%  save a lot of computing time

%  create_betweenness %%works only for patricks network

betweenness=dlmread('betweenness.txt');

%% Determine maximal acitivity

maxakt = 0;

for i=1:N
   if(person(i).activity>maxakt)
      maxakt=person(i).activity;
      maxaktperson=i;
   end
end


%% Normalise all activities and save them in the vector act 

for i=1:N
   person(i).activity=person(i).activity/maxakt ; 
end

for i=1:N
   act(i)=person(i).activity;  
end


%% Sum up the activity of each person and its friends

TIA=zeros(N,1); %Total Initial Activity

for i=1:N
  TIA(i)=person(i).activity;
  for j=1:N
    TIA(i)=TIA(i)+connect(j,i)*person(j).activity;    
  end
end


%% Give every person a position for the plot later on
%  therefore first use gephi to calculate nice coordinates

% Load data and sort it

position=dlmread('positions.gdf');

[Y,I]=sort(position(:,1));
position=position(I,:); 

% Assign every person coordinates
% not listed persons get coordinates [0,0]

k=0;
for j=1:N
  person(j).x=0;
  person(j).y=0;
  for i=1:length(position(:,1))
    if position(i,1)==person(j).id
      person(j).x = position(i,5); 
      person(j).y = position(i,6);
    end
  end  
end

%% Plot the whole network

figure(100)
hold on
for i=1:N-1
   for j=i+1:N
      if connect(i,j)==1
      plot([person(i).x;person(j).x],[person(i).y;person(j).y])
      end
   end
end
for i=1:N
  plot(person(i).x,person(i).y,'ok','MarkerSize',2)    
end
  plot(person(91).x,person(91).y,'or','MarkerSize',5)
  plot(person(120).x,person(120).y,'og','MarkerSize',5)
hold off

%% Calculate Eigencentrality

eig=eigencentrality(connect);
