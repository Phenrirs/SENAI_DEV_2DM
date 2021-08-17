--INICIO DE DQL

USE Pclinics
GO 

SELECT * FROM Endere�o

SELECT * FROM Tipo

SELECT * FROM Donos

SELECT * FROM Ra�a

SELECT * FROM Clinica

SELECT * FROM Veterinarios

SELECT * FROM Pets

SELECT * FROM Atendimentos

--JOINS
----ESTRUTURA DO JOIN!
--SELECT campo1,campo2 FROM Tabela1
--TIPO JOIN Tabela2
--ON tabela1.campo1 = tabela2.campo2

--OBS: tabela1.campo1 � PK
--	 tabela2.campo2 � FK (ou vice-versa)

--LEFT JOIN

SELECT * FROM Endere�o
LEFT JOIN Clinica
ON Endere�o.idEndere�o = Clinica.idEndere�o

SELECT * FROM Clinica
LEFT JOIN Veterinarios
ON Clinica.idClinica = Veterinarios.idClinica

SELECT * FROM Veterinarios
LEFT JOIN Atendimentos
ON Veterinarios.idVeterinarios = Atendimentos.idVeterinarios

SELECT * FROM Pets
LEFT JOIN Atendimentos
ON Pets.idPets = Atendimentos.idPets

SELECT * FROM Pets
LEFT JOIN Ra�a
ON Pets.idRa�a = Ra�a.idRa�a

SELECT * FROM Ra�a
LEFT JOIN Tipo
ON Ra�a.idTipo = Tipo.idTipo

SELECT * FROM Donos
LEFT JOIN Pets
ON Donos.idDonos = Pets.idDonos

SELECT * FROM Tipo
LEFT JOIN Ra�a
ON Tipo.idTipo = Ra�a.idTipo


--FIM DO LEFT JOIN

--LEFT JOIN SEM CHAVE ESTRANGEIRA


SELECT nomeClinica,nomeEndere�o FROM Endere�o
LEFT JOIN Clinica
ON Endere�o.idEndere�o = Clinica.idEndere�o

SELECT nomeClinica,nomeVeterinarios FROM Clinica
LEFT JOIN Veterinarios
ON Clinica.idClinica = Veterinarios.idClinica

SELECT nomeVeterinarios,Dias,Horas FROM Veterinarios
LEFT JOIN Atendimentos
ON Veterinarios.idVeterinarios = Atendimentos.idVeterinarios

SELECT nomePets,idade,Dias,Horas FROM Pets
LEFT JOIN Atendimentos
ON Pets.idPets = Atendimentos.idPets

SELECT nomePets,nomeRa�a FROM Pets
LEFT JOIN Ra�a
ON Pets.idRa�a = Ra�a.idRa�a

SELECT nomeRa�a,nomeTipo FROM Ra�a
LEFT JOIN Tipo
ON Ra�a.idTipo = Tipo.idTipo

SELECT nomeDonos,nomePets FROM Donos
LEFT JOIN Pets
ON Donos.idDonos = Pets.idDonos

SELECT nomeTipo,nomeRa�a FROM Tipo
LEFT JOIN Ra�a
ON Tipo.idTipo = Ra�a.idTipo


--FIM DO JOIN SEM CHAVE ESTRANGEIRA


--RIGHT JOIN


SELECT * FROM Ra�a
RIGHT JOIN Pets
ON Ra�a.idRa�a = Pets.idRa�a

SELECT * FROM  Tipo
RIGHT JOIN Ra�a
ON Tipo.idTipo = Ra�a.idTipo

--Por que a Tipo Ra�a LEFT da mais dados do que a Tipo Ra�a RIGHT?

--FIM DO RIGHT JOIN

--RIGHT JOIN SEM CHAVE ESTRANGEIRA:

SELECT * FROM Ra�a
RIGHT JOIN Pets
ON Ra�a.idRa�a = Pets.idRa�a

SELECT * FROM  Tipo
RIGHT JOIN Ra�a
ON Tipo.idTipo = Ra�a.idTipo

--FIM DO RIGHT JOIN SEM CHAVE ESTRANGEIRA: 

--INICIO DO INNER JOIN

SELECT * FROM Endere�o
INNER JOIN Clinica
ON Endere�o.idEndere�o = Clinica.idEndere�o

SELECT * FROM Clinica
INNER JOIN Veterinarios
ON Clinica.idClinica = Veterinarios.idClinica

SELECT * FROM Veterinarios
INNER JOIN Atendimentos
ON Veterinarios.idVeterinarios = Atendimentos.idVeterinarios

SELECT * FROM Pets
INNER JOIN Atendimentos
ON Pets.idPets = Atendimentos.idPets

SELECT * FROM Pets
INNER JOIN Ra�a
ON Pets.idRa�a = Ra�a.idRa�a

SELECT * FROM Ra�a
INNER JOIN Tipo
ON Ra�a.idTipo = Tipo.idTipo

SELECT * FROM Donos
INNER JOIN Pets
ON Donos.idDonos = Pets.idDonos

SELECT * FROM Tipo
INNER JOIN Ra�a
ON Tipo.idTipo = Ra�a.idTipo


--FIM DO INNER JOIN

--INICIO DO INNER JOIN SEM CHAVE ESTRANGEIRA:

SELECT nomeEndere�o,nomeClinica FROM Endere�o
INNER JOIN Clinica
ON Endere�o.idEndere�o = Clinica.idEndere�o

SELECT nomeClinica,nomeVeterinarios FROM Clinica
INNER JOIN Veterinarios
ON Clinica.idClinica = Veterinarios.idClinica

SELECT nomeVeterinarios,Dias,Horas FROM Veterinarios
INNER JOIN Atendimentos
ON Veterinarios.idVeterinarios = Atendimentos.idVeterinarios

SELECT nomePets,idade,Dias,Horas FROM Pets
INNER JOIN Atendimentos
ON Pets.idPets = Atendimentos.idPets

SELECT nomePets,idade,nomeRa�a FROM Pets
INNER JOIN Ra�a
ON Pets.idRa�a = Ra�a.idRa�a

SELECT nomeRa�a,nomeTipo FROM Ra�a
INNER JOIN Tipo
ON Ra�a.idTipo = Tipo.idTipo

SELECT nomeDonos,nomePets FROM Donos
INNER JOIN Pets
ON Donos.idDonos = Pets.idDonos

SELECT nomeTipo,nomeRa�a FROM Tipo
INNER JOIN Ra�a
ON Tipo.idTipo = Ra�a.idTipo


--FIM DO INNER JOIN SEM CHAVE ESTRANGEIRA

--INICIO FULL OUTER COM MULTIPLOS JOINs

SELECT * FROM Atendimentos
FULL OUTER JOIN Pets
ON Atendimentos.idPets = Pets.idPets
FULL OUTER JOIN Ra�a
ON Pets.idRa�a = Ra�a.idRa�a
FULL OUTER JOIN Tipo
ON Ra�a.idTipo = Tipo.idTipo

--FIM FULL OUTER JOIN

--RESPOSTAS:
--DADOS DOS VETERINARIOS

SELECT nomePets,nomeDonos FROM Pets
LEFT JOIN Donos
ON Pets.idDonos = Donos.idDonos

--DADOS DOS ATENDIMENTOS

SELECT nomeVeterinarios,nomePets,nomeRa�a,nomeTipo,nomeClinica FROM Atendimentos
LEFT JOIN Veterinarios
ON Atendimentos.idVeterinarios = Veterinarios.idVeterinarios
RIGHT JOIN Clinica
ON Veterinarios.idCLinica = Clinica.idClinica
RIGHT JOIN Pets
ON Atendimentos.idPets = Pets.idPets
INNER JOIN Ra�a
ON Pets.idRa�a = Ra�a.idRa�a
FULL OUTER JOIN Tipo
ON Ra�a.idTipo = Tipo.idTipo

 --SEM A LINHA DOS "TIPOS ARTR�PODES"

SELECT nomeVeterinarios,nomePets,nomeRa�a,nomeTipo,nomeClinica FROM Atendimentos
LEFT JOIN Veterinarios
ON Atendimentos.idVeterinarios = Veterinarios.idVeterinarios
RIGHT JOIN Clinica
ON Veterinarios.idCLinica = Clinica.idClinica
RIGHT JOIN Pets
ON Atendimentos.idPets = Pets.idPets
INNER JOIN Ra�a
ON Pets.idRa�a = Ra�a.idRa�a
INNER JOIN Tipo
ON Ra�a.idTipo = Tipo.idTipo

--INICIO SELECT LETRAS ESPECIFICAS!
SELECT idRa�a,nomeRa�a FROM Ra�a
WHERE nomeRa�a LIKE 'S%';

SELECT idTipo,nomeTipo FROM Tipo
WHERE nomeTipo LIKE '%O'; 

