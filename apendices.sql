--- indica o uso do banco de dados
USE bd_16_byciclon
--- consulta as colunas da tabela
SELECT * FROM tmporaria;
--- remover uma coluna da tabela 
ALTER TABLE tmporaria
DROP COLUMN coluna02
SELECT * FROM tmporaria;
--- excluir a tabela temporaria
DROP TABLE tmporaria

USE bd_16_byciclon
ALTER TABLE tb_enderecos
DROP COLUMN  uf

ALTER TABLE tb_enderecos
ADD uf VARCHAR (50) NOT NULL