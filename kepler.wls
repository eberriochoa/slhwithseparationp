#!/usr/bin/env wolframscript
(* ::Package:: *)

T=8640000
e=25/100
n1=2*n

Tiempos=Table[T/(n1+1)*(k-1),{k,1,n1}];
AnomaliasE=Table[0,{k,1,n1}];
AnomaliasV=Table[0,{k,1,n1}];
k=2;

(Label[begbucprin];
t=Tiempos[[k]];
kbuc1=1;
kfinbuc1=15;
(Label[begbuc1];
Me=2Pi/T*t;
listabuc1=FindRoot[E1-e Sin[E1]==Me,{E1,Me-e/2}];
E1=E1/.listabuc1;
\[CapitalTheta]=If[ArcTan[Sqrt[(1+e)/(1-e)]*Tan[E1/2]]>0,2 ArcTan[Sqrt[(1+e)/(1-e)]*Tan[E1/2]],2Pi+2 ArcTan[Sqrt[(1+e)/(1-e)]*Tan[E1/2]]];
errorbuc1=\[CapitalTheta]-(2 Pi*(n1+1))*t/T+2* Pi*(k-1);
errortiempobuc1=errorbuc1*T/(2 Pi*n1);
t=t+errortiempobuc1;
kbuc1=kbuc1+1;
If[kbuc1<kfinbuc1,Goto[begbuc1]]);
Tiempos[[k]]=t;
k=k+1;
If[k<n1+1,Goto[begbucprin]])

arcosalpha=Tiempos*2 Pi/T;
