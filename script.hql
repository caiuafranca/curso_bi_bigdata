CREATE TABLE IF NOT EXISTS aula_hive.alunos ( 
    id_discente string,
    nome string,
    ano_ingresso string,
    periodo_ingresso string,
    nivel string,
    id_forma_ingresso string,
    id_curso string
    )
COMMENT 'Tabela de Alunos'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/aula_hive/';