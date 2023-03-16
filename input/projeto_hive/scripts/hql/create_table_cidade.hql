CREATE TABLE IF NOT EXISTS desafio.cidade ( 
    id_cidade string,
    ds_cidade string,
    id_estado string
    )
COMMENT 'Tabela de Cidade'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
location '/datalake/raw/cidade/'
TBLPROPERTIES ("skip.header.line.count"="1");