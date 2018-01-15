#!/bin/bash



converte_imagem(){
	
	local caminho_imagem=$1
	local imagem_sem_extemsao=$(ls $caminho_imagem | awk -F. '{ print $1 }')
	convert $imagem_sem_extemsao.jpg $imagem_sem_extemsao.png
}
varredura(){
	cd $1
	for arquivo in *
	do
		local caminho_arquivo=$(find ~/workspace/Projetos/curso-shell_1/imagens-novos-livros -name $arquivo)
		if [ -d $caminho_arquivo ]
		then
			varredura $caminho_arquivo
		else 
			converte_imagem $caminho_arquivo
		fi

	done
}

varredura ~/workspace/Projetos/curso-shell_1/imagens-novos-livros 2>erros_conversao.txt
if [ $? -eq 0 ]
then 
	echo "Conversao realizada com sucesso"
else 
	echo "Houve um erro no processo"
fi

