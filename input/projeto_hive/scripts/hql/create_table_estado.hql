CREATE EXTERNAL TABLE IF NOT EXISTS desafio.estado ( 
   id_estado string,ds_estado string
    )
COMMENT 'Tabela de Estados'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
location '/datalake/raw/estado/'
TBLPROPERTIES ("skip.header.line.count"="1");