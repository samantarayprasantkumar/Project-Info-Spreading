function A=export_simulation(folder)

mkdir(folder);

%time evolution of types
evolution=[ignorants, spreaders, stiflers];
dlmwrite([folder '/evolution.txt'],evolution,'delimiter',',');

%export netowrk
A=adj2arclist(connect);
cell2csv([folder '/network.csv'],A);
end
