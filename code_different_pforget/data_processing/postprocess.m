%%script to process and present data of a sereies of simulations
clc; clear all; close all;

experiment='20131207_diff_pforget_120';
addpath(['../' experiment]);
pforget_short=0.05:0.05:1;
%load data
load('pforget.txt');
load('rem_ignorants.txt');
load('cum_infections.txt');
load('final_time.txt')
load('ov_cum_infections.txt')
load('ov_nummeetings.txt')
plot(pforget_short,ov_nummeetings,'o')
plot(pforget,final_time,'o')
%%
for i=1:20
    avg_rem_ign(i)=mean(rem_ignorants(25*(i-1)+1:25*(i)));
    std_rem_ign(i)=sqrt(var(rem_ignorants(25*(i-1)+1:25*(i))));
end
conf_rem_ign=tq(0.975,24)*std_rem_ign/sqrt(25);

figure(1)
errorbar(pforget_short,avg_rem_ign,conf_rem_ign,'-k')
xlabel('p_{forget}')
ylabel('Nr. of ignorants after simulation')
axis([0 1.05 100 350])
saveas(figure(1),'Analysis_pforget.png')
% %%
% figure(1)
% ds_1_1    = dataset(rem_ignorants,pforget);
% model_1_1 = 'rem_ignorants ~ pforget';
% mdl_1_1   = LinearModel.fit(ds_1_1,model_1_1);
% disp(mdl_1_1)
% plot(mdl_1_1)
% 
%