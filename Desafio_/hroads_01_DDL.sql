--DDL
CREATE DATABASE SENAI_HROADS_TARDE;

USE SENAI_HROADS_TARDE;

CREATE TABLE Classes
(
	idClasses INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
);

CREATE TABLE Personagens
(
	idPersonagens INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200)
	,idClasses INT FOREIGN KEY REFERENCES Classes(idClasses)
	,CapacidadeMaxVida INT
	,CapacidadeMaxMana INT
	,DataAtualizacao DATE
	,DataCriacao DATE
);


CREATE TABLE TipoHabilidades
(
	idTipoHabilidades INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
);


CREATE TABLE ClassesHabilidades
(
	idClasses INT FOREIGN KEY REFERENCES Classes(idClasses)
	,idHabilidades INT FOREIGN KEY REFERENCES Habilidades(idHabilidades)
);

CREATE TABLE Habilidades
(
	idHabilidades INT PRIMARY KEY IDENTITY
	,idTH INT FOREIGN KEY REFERENCES TipoHabilidades(idTipoHabilidades)
	,Nome VARCHAR(200) NOT NULL
);
