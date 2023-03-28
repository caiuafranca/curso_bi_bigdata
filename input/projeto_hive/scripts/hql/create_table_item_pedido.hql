CREATE EXTERNAL TABLE IF NOT EXISTS desafio.item_pedido ( 
   id_pedido string ,id_produto string, quantidade string, vr_unitario string
    )
COMMENT 'Tabela de Itens de Pedido'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
STORED AS TEXTFILE
location '/datalake/raw/item_pedido/'
TBLPROPERTIES ("skip.header.line.count"="1");