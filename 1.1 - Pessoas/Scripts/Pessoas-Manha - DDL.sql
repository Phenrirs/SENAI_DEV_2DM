--Inicio - DDL

CREATE DATABASE Pessoas_Manha
GO

USE Pessoas_Manha
GO

--Inicio tabelas independentes

CREATE TABLE Telefone(
idTelefone INT PRIMARY KEY IDENTITY,
numero VARCHAR (20) NOT NULL,
);
GO

CREATE TABLE Email(
idEmail INT PRIMARY KEY IDENTITY,
email VARCHAR (20) NOT NULL,
);
GO

CREATE TABLE CNH(
idCNH INT PRIMARY KEY IDENTITY,
digito VARCHAR(50) UNIQUE NOT NULL,
);
GO

--Fim tabelas independentes


--Inicio tabelas dependentes

CREATE TABLE Pessoa(
idPessoa INT PRIMARY KEY IDENTITY,
idTelefone INT FOREIGN KEY REFERENCES Telefone(idTelefone),
idEmail INT FOREIGN KEY REFERENCES Email(idEmail),
idCNH INT FOREIGN KEY REFERENCES CNH(idCNH),
nomePessoa VARCHAR (30) NOT NULL,
);
GO

--Fim tabelas dependentes

--Fim - DDL