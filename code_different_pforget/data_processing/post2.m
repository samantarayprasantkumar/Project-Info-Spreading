%%in our model, influetial are highly important 


%%ov_cum_inv plus index

ocii = zeros(size((ov_cum_infections),1), 2);

for i=1:size((ov_cum_infections),1)
    ocii(:,1)=ov_cum_infections;
    ocii(i,2)=i;
end

ocii=sortrows(ocii,1);


summ = zeros(384,1);

for k=384:-1:1 %%forschleife für bool -- welche personen sind ausgeschlossen

    for i=1:3840 %% für jedes experiment!!
            vec=cum_infections(i,ocii(k:384,2));   
                if(norm(vec)==0)
                    summ(k)=summ(k)+max(cum_infections(i,:));   
                end
    end
end
  
summ3=0;

for i=1:3840
    summ3=summ3+sum(cum_infections(i,:));
end

   
    
summ2 = zeros(384,1);

for k=384:-1:1
    for i=1:3840 
        if(cum_infections(i,ocii(k,2))==0);
            summ2(k)=summ2(k)+max(cum_infections(i,:));
        end
    end
end

subplot(3,1,1), plot(summ)
subplot(3,1,2), semilogy(summ)
subplot(3,1,3), plot(sort(sum(cum_infections)), 'o')

cumtotd=0;
for i=1:3840
    cumtotd=cumtotd+max(cum_infections(i,:));
end

cummvp=0;
for i=381:384
    cummvp=cummvp+summ(i)
end




    