%%script to process and present data of a sereies of simulations
clc; clear; close all;

experiment='test1_20131201';
addpath(['../' experiment]);

%load data
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
 
subplot(2,2,1)
plot(influence,sum(nummeetings),'o','markersize',2)
xlabel('friends*activity');
ylabel('meetings');
 
subplot(2,2,2)
plot(Nfriends,sum(infections),'o','markersize',2);
xlabel('friends');
ylabel('infections');
 

 
 
subplot(2,2,3)
plot(Nfriends,sum(cum_infections),'o','markersize',2);
xlabel('friends');
ylabel('cumulative infections');
axis([xlim ylim])

% subplot(2,2,4)
% plot(Nfriends,sum(cum_inf_processed),'o','markersize',2);
% xlabel('friends');
% ylabel('cumulative infections');
% axis([xlim ylim])


 
 
 
 
 