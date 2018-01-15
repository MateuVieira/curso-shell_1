#!/bin/bash

cd ~/workspace/Projetos/curso-shell_1/imagens-livros

for imagen in *.jpg 
do
	imagem_sem_extensao = $(ls $imagen| awk -F. '{ print $1 }')
	convert $imagen_sem_extensao.jpg $imagen_sem_extensao.png
done
