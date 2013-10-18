function y=newperson(name,friends);
%function to create a new person in the global variable person
%name: string(!) containing the name
%friends: vector containing the name s of friends


global N;
N=N+1; %total Number of persons is one more

global person;
person(N).name=name;

person(N).id=N;

person(N).friends=friends;





end