--INICIO DO DML

--!O correto ao adicionar valores nas colunas � come�ar pelas tabela independentes, ou seja, que n�o tem chave estrangeira!

USE Pclinics;
GO

INSERT INTO Endere�o(nomeEndere�o)
VALUES ('Av. Jo�o Carlos')

INSERT INTO Tipo(nomeTipo)
VALUES ('Cachorro'),('Gato'),('Artr�pode')

INSERT INTO Donos(nomeDonos)
VALUES ('Rodrigo'),('Vinicius'),('Diego')

INSERT INTO Ra�a(idTipo,nomeRa�a)
VALUES (1,'Pit Bull'),(2,'Siam�s'),(1, NULL)

--Ao inserir esse ultimo dado na tabela Ra�a percebi que teria sido mais facil utilizar o ALTER TABLE por�m, ainda n�o sei como usa-lo de fato!

INSERT INTO Clinica(idEndere�o,nomeClinica)
VALUES (1,'Pclinics')

INSERT INTO Veterinarios(idClinica,nomeVeterinarios,CRMV)
VALUES (1,'Carlos','1111'),(1,'Jo�o','2222'),(1,'Roberto','3333')

INSERT INTO Pets(idRa�a,idDonos,nomePets,idade)
VALUES (1,1,'Marley','7 Anos'),(2,2,'Costela','15 Anos'),(3,3,'Bob','10 Anos')

INSERT INTO Atendimentos(idPets,idVeterinarios,Dias,Horas,Descri��o)
VALUES (1,3,'15/08/2021','09:00','Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss deixa as pessoas mais interessantis. 
Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Praesent malesuada urna nisi, quis volutpat erat hendrerit non.'),
(2,1,'17/08/2021','11:00','Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss deixa as pessoas mais interessantis.
Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Praesent malesuada urna nisi, quis volutpat erat hendrerit non.'),
(3,2,'19/08/2021','13:00','Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss deixa as pessoas mais interessantis.
Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Praesent malesuada urna nisi, quis volutpat erat hendrerit non.')


--FIM DO DML