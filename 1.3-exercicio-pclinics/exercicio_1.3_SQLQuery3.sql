CREATE DATABASE clinica;

USE clinica;

CREATE TABLE clinica
(
	Funcionarios	VARCHAR(100)
,	idPets			INT PRIMARY KEY IDENTITY
);

CREATE TABLE Pets
(
	Nome				VARCHAR(100)
,	Tipo				VARCHAR(100)
,	Raça				VARCHAR(100)
,	Dono				VARCHAR(100) NOT NULL
,	DataDeNascimento	VARCHAR(100) NOT NULL
,	idPets				INT FOREIGN KEY

);