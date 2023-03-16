#!/usr/bin/env wolframscript
(* ::Package:: *)

n1=2*n;



 (*This sequence search for the arguments of the roots of a paraorthogonal polynomial*)



fRS[w_,qq_]=\!\(
\*UnderoverscriptBox[\(\[Product]\), \(j = 0\), \(\[Infinity]\)]\((1 - w\ \ qq^j)\)\);qq=5/100;q1=N[qq^(1/2),50]

FSzego1[z_]=(1+z/2) (1+z/2)(1+I z/4) (1-I z/4) (*Example related with a Bernstein Szego measure*)

FSzego2[z_]=fRS[-q1 z,qq] (*Example related with a Roger Szego measure*)





FSzego[z_]=FSzego1[z]

fobj[x_]=Arg[FSzego[E^(x I)]/(E^(I (n1) x) FSzego[E^(-x I)])];
erroradf=10^(-12);
maximo=1.83;


(* First approximation *)

lista1={0}
contador=1
                                                                                
(Label[ciclo];contador=contador+1;a=N[Last[lista1]+(2 Pi)/n1-(2 Pi maximo)/n1^2,30]  ;
(Label[beg]; est=N[a+(N[fobj[a],30])/(n1-maximo),25]; a=est;If[Abs[fobj[a]]>erroradf,Goto[beg]]);
lista1=Append[lista1,est];If[Length[lista1]<n1,Goto[ciclo]])
listacompleja1=E^(I lista1);

(* Refination *)

listaref1=z/. FindRoot[FSzego[z]-z^(n1) FSzego[1/z],{z,listacompleja1},WorkingPrecision->30];


mas2pi[x_]=FractionalPart[(x+2Pi)/(2 Pi)]*2 Pi;Listable[mas2pi];

arcosalpha=mas2pi[Arg[listaref1]];
(*arcosalphap=N[3 n1/4 arcosalpha-2 Pi * IntegerPart[(3 n1/4) arcosalpha/(2 Pi)],500]
arcosalphaW2n=arcosalpha;
evens=Range[1,n1,2];
arcosalphaYn=Part[arcosalpha,evens];
arcosalphaZn=Part[arcosalpha,evens+1];
alphaW2n=N[Exp[I arcosalphaW2n],100];
alphaYn=Part[alphaW2n,evens];
alphaZn=Part[alphaW2n,evens+1];
alphasp=N[E^(I arcosalphap),100];
betas2n=Table[N[Exp[I*2*Pi/(n1)*(k1-1)],6],{k1,1,n1}];*)

