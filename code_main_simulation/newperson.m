function y=newperson(id,data)
%function to create a new person in the global variable person
%name: string(!) containing the name
%friends: vector containing the name s of friends


global N;
N=N+1; %total Number of persons is one more

global person;

person(N).id=id;

person(N).status=0; %0: ignorant, 1:spreader, 2:stifler

person(N).activity=data(1);


if(length(data)>1)
    person(N).friends=data(2:end);
    
else
    person(N).friends=0;
    
end