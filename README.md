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


Let X be the person of interest. Y<sub>i</sub> are his friends, Z<sub>y<sub>i</sub></sub> the friends of Y<sub>i</sub>.



- Probability of meeting:
How likely is it to meet a person, that is in the intersection of Y<sub>i</sub> and Z<sub>y<sub>i</sub></sub>. In oder words, what is the probability to meet someone, how also knows X. So that you could tell him the news about X.


- Probability of forwarding a message:
We want to modell the prob that B tells C an Informations about A. Which is dependent on three factor: Connectednes (A,B), (A,C) and (B,C).(


- Decay of Importance:
Which means, the probability of forwarding a message decays with time.


Network:

Our modell will be based on data we'll collect on facebook (using facebook graph api). So our dataset consist of a list of all friends Yi of X (person of interest), and for each friend Yi, there is another list of all friends Z<sub>y<sub>i</sub></sub> of Y<sub>i</sub>.




## Fundamental Questions


- What is the behavior of the information flow under given conditions. (e.g. tatletales)
- What are the conditions that the information flow stops before everone received it. 



## Expected Results


Theoretical Goal:

We'd like to show that the spreading stongly depends on only a few people (concepts of bottlenecks, tatletates)


Pracitcal Goal: 

Our goal is to implement the model graphically. So that one can watch the information spread in the network.



## References 


Bettencourt, L.; The power of a good idea: Quantitative modeling of the spread of ideas from epidemiological models

