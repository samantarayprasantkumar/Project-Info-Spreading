%%script to process and present data of a sereies of simulations
%clc; clear; close all;

experiment='big_simulation';
addpath(['../' experiment]);

%load data
load('betweenness.txt');
load('clustercoef.txt');
load('common.txt');
load('connect.txt');
load('cum_infections.txt');
load('infections.txt');
load('Nfriends.txt');
load('nummeetings.txt');
load('Startperson.txt');
load('activity.txt');
 
%% process data

influence=Nfriends.*activity';

cum_inf_processed=cum_infections;
 
%remove the cum_infections for first person
for i=1:length(Startperson)
    p1=Startperson(i);
    cum_inf_processed(i,p1)=0;
end
 


%% plot

figure(1)

%meetings
subplot(3,3,1)
plot(Nfriends,sum(nummeetings),'o','markersize',3)
xlabel('friends');
ylabel('meetings');

subplot(3,3,2)
plot(activity,sum(nummeetings),'o','markersize',3)
xlabel('activity');
ylabel('meetings');
 
subplot(3,3,3)
plot(influence,sum(nummeetings),'o','markersize',3);
xlabel('friends*activity');
ylabel('meetings');
 
%cumulative infections
 
 
subplot(3,3,4)
plot(Nfriends,sum(cum_infections),'o','markersize',3);
xlabel('friends');
ylabel('cumulative infections');

subplot(3,3,5)
plot(activity,sum(cum_infections),'o','markersize',3);
xlabel('activity');
ylabel('cumulative infections');

subplot(3,3,6)
plot(influence,sum(cum_infections),'o','markersize',3);
xlabel('friends*activity');
ylabel('cumulative infections');

subplot(3,3,7)
plot(betweenness,sum(cum_infections),'o','markersize',3);
xlabel('betweenness');
ylabel('cumulative infections');

subplot(3,3,8)
plot(sum(infections),sum(cum_infections),'o','markersize',3);
xlabel('direct infections');
ylabel('cumulative infections');


subplot(3,3,9)
plot(clustercoef,sum(cum_infections),'o','markersize',3);
xlabel('clustercoefficient');
ylabel('cumulative infections');




% %  figure(2)
% %     hold on
% %     for i = 1:N
% %       plot(person(i).x,person(i).y,'ok','MarkerSize',2)
% %     end
% %     plot(person(110).x,person(110).y,'or','MarkerSize',3)
% 
% %%only for startperson
% 
% startinfections=zeros(1,length(Nfriends));
% 
% for i=1:length(Startperson)
%  
%     p1=Startperson(i);
%     
%  startinfections(p1)=startinfections(p1)+sum(infections(i,:));
%  
% end
% %%
% clc;
% y=sum(cum_infections);
% x=sum(infections);
% N=length(y);
% 
% a=0;
% for i=1:N
%    if (y(i)==0 || x(i)==0)
%        a=a+1;
%       todelete(a)=i;
%    end
% end
% 
% y(:,[todelete])=[];
% x(:,[todelete])=[];
% 
% x=log(x');
% y=log(y');
% 
% 
% ds=dataset(y,x);
%  model='y ~ x';
%  
%  mdl=LinearModel.fit(ds,model);
%  figure(4)
%  plot(mdl)
% % 
 
for i=1:N
    
        
    common(i,i)=0;    
        
   
end

maxcommon=max(max(common));
% 
% figure(3)
% plot(sum(common),sum(cum_infections),'o')

