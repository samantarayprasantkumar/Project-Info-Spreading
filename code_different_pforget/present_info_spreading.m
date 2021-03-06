clear time;
time=1:length(ignorants);

% % figure(2);
% % time=1:length(ignorants);
% % plot(time,ignorants,'r'); 
% % hold on
% % plot(time,spreaders,'g');
% % plot(time,stiflers,'b');
% % legend('Ignorants','Spreaders','Stiflers')
% % xlabel('Step')
% % ylabel('Population')
% % axis([time(1) time(end)+1 0 400])
% % hold off
%% Do tests if model made sense

cum_infections=zeros(1,N);

if(z>0)

   % get "cumulative infections", i.e. the whole tree one infected
   % do recursively
   
   L=length(infectpath(:,1));
   for i=L:-1:1
      
      p1=infectpath(i,1);
      p2=infectpath(i,2);
      cum_infections(p1)=1+cum_infections(p1)+cum_infections(p2);
   end

   if(max(cum_infections)>N || find(cum_infections==max(cum_infections))~=Startperson)
      
      warning('this is shit')
   end

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
    
      check2=sum(infectpath(i,1)==infectpath(1:(i-1),2));
      check2=check2+(infectpath(i,1)==infectpath(1,1));%could also be the first one...
      if(check2==0)
   
         warning('The path of infections makes no sense')
         warning(int2str(i))
      end 
   end
else
   z    
end        
    
    


% % %overall output (sum over individual simulations)
ov_infections=ov_infections+infections; 
ov_cum_infections=ov_cum_infections+cum_infections;
ov_nummeetings=ov_nummeetings+nummeetings;


%% create a folder with relevant variables
dlmwrite([folder '/infections.txt'],infections,'delimiter',' ','-append');
dlmwrite([folder '/Startperson.txt'],Startperson,'delimiter',' ','-append');
dlmwrite([folder '/cum_infections.txt'],cum_infections,'delimiter',' ','-append');
dlmwrite([folder '/nummeetings.txt'],nummeetings,'delimiter',' ','-append');
dlmwrite([folder '/rem_ignorants.txt'],ignorants(end),'delimiter',' ','-append');
dlmwrite([folder '/rem_spreaders.txt'],spreaders(end),'delimiter',' ','-append');
dlmwrite([folder '/rem_stiflers.txt'],stiflers(end),'delimiter',' ','-append');
dlmwrite([folder '/final_time.txt'],time(end),'delimiter',' ','-append');
dlmwrite([folder '/pforget.txt'],pforget(NR_PFROGET),'delimiter',' ','-append');

% % close figure 1;
    


%%



% % figure(3)
% % subplot(2,2,1);
% % plot(Nfriends.*act',nummeetings,'o','markersize',2);
% % xlabel('Number of Friends');
% % ylabel('Number of Meetings');
% % 
% % subplot(2,2,2);
% % plot(Nfriends,infections,'o','markersize',2);
% % xlabel('Number of Friends');
% % ylabel('Number of Infections');
% % 
% % subplot(2,2,3);
% % plot(nummeetings,infections,'o','markersize',2);
% % xlabel('Number of Meetings');
% % ylabel('Number of Infections');
% % 
% % subplot(2,2,4);
% % plot(cum_infections);
% % xlabel('id');
% % ylabel('Number of Cumulative Infections');
% % 
% % 
% % figure(4)
% % plot(ov_cum_infections)   