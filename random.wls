#!/usr/bin/env wolframscript
(* ::Package:: *)

(* Determination of the nodal system. First we determine the times of the events, after the arcs. *)
(* Determination of the nodal system. We use random errors.                             *)

n1=2*n;

Errores= RandomVariate[BinomialDistribution[4,0.6],n1];
Tiempos=Table[T/(n1)*(k-1),{k,1,n1}];
Tiempos=Tiempos+Errores/n1^2;

arcosalpha=Tiempos;
