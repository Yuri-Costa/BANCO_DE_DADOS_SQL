---------DQL------
USE SP_MEDICAL_GROUP;

Select * FROM Clinicas;
Select * FROM Especialidades;
Select * FROM Medico;
Select * FROM Paciente;
Select * FROM Consultas;
Select * FROM Situação;
Select * FROM TipoUsuario;
Select * FROM Usuario;

--------------------------------------------------------------

---- AQUI O ADMINISTRADOR MOSTRA OS DADOS DA CLINICA  ----

Select * FROM Clinicas;

--------------------------------------------------------------

----AQUI ESTÁ TODAS AS CONSULTAS COM NOMES DOS PACIENTES------

Select IdConsulta, Paciente.IdPaciente, Paciente.Nome AS NomePaciente, Medico.NomeMedico, Especialidades.Especialidade, IdSituacao, DataConsulta from Consultas
INNER JOIN Paciente
ON Paciente.IdPaciente = Consultas.IdPaciente
INNER JOIN Medico
ON Consultas.IdMedico = Medico.IdMedico
INNER JOIN Especialidades
ON Medico.IdEspecialidade = Especialidades.IdEspecialidade

--------------------------------------------------------------

---- AQUI O PACIENTE ALEXANDRE CONSEGUE VER APENAS A SUAS CONSULTAS ----

Select IdConsulta, Paciente.IdPaciente, Paciente.Nome AS NomePAciente, Medico.NomeMedico, Especialidades.Especialidade, IdSituacao, DataConsulta from Consultas
INNER JOIN Paciente
ON Paciente.IdPaciente = Consultas.IdPaciente
INNER JOIN Medico
ON Consultas.IdMedico = Medico.IdMedico
INNER JOIN Especialidades
ON Medico.IdEspecialidade = Especialidades.IdEspecialidade
Where Paciente.Nome = 'Alexandre'

-------------------------------------------------------------------------

---- AQUI O PACIENTE FERNANDO CONSEGUE VER APENAS A SUAS CONSULTAS ----
Select IdConsulta, Paciente.IdPaciente, Paciente.Nome AS NomePAciente, Medico.NomeMedico, Especialidades.Especialidade, IdSituacao, DataConsulta from Consultas
INNER JOIN Paciente
ON Paciente.IdPaciente = Consultas.IdPaciente
INNER JOIN Medico
ON Consultas.IdMedico = Medico.IdMedico
INNER JOIN Especialidades
ON Medico.IdEspecialidade = Especialidades.IdEspecialidade
Where Paciente.Nome = 'Fernando'

-------------------------------------------------------------------------

---- AQUI O PACIENTE HENRIQUE CONSEGUE VER APENAS A SUAS CONSULTAS ----
Select IdConsulta, Paciente.IdPaciente, Paciente.Nome AS NomePaciente, Medico.NomeMedico, Especialidades.Especialidade, IdSituacao, DataConsulta from Consultas
INNER JOIN Paciente
ON Paciente.IdPaciente = Consultas.IdPaciente
INNER JOIN Medico
ON Consultas.IdMedico = Medico.IdMedico
INNER JOIN Especialidades
ON Medico.IdEspecialidade = Especialidades.IdEspecialidade
Where Paciente.Nome = 'Henrique'

-------------------------------------------------------------------------

---- AQUI O PACIENTE MARIANA CONSEGUE VER APENAS A SUAS CONSULTAS ----
Select IdConsulta, Paciente.IdPaciente, Paciente.Nome AS NomePaciente, Medico.NomeMedico, Especialidades.Especialidade, IdSituacao, DataConsulta from Consultas
INNER JOIN Paciente
ON Paciente.IdPaciente = Consultas.IdPaciente
INNER JOIN Medico
ON Consultas.IdMedico = Medico.IdMedico
INNER JOIN Especialidades
ON Medico.IdEspecialidade = Especialidades.IdEspecialidade
Where Paciente.Nome = 'Mariana'

-------------------------------------------------------------------------

---- AQUI A MEDICA HELENA STRADA CONSEGUE VER APENAS A SUAS CONSULTAS AGENDADAS ----
Select IdConsulta, Paciente.IdPaciente, Paciente.Nome AS NomePaciente, Medico.NomeMedico, Especialidades.Especialidade, IdSituacao, DataConsulta from Consultas
INNER JOIN Paciente
ON Paciente.IdPaciente = Consultas.IdPaciente
INNER JOIN Medico
ON Consultas.IdMedico = Medico.IdMedico
INNER JOIN Especialidades
ON Medico.IdEspecialidade = Especialidades.IdEspecialidade
Where Medico.NomeMedico = 'Helena Strada' AND Consultas.IdSituacao = 'Agendada'

-------------------------------------------------------------------------

---- AQUI O MEDICO ROBERTO POSSARLE CONSEGUE VER APENAS A SUAS CONSULTAS AGENDADAS ----
Select IdConsulta, Paciente.IdPaciente, Paciente.Nome AS NomePaciente, Medico.NomeMedico, Especialidades.Especialidade, IdSituacao, DataConsulta from Consultas
INNER JOIN Paciente
ON Paciente.IdPaciente = Consultas.IdPaciente
INNER JOIN Medico
ON Consultas.IdMedico = Medico.IdMedico
INNER JOIN Especialidades
ON Medico.IdEspecialidade = Especialidades.IdEspecialidade
Where Medico.NomeMedico = 'Roberto Possarle' AND Consultas.IdSituacao = 'Agendada'

-------------------------------------------------------------------------

---- AQUI O MEDICO RICARDO LEMOS CONSEGUE VER APENAS A SUAS CONSULTAS AGENDADAS ----
Select IdConsulta, Paciente.IdPaciente, Paciente.Nome AS NomePaciente, Medico.NomeMedico, Especialidades.Especialidade, IdSituacao, DataConsulta from Consultas
INNER JOIN Paciente
ON Paciente.IdPaciente = Consultas.IdPaciente
INNER JOIN Medico
ON Consultas.IdMedico = Medico.IdMedico
INNER JOIN Especialidades
ON Medico.IdEspecialidade = Especialidades.IdEspecialidade
Where Medico.NomeMedico = 'Ricardo Lemos' AND Consultas.IdSituacao = 'Agendada'

-------------------------------------------------------------------------
---- AQUI O MEDICO RICARDO LEMOS CONSEGUE VER APENAS A SUAS CONSULTAS  ----

Select IdConsulta, Paciente.Nome AS NomePaciente, Paciente.Rg, Paciente.Cpf, Paciente.Telefone, Medico.NomeMedico, IdSituacao AS Situação, DataConsulta from Consultas
INNER JOIN Paciente
ON Paciente.IdPaciente = Consultas.IdPaciente
INNER JOIN Medico
ON Consultas.IdMedico = Medico.IdMedico
INNER JOIN Especialidades
ON Medico.IdEspecialidade = Especialidades.IdEspecialidade
Where Medico.NomeMedico = 'Ricardo Lemos' 

--AQUI FOI RETORNADO O NUMERO DE USUARIOS QUE EXISTEM-----

SELECT COUNT (Usuario.Idusuario) as QUANTIDADE_DE_USUARIOS FROM Usuario

-------------------------------------------------------------------------

--DATA DE NASCIMENTO DOS USUARIOS CONVERTIDAS PARA (MM-DD-YYYY) USA
SELECT CONVERT(VARCHAR,DataNascimento,110) AS DATA_NASCIMENTO_FORMATADA FROM Usuario

-------------------------------------------------------------------------

--AQUI FOI RETORNADO O MEDICO POR ESPECIALIDADE QUE EXISTEM-----
SELECT COUNT(Medico.IdMedico) as QNT_POR_ESPECIALIDADE, Especialidades.Especialidade --COLUNAS
FROM Medico -- TABELA
INNER JOIN Especialidades -- TABELA PARA O JOIN
ON  Especialidades.IdEspecialidade = Medico.IdEspecialidade -- RELAÇÃO ENTRE TABELAS, ONDE SEJA IGUAL O ID DA ESPECIALIDADE E O ID DA ESPECIALIDADE DENTRO DA TABELA MEDICOS 
GROUP BY Especialidades.IdEspecialidade, Especialidades.Especialidade;

-------------------------------------------------------------------------
