--INICIO DDL

CREATE DATABASE Pclinics;
GO

USE Pclinics;
GO

CREATE TABLE Endere�o(
	idEndere�o TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeEndere�o VARCHAR (20) NOT NULL,
);
GO

	--Levei em considera��o a existencia da tabela "endere�o" para interpretar que esse banco de dados serviria n�o apenas
	--para cadastrar a PCLINICS mas tamb�m outras clinicas, por isso, arredondei o n�mero em VARCHAR para 20 caracteres 
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

CREATE TABLE Ra�a(
	idRa�a TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeRa�a VARCHAR (10) NULL,
	idTipo TINYINT FOREIGN KEY REFERENCES Tipo(idTipo),
);
GO

CREATE TABLE Clinica(
	idCLinica TINYINT PRIMARY KEY IDENTITY (1,1),
	nomeClinica VARCHAR (10) NOT NULL,
	idEndere�o TINYINT FOREIGN KEY REFERENCES Endere�o(idEndere�o),
);
GO

--Arredondei o VARCHAR para 10 para que mais clinicas que tivessem at� 10 letras pudessem ser cadastradas nesse banco de "controle de clinicas" 

CREATE TABLE Veterinarios (
	idVeterinarios SMALLINT PRIMARY KEY IDENTITY (1,1),
	nomeVeterinarios VARCHAR (10) NOT NULL,
	CRMV CHAR (4) NOT NULL,
	idClinica TINYINT FOREIGN KEY REFERENCES Clinica(idClinica), 
);
GO

--Adicionei o SMALLINT na palavra reservada do idCLinica pois pensei "se esse sistema pode ser usado para cadastrar os dados de mais de uma clinica
--e, sabendo que s� no brasil existem muitos veterinarios que provavelmente passam de mil, a palavra chave que mais se adequa ap�s INT seria essa"
--Tamb�m adicionei o VARCHAR nos nomes para caso algu�m com o primeiro nome passando de 8 caracteres (que era o maxio no meu modelo fisico) pudesse 
--ser cadastrado tamb�m

CREATE TABLE Pets(
	idPets SMALLINT PRIMARY KEY IDENTITY (1,1),
	nomePets VARCHAR (10) NOT NULL,
	idade CHAR (8) NOT NULL,
	idRa�a TINYINT FOREIGN KEY REFERENCES Ra�a(idRa�a),
	idDonos TINYINT FOREIGN KEY REFERENCES Donos(idDonos),
);
GO

--Apliquei o SMALLINT na chave primaria pelo mesmo motivo de ter aplicado SMALLINT nos veterinarios!
--Duvida, h� uma maneira de deixar a quatidade de carcateres registrados 100% obrigat�rios?

CREATE TABLE Atendimentos(
	idAtendimentos SMALLINT PRIMARY KEY IDENTITY (1,1),
	Dias CHAR (10) NOT NULL,
	Horas CHAR (8) NOT NULL,
	Descri��o CHAR (256) NOT NULL,
	idPets SMALLINT FOREIGN KEY REFERENCES Pets(idPets),
	idVeterinarios SMALLINT FOREIGN KEY REFERENCES Veterinarios(idVeterinarios),
);
GO

----N�o sei usar o DATETIME aqui ent�o utilizei o CHAR, tentei pesquisar por�m s� encontrei outros m�todos de formata��o da vizualiza��o das datas
----e horas utilizando o SELECT
--Executarei a modifica��o dessa tabela utilizand o DATETIME (Quando eu aprender) e ap�s isso farei um drop table e s� criarei a tabela novamente 
--quando as modifica��es forem feitas (se bem que n�o sei se consigo fazer essas modifica��es utilizando o alter table!

--FIM DO DDL
