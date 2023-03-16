#!/bin/bash

# Criação das pastas

DADOS=("cidade" "estado" "filial" "parceiro" "cliente" "subcategoria" "categoria" "item_pedido" "produto")

for i in "${DADOS[@]}"
do
	echo "$i"
    mkdir ../../raw/$i
    chmod 777 ../../raw/$i
    cd ../../raw/$i
    curl -O https://raw.githubusercontent.com/caiuafranca/dados_curso/main/$i.csv
    hdfs dfs -mkdir /datalake/raw/$i
    hdfs dfs -chmod 777 /datalake/raw/$i
    hdfs dfs -copyFromLocal $i.csv /datalake/raw/$i
    #beeline -u jdbc:hive2://localhost:10000 -f ../../scripts/hql/create_table_$i.hql 
    #beeline -u jdbc:hive2://localhost:10000 -e `Select count(*) as quantidade from desafio.{$i};`
done
