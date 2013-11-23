clc;clear;close all;
%% prepare system

%declare where result is saved
folder='test';

%load parameters, e.g. probability for meeting
parameters;

%number of Persons involved
%N=50;
%global N;
%create network
%connect=full(small_world(N,4,0.5));

%with facebook network:
friends


%set status of all nodes
%0:ignorant, 1:spreader, 2:stifler
status=zeros(1,N);

status(floor((N+1)*rand))=1; %one knows


%% Actual Simulation

Nsteps=100; %number of meeting steps
time=linspace(0,100,Nsteps);
for t=1:length(time)
    
    %let meet and exchange info
    talkstep;
    
    %get numbers of ignorant, spreaders and stiflers
    ignorants(t)=sum(status==0);
    spreaders(t)=sum(status==1);
    stiflers(t)=sum(status==2);
    
end


%% Presenting Data
present_info_spreading;

%% create a folder with parameters, "graphs"(=numbers),and so on
%
%make folder
mkdir(folder);

%save time evolution
evolution=[ignorants', spreaders', stiflers'];
dlmwrite([folder '/evolution.txt'],evolution,'delimiter',',');

%save network
A=adj2arclist(connect);
cell2csv([folder '/network.csv'],A);

%save parameters
title=['pmeet ' 'pinform ' 'pforget'];
values=[pmeet pinform pforget];
dlmwrite([folder '/parameters.txt'],title,'delimiter','');
dlmwrite([folder '/parameters.txt'],values,'delimiter','\t','-append');

%%
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
