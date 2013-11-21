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
        if(rand>4*person(k).activity+0.1) 
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
                    if(attempt<100)
                        who=0; 
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




%% change status for each meeting

check=zeros(1,N); %vector to check if status was updated, otherwise
%multiple updates in one round are possible


for i=1:N
    
    p1=i;                   %person1
    p2=meeting(i);          %person2
    
    
    %check if status wasnt updated yet and if i is actually meeting sombody
    if (check(p1)==0 && check(p2)==0 && p1~=p2)
        
        %if both are ignorant or both are stiflers nothing happens...
        
        %if one is ignorant and the other is a spreader, both become
        %spreaders
        if((status(p1)+status(p2))==1)
            if(rand<pinform) %probability that they talk about this info
            status(p1)=1;
            status(p2)=1;
            end
        
        
        %if both are spreaders, one becomes a stifler
        elseif(status(p1)==1 && status(p2)==1)
            if(rand<pforget) %probability that they forget
                if(rand<0.5)%only one of them forgets(randomly chosen)
                    status(p1)=2;
                else
                    status(p2)=2;
                end
            end
        
        %if one is a stifler and one a spreader, both become stiflers
        elseif((status(p1)+status(p2))==3)
            if(rand<pforget)  %only by a certain probability
                status(p1)=2;
                status(p2)=2;
            end
        end
    end
    %remember that you updated the status
       check(p1)=1;
       check(p2)=1;
end


