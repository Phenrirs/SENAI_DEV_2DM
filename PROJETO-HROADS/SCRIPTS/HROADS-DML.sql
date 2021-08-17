--Inicio DML
USE HROADS

--RESPOSTAS

INSERT INTO Classe (nomeClasse)
VALUES ('Barbaro'), ('Cruzado'), ('Caçadora de Demônios'), ('Monge'), ('Necromante'), ('Feiticeiro'), ('Arcanista')

INSERT INTO Tipos (nomeTipos)
VALUES ('Ataque'),('Defesa'),('Cura'),('Magia')

INSERT INTO Personagens(idClasse,nomePer,Raça,maxVida,maxMana,Atualização,Criação)
VALUES(1,'BitBug','Humano','70','100','11/08/2021','18/01/2020'),(2,'Fer8','Humano','75','60','11/08/2021','17/03/2020'),
(3,'DeuBug','Humano', '100','80','11/08/2021','18/03/2020' );

INSERT INTO Habilidades (idTipos,nomeHabilidade)
VALUES (1,'Lança Mortal'),(2,'Escudo Supremo'),(3,'Recuperar Vida')

INSERT INTO Intermediaria (idClasse, idHabilidades)
VALUES (1,1), (1,2), (2,2), (3,1), (4,3), (4,2),(5,NULL),(6,3),(7,NULL)

--Atualizar o nome do personagem Fer8 para Fer7;
UPDATE Personagens
SET nomePer = 'fer7'
WHERE idPersonagens = 2

--Atualizar o nome da classe de Necromante para Necromancer;
UPDATE Classe
SET nomeClasse = 'Necromancer'
WHERE idClasse = 5

--FIM DO DQL

