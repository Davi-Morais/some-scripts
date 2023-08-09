#!/bin/bash

let CONT=-1

function mostrarConteudo() {
	
	let CONT++

	DIRETORIO=$(ls -A | egrep -v '[\.]')
	ARQUIVO=$(ls -A | egrep '[\.]' )

	for dir in $DIRETORIO
	do
		if [ $CONT != 0 ]
		then
			for (( c=1; c<=$CONT; c++ ))
		       	do
				echo -ne "\t"	
			done
		fi

		echo -ne "/$dir\n"

		cd $dir
		
		mostrarConteudo 

	done

	#for arq in $ARQUIVO
	#do
	#	if (( ${CONT} != 0 ))
	#	then
	#		for i in {0..${CONT}}
	#      		do
        #	             	echo -ne "\t"
        #        	done
	#	fi
	#	echo -ne "$arq\n"
	#done

	let CONT--
	cd ..
}


mostrarConteudo
