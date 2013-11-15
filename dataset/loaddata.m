%%Loading data from folder data. 
%%File has to be locaded in folder data!


Freunde=dlmread('Freunde.txt');

M=length(Freunde);

global N;
N=0;

global person;
person=struct;

for i=1:M

    name=num2str(Freunde(i)) %%strings verbinden
    Freundi=cat(2,name,'.txt')
    
    try
    tempfriends=dlmread(Freundi)
    CATCH ME %%Avoiding error if no commen friends! (needs to be improved!)
    tempfriends=0;
    end
    newperson(Freunde(i), tempfriends);
    

end
