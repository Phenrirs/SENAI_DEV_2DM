--Inicio - DQL

USE Catalogo_Manha
GO

--Como não tem um pedido de select especifico no roteiro vou fazer todos os selects que lembrar!

SELECT * FROM Genero

SELECT * FROM Filme

SELECT * FROM Filme
FULL OUTER JOIN Genero G ON G.idGenero = Filme.idGenero
GO

SELECT * FROM Filme
INNER JOIN Genero G ON G.idGenero = Filme.idGenero
GO

SELECT nomeFilme,nomeGen FROM Filme
FULL OUTER JOIN Genero G ON G.idGenero = Filme.idGenero
GO

SELECT nomeFilme,nomeGen FROM Filme
INNER JOIN Genero G ON G.idGenero = Filme.idGenero
GO

--Fim - DQL
