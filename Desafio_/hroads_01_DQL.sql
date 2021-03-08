--DQL
USE SENAI_HROADS_TARDE;

SELECT * FROM Personagens;

SELECT * FROM Classes;

SELECT Nome
FROM Classes;

SELECT * FROM Habilidades; 

SELECT COUNT (DISTINCT idHabilidades) 'Quantidade/Habilidades'
FROM Habilidades
GO

SELECT Habilidades.idHabilidades 
FROM Habilidades;


SELECT * FROM TipoHabilidades;

SELECT H.Nome AS Habilidade, TipoHabilidades.Nome AS TipoHabilidade
FROM Habilidades AS H
INNER JOIN TipoHabilidades
ON H.idTH = TipoHabilidades.idTipoHabilidades


SELECT Personagens.Nome, Classes.Nome FROM Personagens
INNER JOIN Classes
ON Personagens.idClasses = Classes.idClasses;

SELECT Personagens.Nome, Classes.Nome FROM Personagens
RIGHT JOIN Classes
ON Personagens.idClasses = Classes.idClasses;

SELECT H.Nome AS Habilidade, C.Nome AS Classe
FROM ClassesHabilidades AS CH
INNER JOIN Classes AS C
ON C.idClasses = CH.idClasses
INNER JOIN Habilidades AS H
ON H.idHabilidades = CH.idHabilidades;

SELECT Classes.Nome, H.Nome 
FROM ClassesHabilidades AS CH
INNER JOIN Classes
ON Classes.idClasses = CH.idClasses
INNER JOIN Habilidades AS H
ON H.idHabilidades = CH.idHabilidades;


SELECT H.Nome AS Habilidade, C.Nome AS Classe
FROM ClassesHabilidades AS CH
RIGHT JOIN Habilidades AS H
ON  H.idHabilidades = CH.idHabilidades
RIGHT JOIN Classes AS C
ON C.idClasses = CH.idClasses;
