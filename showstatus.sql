-- tudo sobre a tabela
EXEC sp_help 'tb_produtos'

-- lista de colunas e tipos
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'tb_produtos';

-- chave primaria da tabela 
EXEC sp_pkeys 'tb_pedidos'

-- chave estrangeira da tabela 
EXEC sp_fkeys 'tb_produtos'

-- ver todas as tabelas do banco de dados em orderm crescente 
SELECT name 
FROM sys.tables
ORDER BY name ASC;
-- ver todas as tabelas do banco de dados em orderm decrescente
SELECT name 
FROM sys.tables
ORDER BY name DESC;

-- ver a distribuiçao de valores (ex: por cidade ou estado)
SELECT  cidade, COUNT (*) AS total 
FROM tb_enderecos 
GROUP BY cidade 
ORDER BY total DESC;

SELECT  uf, COUNT (*) AS total 
FROM tb_enderecos 
GROUP BY uf 
ORDER BY total DESC;

