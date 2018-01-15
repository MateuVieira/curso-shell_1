#!/bin/bash

cd ~/workspace/Projetos/curso-shell_1/imagens-livros

if [ ! -d ong ]
then
	mkdir png
fi

for imagen in *.jpg 
do
	imagem_sem_extensao=$(ls $imagen | awk -F. '{ print $1 }')
	convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done
