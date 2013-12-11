%figure

%hist(sum(cum_infections),20)
%xlabel('Cumulative Infections')
%ylabel('Absolute Frequency')

%figure

%plot(sort(sum(cum_infections)), 'o')

%xlabel('Person ID')
%ylabel('Cumultative infections')

figure
hold on
plot(summ,'k')
plot([0 400],[103538 103538],'--k')
plot([0 400],[8421 8421],'--k')
xlabel('Person ID')
ylabel('Infections when first x People are involed ')

