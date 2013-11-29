figure(2);
time=1:length(ignorants);
plot(time,ignorants,'r',time,spreaders,'g',time,stiflers,'b');
legend('Ignorants','Spreaders','Stiflers')
xlabel('Step')
ylabel('Population')