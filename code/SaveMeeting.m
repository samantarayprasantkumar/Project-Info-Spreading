% Save Meeting


              z=z+1;
              met(z,1)=p1;
              met(z,2)=p2;    
a=[person(met(z,1)).x; person(met(z,2)).x];
b=[person(met(z,1)).y; person(met(z,2)).y];
plot(a,b,'-r','LineWidth',0.1)
