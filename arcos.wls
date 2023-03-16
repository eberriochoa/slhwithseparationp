#!/usr/bin/env wolframscript
(* ::Package:: *)

arcosalphap=N[3 n1/4 arcosalpha-2 Pi * IntegerPart[(3 n1/4) arcosalpha/(2 Pi)],500];
arcosalphaW2n=arcosalpha;
evens=Range[1,n1,2]
arcosalphaYn=Part[arcosalphaW2n,evens]
arcosalphaZn=Part[arcosalphaW2n,evens+1]
alphaW2n=N[Exp[I arcosalphaW2n],100];
alphaYn=Part[alphaW2n,evens];
alphaZn=Part[alphaW2n,evens+1];
alphapwp=N[E^(I arcosalphap),100]
betas2n=Table[N[Exp[I*2*Pi/(n1)*(k1-1)],6],{k1,1,n1}];



