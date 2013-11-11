%script thats let people meet, eventually meet and talk, updates status

%% 
%Determine who meets who


%vector which stores if someone's already in a meeting with who
%0: free, k: already meeting person k, i:not meeting anybody
meeting=zeros(1,N);

%random vector, so it doesnt start at node 1 always
choose=randperm(N);


for k=1:N
    
    i=choose(k);
    
    if(meeting(i)==0)%check if i already meets somebody
        if(rand>pmeet) 
            meeting(i)=i; %doesnt meet anybody
        else
            who=0; %who: meeting partner of i
            attempt=1; %dont check forever, maybe no partner available
            while(who==0);
                who=round(rand*N+0.5); %random partner
               
                attempt=attempt+1;
                
                %check if who is not meeting, and who and i know each other
                if(meeting(who)==0 && connect(i,who))
                    meeting(i)=who; 
                    meeting(who)=i;
                else
                    if(attempt<100)who=0; 
                    else who=1; %just not 0
                    end
                end
            end
        end
    end
    
    %some can be 0, not cool for further programming
    if(meeting(i)==0) 
        meeting(i)=i;
    end
end




%% 


