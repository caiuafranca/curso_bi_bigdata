CREATE TABLE IF NOT EXISTS desafio.clientes ( 
    id_cliente string,
    nm_cliente string,
    flag_ouro string
    )
COMMENT 'Tabela de Clientes'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
location '/datalake/raw/clientes/'
TBLPROPERTIES ("skip.header.line.count"="1");