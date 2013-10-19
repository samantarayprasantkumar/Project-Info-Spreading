# Project: Information Spreading

> * Group Name: becreative
> * Group participants names: Urs Lustenberger, Nino Wili, Patrick Zöchbauer
> * Project Title: Information Spreading

## General Introduction

How does information spread in a network? Our goal is to analize the spreading of information using a self-developed statistical modell, where the unkown parameter are 
are going to be estimated by the input network. 
Since nowadays almost everybody of is part of social network, we thinks it's important to visualize how much we say about ourselves and enviroments.


## The Modell

We want to implement a modell on how a (personal) information about a person X spreads in our social enviroment. 
Our modell is based on statistical methods on hand, and data given from a network (e.g. facebook) on the other. We're going to consider paramenters like:


Statistical parameter:


Let X be the person of interest. Y_i are his friends, Zyi the friends of Yi.



- Probability of meeting:
How likely is it to meet a person, that is in the intersection of Y_i and Zyi. In oder words, what is the probability to meet someone, how also knows X. So that you could tell him the news about X.


- Probability of forwarding a message:
We want to modell the prob that B tells C an Informations about A. Which is dependent on three factor: Connectednes (A,B), (A,C) and (B,C).(


- Decay of Importance:
Which means, the probability of forwarding a message decays with time (e.g. Let p=P(forwarding message). lim (t->t_0) p = c, with c in R+


Network:

Our modell will be based on data we'll collect on facebook (using facebook graph api). So our dataset consist of a list of all friends Yi of X (person of interest), and for each friend Yi, there is another list of all friends Zyi of Yi.




## Fundamental Questions


- What is the behavior of the information flow under given conditions. (e.g. tatletales)
- What are the conditions the informations stops before everone received it. 


(At the end of the project you want to find the answer to these questions)
(Formulate a few, clear questions. Articulate them in sub-questions, from the more general to the more specific. )


## Expected Results


Theoretical Goal:

We'd liek to show that the spreading stongly depends on only a few people (concepts of bottlenecks, tatletates)


Pracitcal Goal: 

Our goal is to implement the model graphically. So that one can watch the information spread in the network.



(What are the answers to the above questions that you expect to find before starting your research?)


## References 


Bettencourt, L.; The power of a good idea: Quantitative modeling of the spread of ideas from epidemiological models


(Add the bibliographic references you intend to use)
(Explain possible extension to the above models)
(Code / Projects Reports of the previous year)




## Research Methods

(Cellular Automata, Agent-Based Model, Continuous Modeling...) (If you are not sure here: 1. Consult your colleagues, 2. ask the teachers, 3. remember that you can change it afterwards)


## Other

(mention datasets you are going to use)
