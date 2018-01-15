#!/bin/bash

if [ ! -d log]
then
	mkdir log
fi

processos_memoria(){
processos=$(ps -e -o pid --sort -size | head -n 11| grep [0-9])

for pid in $processos
do
	local nome_processo=$(ps -p $pid -o comm=)
	echo -n $(date +%F,%H:%M:%S,) >> $nome_processo.log
	local tamanho_processo=$(ps -p $pid size | grep [0-9])
	echo "$(bc <<< "scale=2;$tamanho_processo/1024") MB" >> $nome_processo.log
done
}

processos_memoria

if [ $? -eq 0]
then
	echo "Os arquivos foram salvos com sucesso"
else
	echo "Houve um problema durante o processo"
fi
