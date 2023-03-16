#!/usr/bin/env wolframscript
(* ::Package:: *)

posicion[t_]:=Piecewise[ {{Pi/2-ArcTan[Sin[t],.6*Cos[t]],0<=t<=Pi/2},{-ArcTan[Sin[t],.6*Cos[t]]+Pi/2,Pi/2<=t<=3Pi/2}},-ArcTan[Sin[t],.6Cos[t]]+5/2 Pi]

posicion[t_]:=Piecewise[ {{Pi/2-ArcTan[Sin[t],N[Cos[betacardan]]*Cos[t]],0<=t<=Pi/2},{-ArcTan[Sin[t],N[Cos[betacardan]]*Cos[t]]+Pi/2,Pi/2<=t<=3Pi/2}},-ArcTan[Sin[t],N[Cos[betacardan]]Cos[t]]+5/2 Pi]

n1=2*n;
Tiempos=Table[T/(n1+1)*(k-1),{k,1,n1}];

k=2;

(Label[begbucprin];
t=Tiempos[[k]];
kbuc1=1;
kfinbuc1=15;
(Label[begbuc1];

\[CapitalTheta]=posicion[t];
errorbuc1=\[CapitalTheta]-(2 Pi*(n1+1))*t/T+2* Pi*(k-1);
errortiempobuc1=errorbuc1*T/(2 Pi*n1);
t=t+errortiempobuc1;
kbuc1=kbuc1+1;
If[kbuc1<kfinbuc1,Goto[begbuc1]]);
Tiempos[[k]]=t;
k=k+1;
If[k<n1+1,Goto[begbucprin]])

Tiempos;

arcosalpha={};

contador=1;
(Label[beg];
AppendTo[arcosalpha,posicion[Tiempos[[contador]]]];  
contador=contador+1;
If[contador<n1+1,Goto[beg]])

arcosalpha; 
(* para revision de arcos con Hector*)
(*arcosalphap=N[3 n1/4 arcosalpha-2 Pi * IntegerPart[(3 n1/4) arcosalpha/(2 Pi)],500];
arcosalphaW2n=arcosalpha;
evens=Range[1,n1,2];
arcosalphaYn=Part[arcosalpha,evens];
arcosalphaZn=Part[arcosalpha,evens+1];
alphaW2n=N[Exp[I arcosalphaW2n],100];
alphaYn=Part[alphaW2n,evens];
alphaZn=Part[alphaW2n,evens+1];
alphapwp=N[E^(I arcosalphap),100];
betas2n=Table[N[Exp[I*2*Pi/(n1)*(k1-1)],6],{k1,1,n1}];*)

