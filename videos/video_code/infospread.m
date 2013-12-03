clc; clear all;close all;
%% prepare system



%load parameters, e.g. probability for meeting
parameters;


%with facebook network:
friends;
Nfriends=diag(common);

%% Calculate activity of Startperson and its friends 
TIA=zeros(N,1);
for i=1:N
  TIA(i)=person(i).activity;
  for j=1:N
    TIA(i)=TIA(i)+connect(j,i)*person(j).activity;    
  end
end  

%% Do the experiment (several simulation rounds)



Nexperiments=1; %number of experiments

for experiment=1:Nexperiments
 
    
    
    %set status of all nodes
    %0:ignorant, 1:spreader, 2:stifler
    status=zeros(1,N);

    Startperson=108;
    status(Startperson)=1; %one knows
    
    %% "Tools" for analyzing the spreading
    infections=zeros(1,N); %number of infectios caused by i
    cum_infections=zeros(1,N);%infections plus "infection-subtree"
    nummeetings=zeros(1,N); %total number of meetings
    z=0;   %%Number of meetings at the beginning(for SaveMeeting)
    infectpath=[0,0];%path (edges) of infections

    clear ignorants;
    clear spreaders;
    clear stiflers;
    

    %% Actual Simulation

   figure(1);
    hold on
    for i = 1:N
      plot(person(i).x,person(i).y,'ok','MarkerSize',2)
    end
    plot(person(Startperson).x,person(Startperson).y,'ob','MarkerSize',2)

        
    
    t=1;
    breakout=0;
    Nsteps=5000;
    
    if (Nfriends(Startperson)==0) || (TIA(Startperson)==0)
      t=2;
      breakout=1;
      ignorants(1) =N-1;
      spreaders(1) =1;
      stiflers(1)  =0;
    end
    
    while(breakout==0 && t<Nsteps)

        %indicating progress
%         figure(1)
%         subplot(1,2,1)
%         bla=['Exp' int2str(experiment) '/' int2str(Nexperiments)...
%             '\newline' int2str(t/Nsteps*100) '%'  ];
%         progress=text(0.1,0.9,bla);

        %let meet and exchange info
        talkstep;

        %get numbers of ignorant, spreaders and stiflers
        ignorants(t)=sum(status==0);
        spreaders(t)=sum(status==1);
        stiflers(t)=sum(status==2);
        
        
       film(t)=getframe();
        
       
   
        
      
        

%         pause(0.001)
%         delete(progress);

    %test if evolution is possible
        if (spreaders(t)==0)
            breakout=1;
        end

        t=t+1;

    end
    %% Presenting Data
    present_info_spreading;
    
    

end %End of whole Experiment

movie2avi(film, 'video_infospread.avi','compression','cinepak');