--Inicio - DDL

CREATE DATABASE Catalogo_Manha
GO

USE Catalogo_Manha
GO

--Inicio tabelas independentes

CREATE TABLE Genero(
idGenero INT PRIMARY KEY IDENTITY, 
nomeGen VARCHAR (50) UNIQUE NOT NULL,
);
GO

--Fim tabelas independentes


--Inicio tabelas dependentes

CREATE TABLE Filme(
idFilme INT PRIMARY KEY IDENTITY,
idGenero INT FOREIGN KEY REFERENCES Genero(idGenero), 
nomeFilme VARCHAR (50) UNIQUE NOT NULL,
);
GO

--Fim tabelas dependentes

--Fim - DDL