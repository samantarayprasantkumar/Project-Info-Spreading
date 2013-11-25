clc;clear;close all;
%% prepare system

%declare where result is saved
folder='test';

%load parameters, e.g. probability for meeting
parameters;


%with facebook network:
friends


%set status of all nodes
%0:ignorant, 1:spreader, 2:stifler
status=zeros(1,N);

status(floor((N+1)*rand))=1; %one knows

%% "Tools" for analyzing the spreading
infections=zeros(1,N); %number of infectios caused by i
cum_infections=zeros(1,N);%infections plus "infection-subtree"
nummeetings=zeros(1,N); %total number of meetings
z=0;   %%Number of meetings at the beginning(for SaveMeeting)
infectpath=[0,0];%path (edges) of infections
Nfriends=diag(common);


%% Actual Simulation



figure(1)
hold on
for i = 1:N
  plot(person(i).x,person(i).y,'ok','MarkerSize',2)
end


Nsteps=1000; %number of meeting steps
time=linspace(0,Nsteps-1,Nsteps);

for t=1:Nsteps
   
    %indicating progress
    figure(1)
    bla=[int2str(t/Nsteps*100) '%'];
    progress=text(0.9,0.9,bla);
    
    %let meet and exchange info
    talkstep;
    
    %get numbers of ignorant, spreaders and stiflers
    ignorants(t)=sum(status==0);
    spreaders(t)=sum(status==1);
    stiflers(t)=sum(status==2);
    
    pause(0.001)
    delete(progress);
    
    
    
    
    if(spreaders(t)==0)
        break
    end
    
end


%% Presenting Data
present_info_spreading;

%% Do tests if model made sense

%get "cumulative infections", i.e. the whole tree one infected
%do recursively!
% for i=1:N
%     
%     
%     
%     %cum_infections
%     
% end



figure(4)
subplot(2,2,1);
plot(Nfriends,nummeetings,'o','markersize',2);
xlabel('Number of Friends');
ylabel('Number of Meetings');


subplot(2,2,2);
plot(Nfriends,infections,'o','markersize',2);
xlabel('Number of Friends');
ylabel('Number of Infections');

subplot(2,2,3);
plot(nummeetings,infections,'o','markersize',2);
xlabel('Number of Meetings');
ylabel('Number of Infections');

%check if nobody was infected twice

for i=1:(length(infectpath(:,1))-1)
    for j=(i+1):length(infectpath(:,1))
    
        if(infectpath(i,2)==infectpath(j,2))
            warning('The path of infections makes no sense')
        end
        
    end
end


%check if nobody infected before he was infected
for i=2:length(infectpath(:,1))
    
    check=sum(infectpath(i,1)==infectpath(1:(i-1),2));
    check=check+(infectpath(i,1)==infectpath(1,1));%could also be the first one...
    if (check==0)
       warning('The path of infections makes no sense')
       warning(int2str(i))
    end
    
    
end

%% create a folder with parameters, "graphs"(=numbers),and so on
%
%make folder
% mkdir(folder);
% 
% %save time evolution
% evolution=[ignorants', spreaders', stiflers'];
% dlmwrite([folder '/evolution.txt'],evolution,'delimiter',',');
% 
% %save network
% A=adj2arclist(connect);
% cell2csv([folder '/network.csv'],A);
% 
% %save parameters
% title=['pmeet ' 'pinform ' 'pforget'];
% values=[pmeet pinform pforget];
% dlmwrite([folder '/parameters.txt'],title,'delimiter','');
% dlmwrite([folder '/parameters.txt'],values,'delimiter','\t','-append');

% %%
% figure(2)
% hold on
% 
% for i = 1:length(edges(:,1))
% a=[person(edges(i,1)).x; person(edges(i,2)).x];
% b=[person(edges(i,1)).y; person(edges(i,2)).y];
% plot(a,b,'-b','LineWidth',0.1)
% end
% 
% for i = 1:382
%   plot(person(i).x,person(i).y,'ok','MarkerSize',2)
% end
% hold off
