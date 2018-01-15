#!/bin/bash

caminho_imagens = ~/workspace/Projetos/curso-shell_1/imagens-livros

convert $caminho_imagens/*.jpg $caminho_imagens/imagens-livros-png/*.png
