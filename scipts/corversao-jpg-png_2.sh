#!/bin/bash

caminho_imagens = ~/workspace/Projetos/curso-shell_1/imagens-livros

for imagen in $@
do
	convert $caminho_imagens/$imagen.jpg $caminho_imagens/$imagen.png
done
