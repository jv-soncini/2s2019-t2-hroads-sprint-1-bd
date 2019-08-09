-- criar Banco
create database SENAI_HROADS_TARDE 

-- hanilitar os proximos comandos somente pra esse banco
use SENAI_HROADS_TARDE

--criar tabela dos Tipos De Habilidades
create table TipoDeHabilidade
(
	IdTipo int primary key identity
	,Tipo varchar(200) not null unique
);

--criar tabela das Habilidades
create table Habilidades
(
	IdHabilidades int primary key identity
	,Nome varchar(200) not null unique
);

--criar tabela das Classes
create table Classes
(
	IdClasse int primary key identity
	,Nome varchar(200) not null unique
);

--Criar tabela intermediaria entre classes e habilidades
create table ClassesHabilidades
(
	IdClasse int foreign key references Classes (IdClasse)
	,IdHabilidade int foreign key references Habilidades (IdHabilidades)
);

--Criar tabela de Personagens
create table Personagem 
(
	IdPersonagem int primary key identity
	,Nome varchar(200) not null unique
	,HPMax int not null
	,ManaMax int not null
	,DataDeAtualiazacao date
	,DataDeCriacao date
	,IdClasse int foreign key references Classes (IdClasse)
);

--esqueci o foreign do IdTipo na tabela habilidades

Alter Table Habilidades ADD IdTipo int foreign key references TipoDeHabilidade (IdTipo)

