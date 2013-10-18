# Project: Information Spreading

> * Group Name: becreative
> * Group participants names: Urs Lustenberger, Nino Wili, Patrick Zöchbauer
> * Project Title: Information Spreading

## General Introduction

How do Informations spread in a given network? 



(States your motivation clearly: why is it important / interesting to solve this problem?)
(Add real-world examples, if any)
(Put the problem into a historical context, from what does it originate? Are there already some proposed solutions?)

## The Modell

We want to implement a modell on how personals informations about a person X spreads in a given network (e.g. facebook)
Our modell is based on probability theory and de data given from the network one uses. We're going to consider paramenters like:


Probability theory:


Let X be the person of interest. Y_i are his friends, Zyi the friends of Yi.



- Probability of meeting:
How likely is it to meet a person, that is in the intersection of Y_i and Zyi. In oder words, what the probability to meet someone, how also knows X. So that you could tell him the news about X.


- Probability of forwarding a message:
We want to modell the prob that B tells C an Informations about A. Which is dependent on three factor: Connectednes (A,B), (A,C) and (B,C)


- Decay of Importance:
Which means, the probability of forwarding a message decays with time (e.g. Let p=P(forwarding message). lim (t->t_0) p = c, with c in R+


Network:

Our modell will be based on data we'll collect on facebook. So our dataset consist of a list of all friends Yi of X (person of interest), and for each friend Yi, there is another list of all friends Zyi of Yi.




(Define dependent and independent variables you want to study. Say how you want to measure them.) (Why is your model a good abtraction of the problem you want to study?) (Are you capturing all the relevant aspects of the problem?)




## Fundamental Questions


- What is the behavior of the information flow under given conditions. (e.g. tatletales)
- What are the conditions the informations stops before everone received it. 
- 


(At the end of the project you want to find the answer to these questions)
(Formulate a few, clear questions. Articulate them in sub-questions, from the more general to the more specific. )


## Expected Results


Theoretical Goal:

We'd liek to show that the spreading stongly depends on only a few people (concepts of bottlenecks, tatletates)


Pracitcal Goal: 

Our goal is to implement the model graphically. So that one can watch the information spread in the network.



(What are the answers to the above questions that you expect to find before starting your research?)


## References 

(Add the bibliographic references you intend to use)
(Explain possible extension to the above models)
(Code / Projects Reports of the previous year)


## Research Methods

(Cellular Automata, Agent-Based Model, Continuous Modeling...) (If you are not sure here: 1. Consult your colleagues, 2. ask the teachers, 3. remember that you can change it afterwards)


## Other

(mention datasets you are going to use)
