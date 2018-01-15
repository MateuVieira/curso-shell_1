#!/bin/bash

cd ~/workspace/Projetos/curso-shell_1/imagens-livros

for imagen in *.jpg
do
	convert $imagen.jpg $imagen.png
done
