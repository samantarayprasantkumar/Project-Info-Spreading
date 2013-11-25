% Save Meeting

%infect: records the id's of the person of who infected whom
              z=z+1;
              infect(z,1)=p1;
              infect(z,2)=p2;    
a=[person(infect(z,1)).x; person(infect(z,2)).x];
b=[person(infect(z,1)).y; person(infect(z,2)).y];
plot(a,b,'-r','LineWidth',0.1)
