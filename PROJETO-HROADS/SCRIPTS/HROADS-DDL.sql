--Inicio DDL HROADS

--Macete para descobrir a cardinalidade, fazer perguntas:
--Quantos dados da tabela direita podem ser registrados na tabela esquerda?

CREATE DATABASE HROADS

USE HROADS

CREATE TABLE Classe(
	idClasse TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeClasse VARCHAR(20) NOT NULL
);

CREATE TABLE Tipos(
	idTipos TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeTipos CHAR (6) NOT NULL
);

CREATE TABLE Personagens(
	idPersonagens TINYINT PRIMARY KEY IDENTITY (1,1),
	idClasse TINYINT FOREIGN KEY REFERENCES Classe(idClasse),
	NomePer VARCHAR(20) NOT NULL,
	Raça VARCHAR (10) NOT NULL,
	MaxVida SMALLINT NOT NULL,
	MaxMana SMALLINT NOT NULL,
	Atualização DATE NOT NULL,
	Criação DATE NOT NULL
);

CREATE TABLE Habilidades(
	idHabilidades TINYINT PRIMARY KEY IDENTITY (1,1),
	idTipos TINYINT FOREIGN KEY REFERENCES Tipos(idTipos),
	nomeHabilidade VARCHAR (14) NULL,
);

CREATE TABLE Intermediaria(
	idHT TINYINT PRIMARY KEY IDENTITY (1,1),
	idHabilidades TINYINT FOREIGN KEY REFERENCES Habilidades (idHabilidades),
	idClasse TINYINT FOREIGN KEY REFERENCES Classe (idClasse)
);

--Fim do DDL