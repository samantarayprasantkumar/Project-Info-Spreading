%% Create giant component for Patricks network
connect_plus=connect;

counterer=0;
clear deleteperson;
for i=1:N
  if Nfriends(i)==0
    counterer=counterer+1;    
    deleteperson(counterer)=i;
  end
end

for i=1:N
  if Nfriends(i)==1 && Nfriends(person(i).friends(1))==1
    counterer=counterer+1;    
    deleteperson(counterer)=i;
  end
end
deleteperson=sort(deleteperson);
connect_plus([deleteperson],:)=[];
connect_plus(:,[deleteperson])=[];

%% Calculate betweenness of all persons in giant component
betw=node_betweenness_faster(connect_plus);

%% Assign the betweenness to the correct person
betweenness=zeros(N,1);

k=1;
for i=1:length(betw)
  if i==deleteperson(k)
    k=k+1;
  end
  betweenness(i+k-1)=betw(i);
end

clear k;
%%
dlmwrite(['betweenness.txt'], betweenness,'delimiter',' ');
