CREATE DATABASE Unidas;
GO

USE Unidas
GO

CREATE TABLE Empresa(
	idEmpresa TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeEmpresa VARCHAR (10) NOT NULL,
	Edere�o VARCHAR (20) NOT NULL
);

CREATE TABLE Clientes(
	idClientes TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeClientes VARCHAR (8) NOT NULL
);

CREATE TABLE Marca(
	idMarca TINYINT PRIMARY KEY IDENTITY (1,1),
	nomenclatura VARCHAR (11) NOT NULL
);

CREATE TABLE Modelo(
	idModelo TINYINT PRIMARY KEY IDENTITY (1,1),
	idMarca TINYINT FOREIGN KEY REFERENCES Marca(idMarca),
	nomeModelo VARCHAR (10) NOT NULL,
);

CREATE TABLE Veiculo(
	idVeiculo SMALLINT PRIMARY KEY IDENTITY (1,1),
	idModelo TINYINT FOREIGN KEY REFERENCES Modelo(idModelo),
	idEmpresa TINYINT FOREIGN KEY REFERENCES Empresa(idEmpresa),
	Placa CHAR (4) NOT NULL,
);

CREATE TABLE Aluguel(
	idAluguel SMALLINT PRIMARY KEY IDENTITY (1,1),
	idVeiculo SMALLINT FOREIGN KEY REFERENCES Veiculo(idVeiculo),
	idClientes TINYINT FOREIGN KEY REFERENCES Clientes(idClientes),
	Pre�o VARCHAR (11) NOT NULL,
	Inicio DATE,
	Fim DATE,
);

--Minha primeira tentativa na tabela aluguel foi usando SMALLINT para gravar os dados de pre�o (que n�o continhammuitos caraceres, por�m
--ainda precisariam das propriedades de um numero afinal s�o da tabela de "Pre�o"
