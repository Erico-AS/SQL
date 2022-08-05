-- comentario

/*
comentarios
longos
*/

-- criar banco de dados
create database floricultura;

-- usando banco de dados
use floricultura;

-- criando uma tabela
create table Cliente(
	rg char (13) not null primary key,
    nome varchar (80) not null,
    telefone char (15) not null,
    endereco_comp varchar (80) not null
); 