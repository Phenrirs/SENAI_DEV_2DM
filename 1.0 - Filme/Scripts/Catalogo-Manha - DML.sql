--Inicio - DML

USE Catalogo_Manha
GO

--Inicio tabelas independentes

INSERT INTO Genero(nomeGen)
VALUES('Terror'),('Ação'),('Aventura'),('Suspense'),('Comédia'),('Ficção Cientifica');
GO

--Fim tabelas independentes

--Inicio tabelas dependentes

INSERT INTO Filme(idGenero,nomeFilme)
VALUES(2,'Vingadores'),(5,'Gente Grande'),(1,'Her'),(4,'Corra'),(6,'Guerra dos Mundos');
GO

--Fim tabelas dependentes

--Fim - DML
