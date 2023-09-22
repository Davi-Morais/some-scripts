#!/bin/bash

DIRETORIO="lista"

if [ ! -d "./$DIRETORIO" ]
then 
	mkdir "$DIRETORIO"
fi

cd "$DIRETORIO"

for i in {1..279}; do
	mkdir "questao$i"	
done


