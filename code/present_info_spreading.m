clear time;

figure(2);
  subplot(3,3,experiment)
  time=1:length(ignorants);
  plot(time,ignorants,'r',time,spreaders,'g',time,stiflers,'b');
  %legend('Ignorants','Spreaders','Stiflers')
  xlabel('Step')
  ylabel('Population')
  axis([time(1) time(end)+1 0 400])


figure(5)
  subplot(3,3,experiment)
  plot(time,total_activity,'k');
  axis([time(1) time(end)+1 0 1.2*max(total_activity)])
  