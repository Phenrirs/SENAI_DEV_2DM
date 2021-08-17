CREATE DATABASE Optus;
GO

USE Optus;

CREATE TABLE Empresas(
	idEmpresas TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeEmpresa VARCHAR (10) NOT NULL,
	Edereço VARCHAR (20) NOT NULL,
);

CREATE TABLE Artistas(
	idArtistas SMALLINT PRIMARY KEY IDENTITY (1,1), 
	Nomes VARCHAR (13) NOT NULL,
);

CREATE TABLE Estilos(
	idEstilos TINYINT PRIMARY KEY IDENTITY (1,1),
	Titulos VARCHAR (6) NOT NULL,
);

CREATE TABLE Permissão(
	idPermissão TINYINT PRIMARY KEY IDENTITY (1,1),
	Tipo VARCHAR (10) NOT NULL,
);

CREATE TABLE Usuarios(
	idUsuarios INT PRIMARY KEY IDENTITY (1,1),
	idPermissão TINYINT FOREIGN KEY REFERENCES Permissão(idPermissão),
	nomeUser VARCHAR (10) NOT NULL,
	Email CHAR (9) NOT NULL,
	Senha VARCHAR (10) NOT NULL, 	
);

--UTILIZANDO Datetime ou comandos com propriedades numericas:
--Dias DATE NOT NULL,

--Método 1
--INSERT INTO Dias
--VAlues ('10/08/2021')

--Método 2
--INSERT INTO Dias
--VAlues ('10-08-2021')

--(>*-*)>

CREATE TABLE Albuns(
	idAlbuns INT PRIMARY KEY IDENTITY (1,1),
	idEmpresas TINYINT FOREIGN KEY REFERENCES Empresas(idEmpresas),
	idArtistas SMALLINT FOREIGN KEY REFERENCES Artistas(idArtistas),
	idEstilos TINYINT FOREIGN KEY REFERENCES Estilos(idEstilos),
	Titulo VARCHAR (15) NOT NULL,
	Lançamento CHAR (10) NOT NULL,
	Localização CHAR (10) NOT NULL, 
	Minutos CHAR (8) NOT NULL,
	Visualização VARCHAR (10) NOT NULL,
);

--Preciso aprender a utilizar palavrasreservadas referentes a data e hora!
--Acredito que na area de "Lançamento" teria sido melhor colocar um "idPlataforma" e criarmos uma tabela
--"Plataformas" para cadastrar os possiveis ocais de lançamento
--Acredito que o pensamento acima pode ser aplicado também em "visualização"