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
load('constraint.txt');
load('eigencentrality.txt')
%%
activity=activity';
ov_cum_infections=ov_cum_infections';
ov_infections=ov_infections';
ov_nummeetings=ov_nummeetings';

%%


%%
close all;
%Define influence
influence=(Nfriends).*(activity);

format='jpg';

figure(1)
var=ov_nummeetings;
subplot(3,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('ov nummeetings')
subplot(3,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('ov nummeetings')
subplot(3,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('ov nummeetings')
subplot(3,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('ov nummeetings')
subplot(3,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('ov nummeetings')
subplot(3,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('ov nummeetings')
subplot(3,3,7)
plot(constraint,var,'o')
xlabel('constraint')
ylabel('ov nummeetings')
subplot(3,3,8)
plot(eigencentrality,var,'o')
xlabel('eigencentrality')
ylabel('ov nummeetings')

saveas(figure(1),'ov_nummeetingsVSall',format)

%%
figure(2)
var=ov_infections;
subplot(3,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('ov infections')
subplot(3,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('ov infections')
subplot(3,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('ov infections')
subplot(3,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('ov infections')
subplot(3,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('ov infections')
subplot(3,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('ov infections')
subplot(3,3,7)
plot(constraint,var,'o')
xlabel('constraint')
ylabel('ov infections')
subplot(3,3,8)
plot(eigencentrality,var,'o')
xlabel('eigencentrality')
ylabel('ov infections')

saveas(figure(2),'ov_infectionsVSall',format)
%%
figure(3)
var=ov_cum_infections;
subplot(3,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('ov cum infections')
subplot(3,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('ov cum infections')
subplot(3,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('ov cum infections')
subplot(3,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('ov cum infections')
subplot(3,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('ov cum infections')
subplot(3,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('ov cum infections')
subplot(3,3,7)
plot(constraint,var,'o')
xlabel('constraint')
ylabel('ov cum infections')
subplot(3,3,8)
plot(eigencentrality,var,'o')
xlabel('eigencentrality')
ylabel('ov cum infections')
saveas(figure(3),'ov_cum_infectionsVSall',format)
%%
figure(4)
subplot(1,3,1)
plot(ov_infections,ov_cum_infections,'o')
xlabel('ov infections')
ylabel('ov cum infections')
subplot(1,3,2)
plot(ov_nummeetings,ov_cum_infections,'o')
xlabel('ov nummeetings')
ylabel('ov cum infections')
subplot(1,3,3)
plot(ov_nummeetings,ov_infections,'o')
xlabel('ov nummeetings')
ylabel('ov infections')
saveas(figure(4),'ovVSeach other',format)
%%
figure(5)
var=Nfriends;
subplot(3,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('Nfriends')
subplot(3,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('Nfriends')
subplot(3,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('Nfriends')
subplot(3,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('Nfriends')
subplot(3,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('Nfriends')
subplot(3,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('Nfriends')
subplot(3,3,7)
plot(constraint,var,'o')
xlabel('constraint')
ylabel('Nfriends')
subplot(3,3,8)
plot(eigencentrality,var,'o')
xlabel('eigencentrality')
ylabel('Nfriends')
saveas(figure(5),'NfriendsVSall',format)
%%
figure(6)
var=activity;
subplot(3,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('Activity')
subplot(3,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('Activity')
subplot(3,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('Activity')
subplot(3,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('Activity')
subplot(3,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('Activity')
subplot(3,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('Activity')
subplot(3,3,7)
plot(constraint,var,'o')
xlabel('constraint')
ylabel('Activity')
subplot(3,3,8)
plot(eigencentrality,var,'o')
xlabel('eigencentrality')
ylabel('Activity')
saveas(figure(6),'ActivityVSall',format)
%%
figure(7)
var=betweenness;
subplot(3,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('Betweenness')
subplot(3,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('Betweenness')
subplot(3,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('Betweenness')
subplot(3,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('Betweenness')
subplot(3,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('Betweenness')
subplot(3,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('Betweenness')
subplot(3,3,7)
plot(constraint,var,'o')
xlabel('constraint')
ylabel('Betweenness')
subplot(3,3,8)
plot(eigencentrality,var,'o')
xlabel('eigencentrality')
ylabel('Betweenness')
saveas(figure(7),'BetweennessVSall',format)
%%
figure(8)
var=clustercoef;
subplot(3,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('Clustercoef')
subplot(3,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('Clustercoef')
subplot(3,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('Clustercoef')
subplot(3,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('Clustercoef')
subplot(3,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('Clustercoef')
subplot(3,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('Clustercoef')
subplot(3,3,7)
plot(constraint,var,'o')
xlabel('constraint')
ylabel('Clustercoef')
subplot(3,3,8)
plot(eigencentrality,var,'o')
xlabel('eigencentrality')
ylabel('Clustercoef')
saveas(figure(8),'ClustercoefVSall',format)
%%
figure(9)
var=influence;
subplot(3,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('Influence')
subplot(3,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('Influence')
subplot(3,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('Influence')
subplot(3,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('Influence')
subplot(3,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('Influence')
subplot(3,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('Influence')
subplot(3,3,7)
plot(constraint,var,'o')
xlabel('constraint')
ylabel('Influence')
subplot(3,3,8)
plot(eigencentrality,var,'o')
xlabel('eigencentrality')
ylabel('Influence')
saveas(figure(9),'InfluenceVSall',format)
%%
figure(10)
var=TIA;
subplot(3,3,1)
plot(Nfriends,var,'o')
xlabel('Nfriends')
ylabel('TIA')
subplot(3,3,2)
plot(activity,var,'o')
xlabel('Activity')
ylabel('TIA')
subplot(3,3,3)
plot(betweenness,var,'o')
xlabel('Betweenness')
ylabel('TIA')
subplot(3,3,4)
plot(clustercoef,var,'o')
xlabel('Clustercoef')
ylabel('TIA')
subplot(3,3,5)
plot(influence,var,'o')
xlabel('Influence')
ylabel('TIA')
subplot(3,3,6)
plot(TIA,var,'o')
xlabel('TIA')
ylabel('TIA')
subplot(3,3,7)
plot(constraint,var,'o')
xlabel('constraint')
ylabel('TIA')
subplot(3,3,8)
plot(eigencentrality,var,'o')
xlabel('eigencentrality')
ylabel('TIA')
saveas(figure(10),'TIAVSall',format)

%%
ov_nummeetings_r=ov_nummeetings/3840;
ov_cum_infections_r=ov_cum_infections/3840;
ov_infections_r=ov_infections/3840;

figure(21)
subplot(2,2,1)
plot(activity,ov_nummeetings_r,'ok','MarkerSize',2)
xlabel('activity')
ylabel('ov nummeetings r')
lsline
ds_21_1    = dataset(ov_nummeetings_r,activity);
model_21_1 = 'ov_nummeetings_r ~ activity';
mdl_21_1   = LinearModel.fit(ds_21_1,model_21_1);
disp(mdl_21_1)
%%
subplot(2,2,2)
plot(influence,ov_infections_r,'ok','MarkerSize',2)
xlabel('Nfriends*activity')
ylabel('ov infections r')
lsline
ds_21_2    = dataset(ov_infections_r,influence);
model_21_2 = 'ov_infections_r ~ influence';
mdl_21_2   = LinearModel.fit(ds_21_2,model_21_2);
disp(mdl_21_2)
%%
subplot(2,2,3)
plot(influence,ov_cum_infections_r,'ok','MarkerSize',2)
xlabel('Nfriends*activity')
ylabel('ov cum infections r')
lsline
ds_21_3    = dataset(ov_cum_infections_r,influence);
model_21_3 = 'ov_cum_infections_r ~ influence';
mdl_21_3   = LinearModel.fit(ds_21_3,model_21_3);
disp(mdl_21_3)
%%
subplot(2,2,4)
plot(ov_infections_r,ov_cum_infections_r,'ok','MarkerSize',2)
xlabel('ov infections r')
ylabel('ov cum infections r')
lsline
ds_21_4    = dataset(ov_cum_infections,ov_infections);
model_21_4 = 'ov_cum_infections ~ ov_infections';
mdl_21_4   = LinearModel.fit(ds_21_4,model_21_4);
disp(mdl_21_4)

saveas(figure(21),'ImportantCorrelations.png')




% % %remove the cum_infections for first person
% % for i=1:length(Startperson)
% %     p1=Startperson(i);
% %     cum_inf_processed(i,p1)=0;
% % end

% % 
% %  figure(2)
% %     hold on
% %     for i = 1:N
% %       plot(person(i).x,person(i).y,'ok','MarkerSize',2)
% %     end
% %     plot(person(110).x,person(110).y,'or','MarkerSize',3)
% % 
% % %%only for startperson
% % 
% % startinfections=zeros(1,length(Nfriends));
% % 
% % for i=1:length(Startperson)
% %  
% %     p1=Startperson(i);
% %     
% %  startinfections(p1)=startinfections(p1)+sum(infections(i,:));
% %  
% % end
% % %%
% % clc;
% % y=sum(cum_infections);
% % x=sum(infections);
% % N=length(y);
% % 
% % a=0;
% % for i=1:N
% %    if (y(i)==0 || x(i)==0)
% %        a=a+1;
% %       todelete(a)=i;
% %    end
% % end
% % 
% % y(:,[todelete])=[];
% % x(:,[todelete])=[];
% % 
% % x=log(x');
% % y=log(y');
% % 
% % 
% % ds=dataset(y,x);
% %  model='y ~ x';
% %  
% %  mdl=LinearModel.fit(ds,model);
% %  figure(4)
% %  plot(mdl)
% % % 
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
