clc;clear;close all;

parameters;

N=20;
connect=full(small_world(N,10,0.5));

person(1).status=1; %

talkstep;