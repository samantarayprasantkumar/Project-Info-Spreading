clc; clear all;close all;
%% prepare system

% Add paths of packages
% % addpath('matlab_networks_routines')
% % addpath('matlab_networks_routines/code')
% % addpath('8_Additional_Material')

% Load data and carry out first node characteisations 
friends;

% Declare and create folder where results are saved
folder='20131207_diff_pforget_120';
mkdir(folder);

% Set parameters
% % parameters; % Normal simulation 

pforget=0.05:0.05:1;


%%
for NR_PFROGET=1:length(pforget)

%% Carry out the experiment (several simulation rounds)

% Initialize output (sum over individual simulations)
ov_infections=zeros(1,N); 
ov_cum_infections=zeros(1,N);
ov_nummeetings=zeros(1,N); 

% Set number of experiments which is carried out for each person
Nexperiments=25; % Number of experiments

% Set maximum number of loops to be carried out
% % Nsteps=5000; % Normal simulation

Startperson=120;
%%
   
    
for experiment=1:Nexperiments
   for Startperson=Startperson:Startperson
      tic
    
      % Show progress in command window as vector
% %       info=[experiment Startperson; Nfriends(Startperson) TIA(Startperson); betweenness(Startperson) clustercoef(Startperson)] % Normal simulation
      info=[experiment Startperson; pforget(NR_PFROGET) act(Startperson);Nfriends(Startperson) TIA(Startperson); betweenness(Startperson) clustercoef(Startperson)]
      
     
      % Set initial status of all nodes
      % 0:ignorant, 1:spreader, 2:stifler   
      status=zeros(1,N);  
      status(Startperson)=1;     %Startperson knows

      % Initialise "tools" for spreading analysis   
      infections=zeros(1,N);     %number of infectios caused by i
      cum_infections=zeros(1,N); %infections plus "infection-subtree"
      nummeetings=zeros(1,N);    %total number of meetings
      z=0;                       %Number of meetings at the beginning(for SaveMeeting)
 
      % Clear data from previous loop
      clear infectpath;
      clear ignorants;
      clear spreaders;
      clear stiflers;
  
    
      %% Actual Simulation
 
      % Create visualisation of the network without edges    
% %       figure(1)
% %       hold on
% %       for i = 1:N
% %          plot(person(i).x,person(i).y,'ok','MarkerSize',2)
% %       end
% %     
% %       % Highlight startperson    
% %       plot(person(Startperson).x,person(Startperson).y,'ob','MarkerSize',2)
 
      % initialise breakout parameters
      t=1;
      breakout=0;    
      nostart=0;
    
      % Does it make sense to enter while loop? 
      if(Nfriends(Startperson)==0) || (TIA(Startperson)==0)
        
         ignorants(t)=sum(status==0);
         spreaders(t)=sum(status==1);
         stiflers(t)=sum(status==2);
         t=2;
         breakout=1;
         nostart=1;
      end
    
      % Enter while loop
    
% %       while(breakout==0 && t<Nsteps) % Normal Simulation
      while(breakout==0)
% %          % Indicating progress 1
% %          figure(1)
% %          bla=['Exp' int2str(experiment) '/' int2str(Nexperiments)...
% %               '\newline' int2str(t/Nsteps*100) '%'  ];
% %          progress=text(0.8,0.9,bla);
 
         % Let meet and exchange info    
         talkstep;
         
         % Get numbers of ignorant, spreaders and stiflers
         ignorants(t)=sum(status==0);
         spreaders(t)=sum(status==1);
         stiflers(t)=sum(status==2);
        
% %          % Indicating progress 2
% %          pause(0.001)
% %          delete(progress);

         % Test if further evolution is possible
         if(spreaders(t)==0)
       
            breakout=1;
         end

         t=t+1;
      end    

      %% Presenting and process data
      present_info_spreading;
    
      toc    
   end
end %End of whole Experiment


dlmwrite([folder '/ov_infections.txt'], ov_infections,'delimiter',' ','-append');
dlmwrite([folder '/ov_cum_infections.txt'], ov_cum_infections,'delimiter',' ','-append');
dlmwrite([folder '/ov_nummeetings.txt'], ov_nummeetings,'delimiter',' ','-append');
end

SEED=RandStream.getGlobalStream.State;

warning('change foldername now!')
warning('dont forget to write a description in the experiment-folder!')

dlmwrite([folder '/Nfriends.txt'], Nfriends,'delimiter',' ');
dlmwrite([folder '/clustercoef.txt'], clustercoef,'delimiter',' ');
dlmwrite([folder '/connect.txt'], connect,'delimiter',' ');
dlmwrite([folder '/common.txt'], common,'delimiter',' ');
dlmwrite([folder '/activity.txt'], act,'delimiter',' ');
dlmwrite([folder '/seed.txt'], SEED,'delimiter',' ');
dlmwrite([folder '/betweenness.txt'], betweenness,'delimiter',' ');
