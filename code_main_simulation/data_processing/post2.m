testsum=0;

for i=1:3840
    if(cum_infections(i,91)==0)
        testsum=testsum+sum(cum_infections(i,:));
    end
end

testsum



%%in our model, influetial are highly important 


%%ov_cum_inv plus index

ocii = zeros(size((ov_cum_infections),1), 2);

for i=1:size((ov_cum_infections),1)
    ocii(:,1)=ov_cum_infections;
    ocii(i,2)=i;
end

ocii=sortrows(ocii,1);


bool=zeros(384,1); %% test bool

summ = zeros(384,1);

for k=384:-1:1 %%forschleife für bool -- welche personen sind ausgeschlossen

    for i=1:3840 %% für jedes experiment!!
            vec=cum_infections(i,ocii(k:384,2));   
                if(norm(vec)==0)
                    summ(k)=summ(k)+sum(cum_infections(i,:));   
                end
    end
end
  




%%totalsum = zeros(384,1);

%%for m=1:length(ov_cum_infections)
  %%  total

        
        
    
    
    