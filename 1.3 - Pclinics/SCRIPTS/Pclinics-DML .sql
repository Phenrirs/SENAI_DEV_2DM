--INICIO DO DML

--!O correto ao adicionar valores nas colunas é começar pelas tabela independentes, ou seja, que não tem chave estrangeira!

USE Pclinics;
GO

INSERT INTO Endereço(nomeEndereço)
VALUES ('Av. João Carlos')

INSERT INTO Tipo(nomeTipo)
VALUES ('Cachorro'),('Gato'),('Artrópode')

INSERT INTO Donos(nomeDonos)
VALUES ('Rodrigo'),('Vinicius'),('Diego')

INSERT INTO Raça(idTipo,nomeRaça)
VALUES (1,'Pit Bull'),(2,'Siamês'),(1, NULL)

--Ao inserir esse ultimo dado na tabela Raça percebi que teria sido mais facil utilizar o ALTER TABLE porém, ainda não sei como usa-lo de fato!

INSERT INTO Clinica(idEndereço,nomeClinica)
VALUES (1,'Pclinics')

INSERT INTO Veterinarios(idClinica,nomeVeterinarios,CRMV)
VALUES (1,'Carlos','1111'),(1,'João','2222'),(1,'Roberto','3333')

INSERT INTO Pets(idRaça,idDonos,nomePets,idade)
VALUES (1,1,'Marley','7 Anos'),(2,2,'Costela','15 Anos'),(3,3,'Bob','10 Anos')

INSERT INTO Atendimentos(idPets,idVeterinarios,Dias,Horas,Descrição)
VALUES (1,3,'15/08/2021','09:00','Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss deixa as pessoas mais interessantis. 
Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Praesent malesuada urna nisi, quis volutpat erat hendrerit non.'),
(2,1,'17/08/2021','11:00','Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss deixa as pessoas mais interessantis.
Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Praesent malesuada urna nisi, quis volutpat erat hendrerit non.'),
(3,2,'19/08/2021','13:00','Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss deixa as pessoas mais interessantis.
Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. Praesent malesuada urna nisi, quis volutpat erat hendrerit non.')


--FIM DO DML