CREATE DATABASE Empresa;

USE Empresa;

CREATE TABLE Empresa
(
	idVeiculo INT PRIMARY KEY IDENTITY
);

CREATE TABLE Veiculos
(
	idVeiculos INT FOREIGN KEY
  ,	Modelo	   VARCHAR NOT NULL
  ,	Marca	   VARCHAR NOT NULL
);

CREATE TABLE Cliente
(
	cpf					INT NOT NULL
,	Nome				VARCHAR(200)
,	idCarrosparaAlugar	INT FOREIGN KEY
);