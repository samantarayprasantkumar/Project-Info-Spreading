figure(2);
plot(time(1:length(ignorants)),ignorants,'r',time,spreaders,'g',time,stiflers,'b');
legend('Ignorants','Spreaders','Stiflers')
xlabel('Step')
ylabel('Population')