beeline -u jdbc:hive2://localhost:10000

create database desafio;
use desafio;

CREATE TABLE IF NOT EXISTS desafio.pedidos ( 
    id_pedido string,
    dt_pedido string,
    id_parceiro string,
    id_cliente string,
    id_filial string,
    vr_total_pago string
    )
COMMENT 'Tabela de Pedidos'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
location '/datalake/raw/pedidos/'
TBLPROPERTIES ("skip.header.line.count"="1");