#!/usr/bin/env wolframscript
(* ::Package:: *)

llista=Length[listaalpha];
listabeta=Table[Exp[I 2Pi/llista*(k-1)],{k,1,llista}];
nodojmenoslista[lista_,k_]:=Drop[1/lista[[k]](Part[lista,k]-lista),{k}];
aux=Table[nodojmenoslista[listaalpha,j],{j,1,llista}];
aux1=Table[nodojmenoslista[listabeta,j],{j,1,llista}];
aux2=Table[Part[listaalpha,j]nodojmenoslista[listaalpha,j],{j,1,llista}];
arcosalphapwllistam1=N[(llista-1) listaarcosalpha-2 Pi * IntegerPart[(llista-1) listaarcosalpha/(2 Pi)],500];
alphapwllistam1=N[Exp[I*arcosalphapwllistam1],100];
factoresderivadas=Table[Product[aux[[k]][[j]]/aux1[[k]][[j]],{j,1,llista-1}],{k,1,llista}];
llista
derivadas=llista*(alphapwllistam1*factoresderivadas)
Abs[derivadas]
factoresderivadassegundas=Table[Sum[2/aux2[[k]][[j]],{j,1,llista-1}],{k,1,llista}];



