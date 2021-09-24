--Inicio - DML

USE Pessoas_Manha
GO

--Inicio tabelas independentes

INSERT INTO Telefone(numero)
VALUES ('(11) 91111-1111'),('(11) 92121-2222'),
	   ('(11) 91313-3333'),('(11) 4343-4444');
GO

INSERT INTO Email(email)
VALUES ('Adm@gmail.com'),('Rdm@gmail.com'),
	   ('Con@gmail.com'),('Exe@gmail.com');
GO

INSERT INTO CNH(digito)
VALUES ('12012012120'),('23023024240'),
	   ('34034034340'),('56056056560');
GO

--Fim tabelas independentes

--Inicio tabelas dependentes

INSERT INTO Pessoa(idTelefone,idEmail,idCNH,nomePessoa)
VALUES (4,3,2,'Jorge'),(2,4,3,'Lucas'),(3,1,4,'Possarle'),(1,2,1,'Nietzsche');
GO

--Fim tabelas dependentes

--Fim - DML