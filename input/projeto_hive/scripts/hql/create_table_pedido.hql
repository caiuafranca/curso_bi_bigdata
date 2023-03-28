CREATE EXTERNAL TABLE IF NOT EXISTS desafio.pedido ( 
  id_pedido string,dt_pedido string, id_parceiro string,id_cliente string,id_filial string,vr_total_pago string
    )
COMMENT 'Tabela de Pedido'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
location '/datalake/raw/pedido/'
TBLPROPERTIES ("skip.header.line.count"="1");