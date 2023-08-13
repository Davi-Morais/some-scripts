#!/bin/bash

let CONT=-1

function mostrarConteudo() {
	
	let CONT++
	
	DIRETORIO=$(ls -lA | egrep '^[d]' | awk '{ print $9 }');


	for dir in $DIRETORIO
	do
		if [ $CONT != 0 ]
		then
			for (( c=1; c<=$CONT; c++ ))
		       	do
				echo -ne "\t"	
			done
		fi

		echo -ne "/$dir:\n"

		cd $dir
		
		mostrarConteudo 

	done
	
	ARQUIVO=$(ls -lA | egrep '^[-]' | awk '{ print $9 }');

	for i in $ARQUIVO
	do
		if [ $CONT != 0 ]
		then
			for (( c=1; c<=$CONT; c++ ))
	      		do
        	             	echo -ne "\t"
                	done
		fi

		echo -ne "$i\n"
	done


	let CONT--
	cd ..
}


mostrarConteudo
