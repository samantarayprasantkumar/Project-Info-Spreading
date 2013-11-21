# Project: Information Spreading

> * Group Name: becreative
> * Group participants names: Urs Lustenberger, Nino Wili, Patrick Zöchbauer
> * Project Title: Information Spreading

## General Introduction


We want to analyze the spreading of information in a Social Network. We compare a simple SIR-Model with 
homogeneous distribution of the different states (Susceptible-Infected-Recovered) with a clustered, "small-world" type network.
We expect significantly different results, a "smooth", more or less continuous evolution with the homogeneous distribution and a 
stepwise one with the clustered network. 


## The Model

<b>A) a simple SIR-model, adapted to information spreading:</b>

3 states:
 
"ignorant" - Do not know about the info.  (susceptible - S) <br>
"spreader"- know about the information and spread it. (infected - I) <br>
"stiflers" - are aware of the information but don't spread it (recoverd - R) <br>

The differential equations are:

dS/dt= -k1*I*S <br>
dI/dt= k1*S*I-k2*I*[I+R] + (here, a additional "forgetting-term" could be introduced)<br>
dR/dt= k2*I*[I+R]<br>


k1 is the rate at which spreaders informe ignorants.<br>
k2 is the rate at which spreaders become stiflers, either by meeting other spreaders or by meeting stiflers.
(this is different to the simple epidemics-modles)<br>


<b>B) an Agent-based model, taking inhomogenities into account</b>


To make sure the models are comparable, we use the same states as in A). But the evolution is different.


-At each time step, every person meets a "friend" (which means they know).<br>
-If they meet and at least one of them is a spreader , there is a probability p1 at which they talk about it. (use random numbers)<br>
-If they talk, 	and either <br>
		1) one was ignorant, both are spreaders after talking. <br>
		2) both were spreaders or one spreader and one stifler, both become stiflers after talking with a probability p2. (otherwise both stay spreaders)<br>
		
		
p1 and p2 take into account, how good the people meeting each other know each other(common friends).<br>
this is obviously very simplifying.

also, we want to investigate what happens with a personal information, because the spreading will
now probably depend on how good one knows the person the info is about.<br>


model B) might have to be adapated to make it comparable to model A)




## Fundamental Questions



- How good is the SIR model for small, clusterd networks (as facebook-friends) (taking model B) as refrence)
- are there "influentials"? or is the info spreading more or less homogeneous?
- is it possible to determine influentials by there cluster coefficient?



## Expected Results

We expect that in model B), the spreading will be "stepwise". The jumps will be induced by persons with a lot of friends and a high
cluster coefficient, "influentials". 
If this is the case, model A) would not be able to reproduce the same results, as it assumes a homogeneous distribution.




## References 

Barrat,A., Barthélemy,M. , Vespignani,A. ; Dynamical Processes on Complex Networks, Chapter 10


Watts,D.J., Dodds, P.S.; Influentials, Networks, and Public Opinions Formation


Bettencourt, L.; The power of a good idea: Quantitative modeling of the spread of ideas from epidemiological models

