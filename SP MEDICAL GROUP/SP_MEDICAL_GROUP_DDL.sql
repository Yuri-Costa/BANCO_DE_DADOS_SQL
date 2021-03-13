---------------------------DDL---------------------------

CREATE DATABASE SP_MEDICAL_GROUP;
GO

USE SP_MEDICAL_GROUP;
GO
---------------------------------------------------

CREATE TABLE Clinicas
(
	IdClinica		INT PRIMARY KEY IDENTITY,
	Cnpj			CHAR(15) UNIQUE NOT NULL,
	Endereco		VARCHAR(200),
	NomeFantasia	VARCHAR(200) UNIQUE NOT NULL,
	RazaoSocial		VARCHAR(200)
);
GO

---------------------------------------------------

CREATE TABLE Especialidades
(
	IdEspecialidade		INT PRIMARY KEY IDENTITY,
	Especialidade		VARCHAR(200) UNIQUE,
);
GO

---------------------------------------------------

CREATE TABLE Situacaoes
(
	IdSituacao			INT PRIMARY KEY IDENTITY,
	Situacao			VARCHAR(200)
);
GO

---------------------------------------------------

CREATE TABLE TipoUsuarios
(
	IdTipoUsuario		INT PRIMARY KEY IDENTITY,
	TipoUsuario			VARCHAR(200)
);
GO

---------------------------------------------------

CREATE TABLE Usuarios
(
	IdUsuario			INT PRIMARY KEY IDENTITY,
	IdTipoUsuario		INT FOREIGN KEY REFERENCES TipoUsuarios(IdTipoUsuario),
	Email				VARCHAR(200) UNIQUE NOT NULL,
	Senha				VARCHAR(200) NOT NULL,
	DataNascimento		Date NOT NULL,
	Rg					CHAR(9) UNIQUE NOT NULL,
	Telefone			INT NOT NULL,
	Cpf					CHAR(11) UNIQUE NOT NULL,
	Endereco			VARCHAR(200) NOT NULL
);
GO

---------------------------------------------------

CREATE TABLE Medicos
(
	IdMedico			INT PRIMARY KEY IDENTITY,
	IdEspecialidade		INT FOREIGN KEY REFERENCES Especialidades(IdEspecialidade),
	IdUsuario			INT FOREIGN KEY REFERENCES Usuarios(IdUsuario),
	IdClinica			INT FOREIGN KEY REFERENCES Clinicas(IdClinica),
	Nome				VARCHAR(200),
	Crm					CHAR(5) UNIQUE NOT NULL,			
);
GO

---------------------------------------------------

CREATE TABLE Pacientes
(
	IdPaciente			INT PRIMARY KEY IDENTITY,
	IdUsuario			INT FOREIGN KEY REFERENCES Usuarios(IdUsuario),
	Nome				VARCHAR(200),
	Rg					INT UNIQUE NOT NULL,
	Telefone			INT NOT NULL,
	Cpf					INT UNIQUE NOT NULL,
);
GO

---------------------------------------------------

CREATE TABLE Consultas
(
	IdConsulta			INT PRIMARY KEY IDENTITY,
	IdPaciente			INT FOREIGN KEY REFERENCES Pacientes(IdPaciente),
	IdMedico			INT FOREIGN KEY REFERENCES Medicos(IdMedico),
	IdSituacao			INT FOREIGN KEY REFERENCES Situacaoes(IdSituacao),
	DataConsulta		DATE NOT NULL
);
GO

---------------------------------------------------