#!/bin/bash

DIRETORIO="lista"

if [ -d "./$DIRETORIO" ]
then 
	cd "$DIRETORIO"
	for i in {1..279}; do
		rm -R "questao$i"	
	done

	cd ..
	rm -R lista
else
	echo "Nao há o diretorio: $DIRETORIO"
fi
