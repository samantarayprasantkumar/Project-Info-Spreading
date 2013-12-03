% Save Meeting

%infect: records the id's of the person of who infected whom
              z=z+1;
              infectpath(z,1)=p1;
              infectpath(z,2)=p2;    
a=[person(infectpath(z,1)).x; person(infectpath(z,2)).x];
b=[person(infectpath(z,1)).y; person(infectpath(z,2)).y];
hold on
plot(a,b,'-r','LineWidth',0.1)
