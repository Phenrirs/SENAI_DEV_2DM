--INICIO DDL

CREATE DATABASE Gufi
GO

USE Gufi
GO

--INICIO TABELAS INDEPENDENTES

--INSTITUI��O
CREATE TABLE Institui�ao(
idInstitui�ao INT PRIMARY KEY IDENTITY (1,1),
CNPJ CHAR(11) UNIQUE NOT NULL,
nomeFantasia VARCHAR (100) NOT NULL,
endere�o VARCHAR (250) UNIQUE NOT NULL,
);
GO


--TIPO DE EVENTO
CREATE TABLE Categoria(
idCategoria INT PRIMARY KEY IDENTITY (1,1),
nomeTipoEve VARCHAR (50) UNIQUE NOT NULL,
);
GO


--TIPO DE USUARIO
CREATE TABLE TipoUsuario(
idTipoUser INT PRIMARY KEY IDENTITY (1,1),
nomeTipoUser VARCHAR (30) UNIQUE NOT NULL,
);
GO


--O UNIQUE SERVE PARA INDICAR QUE OS NOMES PREENCHIDOS NOS CAMPOS N�O PODEM SE REPETIR


--STATUS
CREATE TABLE Situa�ao(
idSitua�ao  INT PRIMARY KEY IDENTITY (1,1),
descri��o TEXT NOT NULL,
);
GO

--FIM TABELAS DEPENDENTES

--____________________________________________________________________________________________________

--INICIO DAS TABELAS DEPENDENTES

--USUARIOS
CREATE TABLE Usuarios(
idUser INT PRIMARY KEY IDENTITY (1,1),
idTipoUser INT FOREIGN KEY REFERENCES TipoUsuario(idTipoUser),
nomeUser VARCHAR (50) NOT NULL,
email VARCHAR (200) UNIQUE NOT NULL,
senha VARCHAR (11) NOT NULL,
endere�o VARCHAR (30) NOT NULL,
);
GO

--EVENTOS
CREATE TABLE Eventos(
idEvento INT PRIMARY KEY IDENTITY (1,1),
idCategoria INT FOREIGN KEY REFERENCES Categoria(idCategoria), 
idInstitui�ao INT FOREIGN KEY REFERENCES Institui�ao(idInstitui�ao),
titulo VARCHAR (100) NOT NULL,
acesso BIT DEFAULT (1) NOT NULL,
diaEvento DATETIME NOT NULL,
descri�ao TEXT NOT NULL,
);
GO

--DEFAULT = PADR�O, caso o usuario n�o preencha o campo com o default de configura��o o mesmo ira preencher aquele capo no padr~que for configurado

--No descri��o eu poderia ter colocado VARCHAR (500) conferir se eu posso deixar text!

--PRESEN�AS
CREATE TABLE Presen�as(
idPresen�a INT PRIMARY KEY IDENTITY (1,1),
idUser INT FOREIGN KEY REFERENCES Usuarios(idUser),
idEvento INT FOREIGN KEY REFERENCES Eventos(idEvento),
idSitua�ao  INT FOREIGN KEY REFERENCES Situa�ao(idSitua�ao) DEFAULT (3),
);
GO

--UTILIZEI O INT AQUI POIS N�O SABIA SE O SISTEMA MATERIA O DADO DOS USUARIOS SALVOS PARA SEMPRE OU SE COM O TEMPO QUE O LIMITE DE REGISTROS
--FOSSE ALCAN�ADO O SISTEMA ACABARIA ARMAZENANDO OS DADOS DAS PESSOAS JA CADASTRADAS EM OUTRO LOCAL E AP�S ISSO IRIA PREENCHER NOVAMENTE SEUS 
--CAMPOS!

--FIM TABELAS DEPENDENTES