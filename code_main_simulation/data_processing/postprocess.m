%%script to process and present data of a sereies of simulations
clc; clear all; close all;

experiment='20131207_BigSim';
addpath(['../' experiment]);

%load data
load('activity.txt');
load('betweenness.txt');
load('clustercoef.txt');
load('common.txt');
load('connect.txt');
load('cum_infections.txt');
load('final_time.txt')
load('infections.txt');
load('Nfriends.txt');
load('nummeetings.txt');
load('ov_cum_infections.txt');
load('ov_infections.txt');
load('ov_nummeetings.txt');
load('rem_ignorants.txt');
load('rem_spreaders.txt');
load('rem_stiflers.txt');
load('Startperson.txt');
load('TIA.txt');
%%
activity=activity';
ov_cum_infections=ov_cum_infections';
ov_infections=ov_infections';
ov_nummeetings=ov_nummeetings';

%%
close all;
%Define influence
influence=(Nfriends)./activity;

figure(1)
var=ov_nummeetings;
subplot(2,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('ov nummeetings')
subplot(2,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('ov nummeetings')
subplot(2,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('ov nummeetings')
subplot(2,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('ov nummeetings')
subplot(2,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('ov nummeetings')
subplot(2,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('ov nummeetings')


figure(2)
var=ov_infections;
subplot(2,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('ov infections')
subplot(2,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('ov infections')
subplot(2,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('ov infections')
subplot(2,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('ov infections')
subplot(2,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('ov infections')
subplot(2,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('ov infections')

figure(3)
var=ov_cum_infections;
subplot(2,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('ov cum infections')
subplot(2,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('ov cum infections')
subplot(2,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('ov cum infections')
subplot(2,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('ov cum infections')
subplot(2,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('ov cum infections')
subplot(2,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('ov cum infections')

figure(4)
subplot(2,3,1)
plot(ov_infections,ov_cum_infections,'o')
xlabel('ov infections')
ylabel('ov cum infections')
subplot(2,3,2)
plot(ov_nummeetings,ov_cum_infections,'o')
xlabel('ov nummeetings')
ylabel('ov cum infections')
subplot(2,3,3)
plot(ov_nummeetings,ov_infections,'o')
xlabel('ov nummeetings')
ylabel('ov infections')

figure(5)
var=Nfriends;
subplot(2,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('Nfriends')
subplot(2,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('Nfriends')
subplot(2,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('Nfriends')
subplot(2,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('Nfriends')
subplot(2,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('Nfriends')
subplot(2,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('Nfriends')

figure(6)
var=activity;
subplot(2,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('Activity')
subplot(2,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('Activity')
subplot(2,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('Activity')
subplot(2,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('Activity')
subplot(2,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('Activity')
subplot(2,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('Activity')

figure(7)
var=betweenness;
subplot(2,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('Betweenness')
subplot(2,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('Betweenness')
subplot(2,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('Betweenness')
subplot(2,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('Betweenness')
subplot(2,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('Betweenness')
subplot(2,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('Betweenness')

figure(8)
var=clustercoef;
subplot(2,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('Clustercoef')
subplot(2,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('Clustercoef')
subplot(2,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('Clustercoef')
subplot(2,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('Clustercoef')
subplot(2,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('Clustercoef')
subplot(2,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('Clustercoef')

figure(10)
var=TIA;
subplot(2,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('TIA')
subplot(2,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('TIA')
subplot(2,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('TIA')
subplot(2,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('TIA')
subplot(2,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('TIA')
subplot(2,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('TIA')


% % %% process data
% % 
% % influence=Nfriends.*activity;
% % 
% % cum_inf_processed=cum_infections;
% %  
% % %remove the cum_infections for first person
% % for i=1:length(Startperson)
% %     p1=Startperson(i);
% %     cum_inf_processed(i,p1)=0;
% % end
% %  
% % 
% % 
% % %% plot
% % 
% % figure(1)
% % 
% % %meetings
% % subplot(3,3,1)
% % plot(Nfriends,sum(nummeetings),'o','markersize',3)
% % xlabel('friends');
% % ylabel('meetings');
% % 
% % subplot(3,3,2)
% % plot(activity,sum(nummeetings),'o','markersize',3)
% % xlabel('activity');
% % ylabel('meetings');
% %  
% % subplot(3,3,3)
% % plot(influence,sum(nummeetings),'o','markersize',3);
% % xlabel('friends*activity');
% % ylabel('meetings');
% %  
% % %cumulative infections
% %  
% %  
% % subplot(3,3,4)
% % plot(Nfriends,sum(cum_infections),'o','markersize',3);
% % xlabel('friends');
% % ylabel('cumulative infections');
% % 
% % subplot(3,3,5)
% % plot(activity,sum(cum_infections),'o','markersize',3);
% % xlabel('activity');
% % ylabel('cumulative infections');
% % 
% % subplot(3,3,6)
% % plot(influence,sum(cum_infections),'o','markersize',3);
% % xlabel('friends*activity');
% % ylabel('cumulative infections');
% % 
% % subplot(3,3,7)
% % plot(betweenness,sum(cum_infections),'o','markersize',3);
% % xlabel('betweenness');
% % ylabel('cumulative infections');
% % 
% % subplot(3,3,8)
% % plot(sum(infections),sum(cum_infections),'o','markersize',3);
% % xlabel('direct infections');
% % ylabel('cumulative infections');
% % 
% % 
% % subplot(3,3,9)
% % plot(clustercoef,sum(cum_infections),'o','markersize',3);
% % xlabel('clustercoefficient');
% % ylabel('cumulative infections');
% % 
% % 
% % 
% % 
% % % %  figure(2)
% % % %     hold on
% % % %     for i = 1:N
% % % %       plot(person(i).x,person(i).y,'ok','MarkerSize',2)
% % % %     end
% % % %     plot(person(110).x,person(110).y,'or','MarkerSize',3)
% % % 
% % % %%only for startperson
% % % 
% % % startinfections=zeros(1,length(Nfriends));
% % % 
% % % for i=1:length(Startperson)
% % %  
% % %     p1=Startperson(i);
% % %     
% % %  startinfections(p1)=startinfections(p1)+sum(infections(i,:));
% % %  
% % % end
% % % %%
% % % clc;
% % % y=sum(cum_infections);
% % % x=sum(infections);
% % % N=length(y);
% % % 
% % % a=0;
% % % for i=1:N
% % %    if (y(i)==0 || x(i)==0)
% % %        a=a+1;
% % %       todelete(a)=i;
% % %    end
% % % end
% % % 
% % % y(:,[todelete])=[];
% % % x(:,[todelete])=[];
% % % 
% % % x=log(x');
% % % y=log(y');
% % % 
% % % 
% % % ds=dataset(y,x);
% % %  model='y ~ x';
% % %  
% % %  mdl=LinearModel.fit(ds,model);
% % %  figure(4)
% % %  plot(mdl)
% % % % 
% %  
% % for i=1:N
% %     
% %         
% %     common(i,i)=0;    
% %         
% %    
% % end
% % 
% % maxcommon=max(max(common));
% % % 
% % % figure(3)
% % % plot(sum(common),sum(cum_infections),'o')
% % 