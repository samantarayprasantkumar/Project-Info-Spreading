clear all; close all; clc;

k1=1;
k2=[0.1; 0.4; 2.5; 10];
figure(1)
t_span = linspace(0,0.2,1000)';

[t_out_1,state_out_1]=ode45(@(t,state)ode_SIR(t,state,[k1,k2(1)]),t_span,[383;1;0]);
[t_out_2,state_out_2]=ode45(@(t,state)ode_SIR(t,state,[k1,k2(2)]),t_span,[383;1;0]);
[t_out_3,state_out_3]=ode45(@(t,state)ode_SIR(t,state,[k1,k2(3)]),t_span,[383;1;0]);
[t_out_4,state_out_4]=ode45(@(t,state)ode_SIR(t,state,[k1,k2(4)]),t_span,[383;1;0]);
%%
figure(1)
i=1;
subplot(1,4,i)
ph1=plot(t_out_1,state_out_1(:,i),'-k',t_out_2,state_out_2(:,i),'--k',...
     t_out_3,state_out_3(:,i),'-.k',t_out_4,state_out_4(:,i),':k');
legend('\lambda / \alpha=10'  ,'\lambda / \alpha=2.5',...
          '\lambda / \alpha=0.4','\lambda / \alpha=0.1')
axis([0 t_span(end) 0 384])
xlabel('Time')
ylabel('Nr. of ignorants')
i=2;
subplot(1,4,i)
ph2=plot(t_out_1,state_out_1(:,i),'-k',t_out_2,state_out_2(:,i),'--k',...
     t_out_3,state_out_3(:,i),'-.k',t_out_4,state_out_4(:,i),':k');
axis([0 t_span(end) 0 384])
xlabel('Time')
ylabel('Nr. of spreaders')

i=3;
subplot(1,4,i)
ph3=plot(t_out_1,state_out_1(:,i),'-k',t_out_2,state_out_2(:,i),'--k',...
     t_out_3,state_out_3(:,i),'-.k',t_out_4,state_out_4(:,i),':k');
axis([0 t_span(end) 0 384])
xlabel('Time')
ylabel('Nr. of stiflers')

sh=subplot(1,4,4);
p=get(sh,'position');
lh=legend(sh,ph1);
set(lh,'position',p);
axis(sh,'off');
subplot(1,4,1)
legend('off')
saveas(figure(1),'SIR_ODE.png')


[t_out_5,state_out_5]=ode45(@(t,state)ode_SIR(t,state,[0.475,1.275]),t_span,[383;1;0]);

%%
figure(2)
t_out_5=t_out_5*10000;
plot(t_out_5,state_out_5(:,1),'-k',t_out_5,state_out_5(:,2),'-.k',t_out_5,state_out_5(:,3),':k')
legend('Ignorants','Spreaders','Stiflers')
xlabel('Step')
ylabel('Population')
axis([t_out_5(1) 1000 0 400])
saveas(figure(2),'NICE_SIR.png')

%%
alpha=0.05:0.05:1;
for i=1:length(alpha)
    [t_out_6,state_out_6]=ode45(@(t,state)ode_SIR(t,state,[.095,alpha(i)]),t_span,[383;1;0]);
    ignorants_end(i)=state_out_6(end,1);
end
%%
close all;
figure(3)
plot(alpha,ignorants_end,'.-k')
xlabel('\alpha')
ylabel('Nr. of ignorants after simulation')
axis([0 1.05 100 350])
saveas(figure(3),'Analysis_pforget_ODE.png')