%%script to process and present data of a sereies of simulations
clc; clear; close all;

experiment='blub2';
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

%infections

subplot(3,3,4)
plot(Nfriends,sum(infections),'o','markersize',3);
xlabel('friends');
ylabel('infections');

subplot(3,3,5)
plot(activity,sum(infections),'o','markersize',3);
xlabel('activity');
ylabel('infections');


subplot(3,3,6)
plot(influence,sum(infections),'o','markersize',3);
xlabel('friends*activity');
ylabel('infections');
 
%cumulative infections
 
 
subplot(3,3,7)
plot(Nfriends,sum(cum_infections),'o','markersize',3);
xlabel('friends');
ylabel('cumulative infections');

subplot(3,3,8)
plot(activity,sum(cum_infections),'o','markersize',3);
xlabel('activity');
ylabel('cumulative infections');

subplot(3,3,9)
plot(influence,sum(cum_infections),'o','markersize',3);
xlabel('friends*activity');
ylabel('cumulative infections');







 
 
 
 