create database TI;
use TI;

create table Equipamentos (
	cod int not null primary key auto_increment,
    tipo_equipamento varchar(45) not null,
	estado varchar(19) not null,
    departamento_cod_fk int not null,
    foreign key (departamento_cod_fk) references Departamento (cod),
    chefe_cod_fk int not null,
    foreign key (chefe_cod_fk) references Chefe (cod)
);

create table Departamento (
	cod int not null primary key auto_increment,
    qtd_funcionarios int not null,
    nome_departamento varchar(80) not null,
    equipamento_cod_fk int not null,
    foreign key (equipamento_cod_fk) references Equipamentos (cod),
        chefe_cod_fk int not null,
    foreign key (chefe_cod_fk) references Chefe (cod)
);

create table Chefe (
	cod int not null primary key auto_increment,
    nome varchar(80) not null,
    equipamento_cod_fk int not null,
    foreign key (equipamento_cod_fk) references Equipamentos (cod),
    departamento_cod_fk int not null,
    foreign key (departamento_cod_fk) references Departamento (cod)
);

select * from Equipamentos;
describe Equipamentos;
insert into Equipamentos values 
("Mouse","Funcionando"),
("Monitor","Em manutenção"),
("Gabinete","Necessário manutenção"),
("Cabo","Funcionando"),
("Teclado","Funcionado");

select * from Departamento;
describe Departamento;
insert into Departamento values
(35,"RH",),
(55,"Gerencia"),
(67,"Administração"),
(80,"TI"),
(20,"Setor de compras");

select * from Chefe;
describe Chefe;
insert into Chefe values 
("Erico"),
("Ercio"),
("Messi"),
("Lionel"),
("Andrés");
