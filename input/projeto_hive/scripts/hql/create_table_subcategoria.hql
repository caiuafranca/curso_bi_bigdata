CREATE EXTERNAL TABLE IF NOT EXISTS desafio.subcategoria ( 
   id_subcategoria string,ds_subcategoria string,id_categoria string
    )
COMMENT 'Tabela de Sub_Categorias'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
location '/datalake/raw/subcategoria/'
TBLPROPERTIES ("skip.header.line.count"="1");