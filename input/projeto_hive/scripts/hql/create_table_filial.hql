CREATE EXTERNAL TABLE IF NOT EXISTS desafio.filial ( 
  id_filial string,ds_filial string, id_cidade string
    )
COMMENT 'Tabela de Filial'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
location '/datalake/raw/filial/'
TBLPROPERTIES ("skip.header.line.count"="1");