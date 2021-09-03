--INICIO DO DML

USE Gufi
GO

--INICIO TABELAS INDEPENDENTES

--INSTITUI��O
INSERT INTO Institui�ao (CNPJ,nomeFantasia,endere�o)
VALUES ('99999999999', 'ESCOLA SENAI DE INFORMATICA','Al. Bar�o de Limeia, 539')
GO

--CATEGORIAS(TIPOS DE EVENTOS)
INSERT INTO Categoria (nomeTipoEve)
VALUES ('C#'), ('ReactJS'), ('SQL');
GO

--TIPO USUARIO
INSERT INTO TipoUsuario (nomeTipoUser)
VALUES ('ADMINISTRADOR'),('COMUM');
GO

--SITUA��O
INSERT INTO Situa�ao (descri��o)
VALUES ('APROVADA'),('RECUSADA'),('AGUARDANDO');
GO

--FIM TABELAS INDEPENDENTES

 --INICIO TABELAS DEPENDENTES

 --USUARIOS
 INSERT INTO Usuarios (idTipoUser, nomeUser, email,senha,endere�o)
 VALUES (1,'ADMINISTRADOR','ADM@ADM.COM','adm123','Alameda Bar�o de limeira, 539'),
		(2,'Lucas','lucas@email.com','lucas123','Rua S�o Sebasti�o, 41'),
		(2,'Saulo','Saulo@email.com','Saulo123','Rua Algustos Cabral, 39'); 
 GO

 --EVENTOS
 INSERT INTO Eventos (idCategoria,idInstitui�ao,titulo,acesso,diaEvento,descri�ao)
 VALUES (1,1,'Orienta��o objetos',1,'18/08/2021 11:00','Conceitos sobre os pilares da programa��o orietada a objetos'),
		(2,1,'Ciclo de vida',0,'19/08/2021 12:00','Como utilizar os ciclos de vida com a biblioteca ReactJs');
 GO

 --PRESEN�AS
 INSERT INTO Presen�as(idUser, idEvento, idSitua�ao )
 VALUES (2,2,3),(3,1,1);
 GO

 --FIM TABELAS DEPENDENTES