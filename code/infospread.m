clc;clear;close all;
%% prepare system

%declare where result is saved
folder='test';

%load parameters, e.g. probability for meeting
parameters;

%number of Persons involved
N=50;

%create network
%connect=full(small_world(N,4,0.5));

%with facebook network:
friends


%set status of all nodes 
%0:ignorant, 1:spreader, 2:stifler
status=zeros(1,N);
status(1)=1; %one knows


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

 




