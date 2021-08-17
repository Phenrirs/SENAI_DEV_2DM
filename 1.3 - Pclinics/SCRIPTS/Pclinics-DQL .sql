--INICIO DE DQL

USE Pclinics
GO 

SELECT * FROM Endereço

SELECT * FROM Tipo

SELECT * FROM Donos

SELECT * FROM Raça

SELECT * FROM Clinica

SELECT * FROM Veterinarios

SELECT * FROM Pets

SELECT * FROM Atendimentos

--JOINS
----ESTRUTURA DO JOIN!
--SELECT campo1,campo2 FROM Tabela1
--TIPO JOIN Tabela2
--ON tabela1.campo1 = tabela2.campo2

--OBS: tabela1.campo1 é PK
--	 tabela2.campo2 é FK (ou vice-versa)

--LEFT JOIN

SELECT * FROM Endereço
LEFT JOIN Clinica
ON Endereço.idEndereço = Clinica.idEndereço

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
LEFT JOIN Raça
ON Pets.idRaça = Raça.idRaça

SELECT * FROM Raça
LEFT JOIN Tipo
ON Raça.idTipo = Tipo.idTipo

SELECT * FROM Donos
LEFT JOIN Pets
ON Donos.idDonos = Pets.idDonos

SELECT * FROM Tipo
LEFT JOIN Raça
ON Tipo.idTipo = Raça.idTipo


--FIM DO LEFT JOIN

--LEFT JOIN SEM CHAVE ESTRANGEIRA


SELECT nomeClinica,nomeEndereço FROM Endereço
LEFT JOIN Clinica
ON Endereço.idEndereço = Clinica.idEndereço

SELECT nomeClinica,nomeVeterinarios FROM Clinica
LEFT JOIN Veterinarios
ON Clinica.idClinica = Veterinarios.idClinica

SELECT nomeVeterinarios,Dias,Horas FROM Veterinarios
LEFT JOIN Atendimentos
ON Veterinarios.idVeterinarios = Atendimentos.idVeterinarios

SELECT nomePets,idade,Dias,Horas FROM Pets
LEFT JOIN Atendimentos
ON Pets.idPets = Atendimentos.idPets

SELECT nomePets,nomeRaça FROM Pets
LEFT JOIN Raça
ON Pets.idRaça = Raça.idRaça

SELECT nomeRaça,nomeTipo FROM Raça
LEFT JOIN Tipo
ON Raça.idTipo = Tipo.idTipo

SELECT nomeDonos,nomePets FROM Donos
LEFT JOIN Pets
ON Donos.idDonos = Pets.idDonos

SELECT nomeTipo,nomeRaça FROM Tipo
LEFT JOIN Raça
ON Tipo.idTipo = Raça.idTipo


--FIM DO JOIN SEM CHAVE ESTRANGEIRA


--RIGHT JOIN


SELECT * FROM Raça
RIGHT JOIN Pets
ON Raça.idRaça = Pets.idRaça

SELECT * FROM  Tipo
RIGHT JOIN Raça
ON Tipo.idTipo = Raça.idTipo

--Por que a Tipo Raça LEFT da mais dados do que a Tipo Raça RIGHT?

--FIM DO RIGHT JOIN

--RIGHT JOIN SEM CHAVE ESTRANGEIRA:

SELECT * FROM Raça
RIGHT JOIN Pets
ON Raça.idRaça = Pets.idRaça

SELECT * FROM  Tipo
RIGHT JOIN Raça
ON Tipo.idTipo = Raça.idTipo

--FIM DO RIGHT JOIN SEM CHAVE ESTRANGEIRA: 

--INICIO DO INNER JOIN

SELECT * FROM Endereço
INNER JOIN Clinica
ON Endereço.idEndereço = Clinica.idEndereço

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
INNER JOIN Raça
ON Pets.idRaça = Raça.idRaça

SELECT * FROM Raça
INNER JOIN Tipo
ON Raça.idTipo = Tipo.idTipo

SELECT * FROM Donos
INNER JOIN Pets
ON Donos.idDonos = Pets.idDonos

SELECT * FROM Tipo
INNER JOIN Raça
ON Tipo.idTipo = Raça.idTipo


--FIM DO INNER JOIN

--INICIO DO INNER JOIN SEM CHAVE ESTRANGEIRA:

SELECT nomeEndereço,nomeClinica FROM Endereço
INNER JOIN Clinica
ON Endereço.idEndereço = Clinica.idEndereço

SELECT nomeClinica,nomeVeterinarios FROM Clinica
INNER JOIN Veterinarios
ON Clinica.idClinica = Veterinarios.idClinica

SELECT nomeVeterinarios,Dias,Horas FROM Veterinarios
INNER JOIN Atendimentos
ON Veterinarios.idVeterinarios = Atendimentos.idVeterinarios

SELECT nomePets,idade,Dias,Horas FROM Pets
INNER JOIN Atendimentos
ON Pets.idPets = Atendimentos.idPets

SELECT nomePets,idade,nomeRaça FROM Pets
INNER JOIN Raça
ON Pets.idRaça = Raça.idRaça

SELECT nomeRaça,nomeTipo FROM Raça
INNER JOIN Tipo
ON Raça.idTipo = Tipo.idTipo

SELECT nomeDonos,nomePets FROM Donos
INNER JOIN Pets
ON Donos.idDonos = Pets.idDonos

SELECT nomeTipo,nomeRaça FROM Tipo
INNER JOIN Raça
ON Tipo.idTipo = Raça.idTipo


--FIM DO INNER JOIN SEM CHAVE ESTRANGEIRA

--INICIO FULL OUTER COM MULTIPLOS JOINs

SELECT * FROM Atendimentos
FULL OUTER JOIN Pets
ON Atendimentos.idPets = Pets.idPets
FULL OUTER JOIN Raça
ON Pets.idRaça = Raça.idRaça
FULL OUTER JOIN Tipo
ON Raça.idTipo = Tipo.idTipo

--FIM FULL OUTER JOIN

--RESPOSTAS:
--DADOS DOS VETERINARIOS

SELECT nomePets,nomeDonos FROM Pets
LEFT JOIN Donos
ON Pets.idDonos = Donos.idDonos

--DADOS DOS ATENDIMENTOS

SELECT nomeVeterinarios,nomePets,nomeRaça,nomeTipo,nomeClinica FROM Atendimentos
LEFT JOIN Veterinarios
ON Atendimentos.idVeterinarios = Veterinarios.idVeterinarios
RIGHT JOIN Clinica
ON Veterinarios.idCLinica = Clinica.idClinica
RIGHT JOIN Pets
ON Atendimentos.idPets = Pets.idPets
INNER JOIN Raça
ON Pets.idRaça = Raça.idRaça
FULL OUTER JOIN Tipo
ON Raça.idTipo = Tipo.idTipo

 --SEM A LINHA DOS "TIPOS ARTRÓPODES"

SELECT nomeVeterinarios,nomePets,nomeRaça,nomeTipo,nomeClinica FROM Atendimentos
LEFT JOIN Veterinarios
ON Atendimentos.idVeterinarios = Veterinarios.idVeterinarios
RIGHT JOIN Clinica
ON Veterinarios.idCLinica = Clinica.idClinica
RIGHT JOIN Pets
ON Atendimentos.idPets = Pets.idPets
INNER JOIN Raça
ON Pets.idRaça = Raça.idRaça
INNER JOIN Tipo
ON Raça.idTipo = Tipo.idTipo

--INICIO SELECT LETRAS ESPECIFICAS!
SELECT idRaça,nomeRaça FROM Raça
WHERE nomeRaça LIKE 'S%';

SELECT idTipo,nomeTipo FROM Tipo
WHERE nomeTipo LIKE '%O'; 

