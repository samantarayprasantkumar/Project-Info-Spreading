clc; clear all;close all;
%% prepare system

%declare where result is saved
folder='test2_20131201';
%make folder
mkdir(folder);

%load parameters, e.g. probability for meeting
parameters;


%with facebook network:
friends;


%% Do the experiment (several simulation rounds)

%overall output (sum over individual simulations)

ov_infections=zeros(1,N); 
ov_cum_infections=zeros(1,N);
ov_nummeetings=zeros(1,N); 



Nexperiments=100; %number of experiments

for experiment=1:Nexperiments
tic

%set status of all nodes
%0:ignorant, 1:spreader, 2:stifler
status=zeros(1,N);

Startperson=round(N*rand+0.5);
status(Startperson)=1; %one knows
initial_activity=person(Startperson).activity;

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
plot(person(Startperson).x,person(Startperson).y,'ob','MarkerSize',2)


t=1;
breakout=0;
Nsteps=3000;

while(breakout==0 && t<Nsteps)
   
    
    %indicating progress
    figure(1)
    bla=['Exp' int2str(experiment) '/' int2str(Nexperiments)...
        '\newline' int2str(t/Nsteps*100) '%'  ];
    progress=text(0.8,0.9,bla);
    
    %let meet and exchange info
    talkstep;
    
    %get numbers of ignorant, spreaders and stiflers
    ignorants(t)=sum(status==0);
    spreaders(t)=sum(status==1);
    stiflers(t)=sum(status==2);

    pause(0.001)
    delete(progress);

    

    
%test if evolution is possible
    if (spreaders(t)==0)
        breakout=1;
    end
     
    t=t+1;
    
end


%% Presenting Data
present_info_spreading;


clear ignorants;
clear spreaders;
clear stiflers;
clear total_activity;    

toc
end %End of whole Experiment




warning('dont forget to write a description in the experiment-folder')

dlmwrite([folder '/Nfriends.txt'], Nfriends,'delimiter',' ');
dlmwrite([folder '/clustercoef.txt'], clustercoef,'delimiter',' ');
dlmwrite([folder '/connect.txt'], connect,'delimiter',' ');
dlmwrite([folder '/common.txt'], common,'delimiter',' ');


