%% Create giant component for Patricks network

connect_plus=connect;

counter=0;

for i=1:N
  if Nfriends(i)==0
    counter=counter+1;    
    deleteperson(counter)=i;
  end
end

for i=1:N
  if Nfriends(i)==1 && Nfriends(person(i).friends(1))==1
    counter=counter+1;    
    deleteperson(counter)=i;
  end
end

deleteperson=sort(deleteperson);
connect_plus([deleteperson],:)=[];
connect_plus(:,[deleteperson])=[];

A=connect_plus;
SgC=length(A(:,1));
NFgC=zeros(SgC,1);

for i=1:SgC
    NF(i)=sum(connect_plus(:,i));
end
%% Calculate constraint score of of all persons in giant component
constr=zeros(SgC,1);

for i=1:SgC
    for j=1:SgC
        Term=0;
        for k=1:SgC
           Term=Term+A(i,k)*A(k,j)/(NF(i)*NF(k));
        end       
        constr(i)=constr(i)+(A(i,j)/NF(i)+Term)^2;
    end
end

%% Assign the betweenness to the correct person
constraint=zeros(N,1);

k=1;
for i=1:SgC
  if i==deleteperson(k)
    k=k+1;
  end
  constraint(i+k-1)=constr(i);
end
clear k;

dlmwrite(['constraint.txt'], constraint,'delimiter',' ');