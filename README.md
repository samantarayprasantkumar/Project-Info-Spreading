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

A) a simple SIR-model, adapted to information spreading:

3 states:
 
"ignorant" - Do not know about the info.  (susceptible - S)
"spreader"- know about the information and spread it. (infected - I)
"stiflers" - are aware of the information but don't spread it (recoverd - R)

The differential equations are:

dS/dt= -k1*I*S
dI/dt= k1*S*I-k2*I*[I+R] (here, a additional "forgetting-term" could be introduced)
dR/dt= k2*I*[I+R]

k1 is the rate at which spreaders informe ignorants.
k2 is the rate at which spreaders become stiflers, either by meeting other spreaders or by meeting stiflers.
(this is different to the simple epidemics-modles)

B) an Agent-based model, taking inhomogenities into account

To make sure the models are comparable, we use the same states as in A). But the evolution is different.

-At each time step, every person meets a "friend" (which means they know).
-If they meet and at least one of them is a spreader , there is a probability p1 at which they talk about it. (use random numbers)
-If they talk, 	and.... 
		one was ignorant, both are spreaders after talking. 
		both were spreaders or one spreader and one stifler, both become stiflers after talking with a probability p2. (otherwise both stay spreaders)
		
		
p1 and p2 take into account, how good the people meeting each other know (number of common friends).
this is obviously very simplifying.

also, we want to investigate what happens with a personal information, because the spreading will
now probably depend on how good one knows the person the info is about.

model B) might have to be adapated to make it comparable to model A)



## Fundamental Questions


- How good is the SIR model for small, clusterd networks (as facebook-friends) (taking model B) as refrence)
- are there "influentials"? or is the info spreading more or less homogeneous?
- is it possible to determine influentials by their cluster coefficient?



## Expected Results

We expect that in model B), the spreading will be "stepwise". The jumps will be induced by persons with a lot of friends and a high
cluster coefficient, "influentials". 
If this is the case, model A) would not be able to reproduce the same results, as it assumes a homogeneous distribution.





## References 

Barrat,A., Barthélemy,M. , Vespignani,A. ; Dynamical Processes on Complex Networks, Chapter 10

Watts,D.J., Dodds, P.S.; Influentials, Networks, and Public Opinions Formation

Bettencourt, L.; The power of a good idea: Quantitative modeling of the spread of ideas from epidemiological models

