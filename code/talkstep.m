%script thats let people meet, eventually meet and talk, updates status

%% 

%vector which stores if someone's already in a meeting
%0: free, k: already meeting person k, i:not meeting anybody
meeting=zeros(1,N);


for i=1:N
    
    if(meeting(i)==0)
        if(rand>pmeet)
            meeting(i)=i; %doesnt meet anybody
        else
            who=0;
            attempt=1;
            while(who==0);
                who=round(rand*N+0.5);
               
                attempt=attempt+1;
                
                if(meeting(who)==0 && connect(i,who))
                    meeting(i)=who;
                    meeting(who)=i;
                else
                    if(attempt<100)who=0; %not more than 100 attempts to find someone
                    else who=1;
                    end
                end
            end
        end
    end
end

%% 


