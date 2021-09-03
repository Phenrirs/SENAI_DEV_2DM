CREATE DATABASE Unidas;
GO

USE Unidas
GO

--Inicio tabelas independentes

CREATE TABLE Empresa(
	idEmpresa TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeEmpresa VARCHAR (10) NOT NULL,
	Edereco VARCHAR (20) NOT NULL
);

CREATE TABLE Cliente(
	idCliente TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeCliente VARCHAR (8) NOT NULL,
	sobreNome VARCHAR (10) NOT NULL,
);

CREATE TABLE Marca(
	idMarca TINYINT PRIMARY KEY IDENTITY (1,1),
	nomenclatura VARCHAR (11) NOT NULL
);


--Fim tabelas independentes

--Inicio tabelas dependentes

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
	idCliente TINYINT FOREIGN KEY REFERENCES Cliente(idCliente),
	Preco VARCHAR (11) NOT NULL,
	Inicio DATE,
	Fim DATE,
);


--Fim tabelas dependentes

--Minha primeira tentativa na tabela aluguel foi usando SMALLINT para gravar os dados de pre�o (que n�o continhammuitos caraceres, por�m
--ainda precisariam das propriedades de um numero afinal s�o da tabela de "Pre�o"
