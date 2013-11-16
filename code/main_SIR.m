clear all; close all; clc;

par(1)=0.01;
par(2)=0.01;
[t_out,state_out]=ode45(@(t,state)ode_SIR(t,state,par),[0 10],[365;1;0]);
plot(t_out,state_out)
legend('Ignorants','Spreaders','Stiflers')
xlabel('time')
ylabel('Population')