--INICIO DDL

CREATE DATABASE Pclinics;
GO

USE Pclinics;
GO

CREATE TABLE Endereço(
	idEndereço TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeEndereço VARCHAR (20) NOT NULL,
);
GO

	--Levei em consideração a existencia da tabela "endereço" para interpretar que esse banco de dados serviria não apenas
	--para cadastrar a PCLINICS mas também outras clinicas, por isso, arredondei o número em VARCHAR para 20 caracteres 
	--afinal de contas nem todo nome de rua tem 14 letras

CREATE TABLE Tipo(
	idTipo TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeTipo VARCHAR (10) NOT NULL,
);
GO

CREATE TABLE Donos(
	idDonos TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeDonos CHAR (8) NOT NULL,
);
GO

CREATE TABLE Raça(
	idRaça TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeRaça VARCHAR (10) NULL,
	idTipo TINYINT FOREIGN KEY REFERENCES Tipo(idTipo),
);
GO

CREATE TABLE Clinica(
	idCLinica TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeClinica VARCHAR (10) NOT NULL,
	idEndereço TINYINT FOREIGN KEY REFERENCES Endereço(idEndereço),
);
GO

--Arredondei o VARCHAR para 10 para que mais clinicas que tivessem até 10 letras pudessem ser cadastradas nesse banco de "controle de clinicas" 

CREATE TABLE Veterinarios (
	idVeterinarios SMALLINT PRIMARY KEY IDENTITY (1,1),
	nomeVeterinarios VARCHAR (10) NOT NULL,
	CRMV CHAR (4) NOT NULL,
	idClinica TINYINT FOREIGN KEY REFERENCES Clinica(idClinica), 
);
GO

--Adicionei o SMALLINT na palavra reservada do idCLinica pois pensei "se esse sistema pode ser usado para cadastrar os dados de mais de uma clinica
--e, sabendo que só no brasil existem muitos veterinarios que provavelmente passam de mil, a palavra chave que mais se adequa após INT seria essa"
--Também adicionei o VARCHAR nos nomes para caso alguém com o primeiro nome passando de 8 caracteres (que era o maxio no meu modelo fisico) pudesse 
--ser cadastrado também

CREATE TABLE Pets(
	idPets SMALLINT PRIMARY KEY IDENTITY (1,1),
	nomePets VARCHAR (10) NOT NULL,
	idade CHAR (8) NOT NULL,
	idRaça TINYINT FOREIGN KEY REFERENCES Raça(idRaça),
	idDonos TINYINT FOREIGN KEY REFERENCES Donos(idDonos),
);
GO

--Apliquei o SMALLINT na chave primaria pelo mesmo motivo de ter aplicado SMALLINT nos veterinarios!
--Duvida, há uma maneira de deixar a quatidade de carcateres registrados 100% obrigatórios?

CREATE TABLE Atendimentos(
	idAtendimentos SMALLINT PRIMARY KEY IDENTITY (1,1),
	Dias CHAR (10) NOT NULL,
	Horas CHAR (8) NOT NULL,
	Descrição CHAR (256) NOT NULL,
	idPets SMALLINT FOREIGN KEY REFERENCES Pets(idPets),
	idVeterinarios SMALLINT FOREIGN KEY REFERENCES Veterinarios(idVeterinarios),
);
GO

----Não sei usar o DATETIME aqui então utilizei o CHAR, tentei pesquisar porém só encontrei outros métodos de formatação da vizualização das datas
----e horas utilizando o SELECT
--Executarei a modificação dessa tabela utilizand o DATETIME (Quando eu aprender) e após isso farei um drop table e só criarei a tabela novamente 
--quando as modificações forem feitas (se bem que não sei se consigo fazer essas modificações utilizando o alter table!

--FIM DO DDL
