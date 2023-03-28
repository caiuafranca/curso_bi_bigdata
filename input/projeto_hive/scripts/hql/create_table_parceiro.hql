CREATE EXTERNAL TABLE IF NOT EXISTS desafio.parceiro ( 
   id_parceiro string, nm_parceiro string
    )
COMMENT 'Tabela de Parceiro'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
location '/datalake/raw/parceiro/'
TBLPROPERTIES ("skip.header.line.count"="1");