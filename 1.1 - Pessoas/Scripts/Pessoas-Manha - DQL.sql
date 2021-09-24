--Inicio - DQL

USE Pessoas_Manha
GO

--Listar as pessoas em ordem alfabética reversa, mostrando seus telefones, seus e-mails e suas CNHs
SELECT nomePessoa,numero,email,digito FROM Pessoa
FULL OUTER JOIN Telefone T ON T.idTelefone = Pessoa.idTelefone
FULL OUTER JOIN Email E ON E.idEmail = Pessoa.idEmail
FULL OUTER JOIN CNH C ON C.idCNH = Pessoa.idCNH
ORDER BY nomePessoa,numero,email,digito DESC 
GO

--Fim - DQL
