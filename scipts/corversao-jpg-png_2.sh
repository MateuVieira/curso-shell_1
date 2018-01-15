#!/bin/bash

converte_imagem(){
cd ~/workspace/Projetos/curso-shell_1/imagens-livros

if [ ! -d png ]
then
	mkdir png
fi

local imagen

for imagen in *.jpg 
do
	local imagem_sem_extensao=$(ls $imagen | awk -F. '{ print $1 }')
	convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done
}

converte_imagem 2>erros_conversao.txt

if [ $? -eq 0 ]
then 
	echo "Conversão realizada com sucesso"
else
	echo "Houve uma falar no processo"
fi
