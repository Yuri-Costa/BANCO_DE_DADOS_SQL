CREATE DATABASE Optus_yuri

USE Optus_yuri

CREATE TABLE Album 
(
	idAlbum		INT PRIMARY KEY IDENTITY
,	Nome		VARCHAR (100)
,	Ano			INT
,	Localiza��o VARCHAR (100)
,	Dura��o		VARCHAR (100)
,	Artista		VARCHAR (100)
	
)

CREATE TABLE Usuario 
(
	Nome		VARCHAR (100)
,	Gmail		VARCHAR (100)
,	Senha       VARCHAR (100)
,	Permiss�o	VARCHAR (100)
);



