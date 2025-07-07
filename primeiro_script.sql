---Criando meu primeiro banco de dados
/*
Comentario 
de 
Varias
linhas 
*/

create database db_16_cadastro;

use db_16_cadastro;

---Criando tabela pessoas
create table tb_pessoas(
	id_pessoas int identity (1,1) primary key,
	nome varchar(50) not null,
	idade varchar(3) not null,
	uf char(2) not null
	);

--- Inserindo registros na tabela 
insert into tb_pessoas (nome,idade,uf)
values ('Andressa', 25,'ba')
insert into tb_pessoas (nome,idade,uf)
values ('Caio',18,'sp')
insert into tb_pessoas (nome,idade,uf)
values ('Cindy',22,'al')
insert into tb_pessoas (nome,idade,uf)
values ('gabriel',19,'sp')
insert into tb_pessoas (nome,idade,uf)
values ('Rodrigo',20,'df')

--- mostra os dados que a tabela possui
select * from tb_pessoas

---- adicional uma nova coluna
alter table tb_pessoas add cidade varchar(30);
--- excluir a coluna
alter table tb_pessoas drop column cidade 
