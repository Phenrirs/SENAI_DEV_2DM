--INICIO DO DML

USE Gufi
GO

--INICIO TABELAS INDEPENDENTES

--INSTITUIÇÃO
INSERT INTO Instituiçao (CNPJ,nomeFantasia,endereço)
VALUES ('99999999999', 'ESCOLA SENAI DE INFORMATICA','Al. Barão de Limeia, 539')
GO

--CATEGORIAS(TIPOS DE EVENTOS)
INSERT INTO Categoria (nomeTipoEve)
VALUES ('C#'), ('ReactJS'), ('SQL');
GO

--TIPO USUARIO
INSERT INTO TipoUsuario (nomeTipoUser)
VALUES ('ADMINISTRADOR'),('COMUM');
GO

--SITUAÇÃO
INSERT INTO Situaçao (descrição)
VALUES ('APROVADA'),('RECUSADA'),('AGUARDANDO');
GO

--FIM TABELAS INDEPENDENTES

 --INICIO TABELAS DEPENDENTES

 --USUARIOS
 INSERT INTO Usuarios (idTipoUser, nomeUser, email,senha,endereço)
 VALUES (1,'ADMINISTRADOR','ADM@ADM.COM','adm123','Alameda Barão de limeira, 539'),
		(2,'Lucas','lucas@email.com','lucas123','Rua São Sebastião, 41'),
		(2,'Saulo','Saulo@email.com','Saulo123','Rua Algustos Cabral, 39'); 
 GO

 --EVENTOS
 INSERT INTO Eventos (idCategoria,idInstituiçao,titulo,acesso,diaEvento,descriçao)
 VALUES (1,1,'Orientação objetos',1,'18/08/2021 11:00','Conceitos sobre os pilares da programação orietada a objetos'),
		(2,1,'Ciclo de vida',0,'19/08/2021 12:00','Como utilizar os ciclos de vida com a biblioteca ReactJs');
 GO

 --PRESENÇAS
 INSERT INTO Presenças(idUser, idEvento, idSituaçao )
 VALUES (2,2,3),(3,1,1);
 GO

 --FIM TABELAS DEPENDENTES