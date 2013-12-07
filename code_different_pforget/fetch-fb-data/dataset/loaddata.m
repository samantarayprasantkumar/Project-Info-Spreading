%%Loading data from folder data. 
%%File has to be locaded in folder data!

function person = loaddata()

Freunde=dlmread('Freunde.txt');

M=length(Freunde);

global N;
N=0;

global person;
person=struct;


for i=1:M

  name=num2str(Freunde(i)); %%strings verbinden
  Freundi=cat(2,name,'.txt');
    
  data=dlmread(Freundi);  
  
  newperson(Freunde(i), data);
    
end


end
