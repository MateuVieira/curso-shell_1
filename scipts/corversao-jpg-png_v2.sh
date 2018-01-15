#!/bin/bash

~/workspace/Projetos/curso-shell_1/imagens-novos-livros

varredura(){
	cd $1
	for arquivo in *
	do

		if [ -d $arquivo ]
		then
			varredura $arquivo
		else 
			#Conversao jpg para pgn
		fi

	done
}
