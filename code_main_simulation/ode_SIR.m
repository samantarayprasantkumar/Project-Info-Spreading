function dstate = ode_SIR(t,state,par)

IG=state(1); %ignorant
SP=state(2); %spreader
ST=state(3); %stifler

r1 =  IG*SP*par(1);
r2 =  SP*ST*par(2);
r3 =  SP*SP*par(2);

dIG =  -r1;
dSP =  r1-r2-r3;
dST =  r2+r3;
dstate =[dIG;dSP;dST];
end

