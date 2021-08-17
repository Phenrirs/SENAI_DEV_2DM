--INICIO DO DQL

USE HROADS

--RESPOSTAS EM ORDEM

--Selecionar todos os personagens;
SELECT * FROM Personagens

--Selecionar todos as classes;
SELECT * FROM Classe

--Selecionar somente o nome das classes;
SELECT nomeClasse FROM Classe

--Selecionar todas as habilidades;
SELECT * FROM Habilidades

--Realizar a contagem de quantas habilidades estão cadastradas;
SELECT COUNT (nomeHabilidade) FROM Habilidades

--Selecionar somente os id’s das habilidades classificando-os por ordem crescente;
SELECT idHabilidades FROM Habilidades 
ORDER BY nomeHabilidade DESC

--Preciso conferir essa parte
--Por ordem crescente

--Selecionar todos os tipos de habilidades;
SELECT nomeTipo FROM Tipos

--Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte;
SELECT nomeHabilidade FROM Habilidades
RIGHT JOIN Tipos
ON Habilidades.idHabilidades = Tipos.idTipos

--Selecionar todos os personagens e suas respectivas classes;
SELECT NomePer FROM Personagens
RIGHT JOIN Classes
ON Personagens.idPersonagens = Classes.idPersonagens

--Selecionar todos os personagens e as classes (mesmo que elas não tenham correspondência em personagens);
SELECT NomePer FROM Personagens
FULL OUTER JOIN Classes
ON Personagens.idPersonagens = Classes.idPersonagens

--Selecionar todas as classes e suas respectivas habilidades;
SELECT nomeClasse  FROM Classe
RIGHT JOIN Habilidades
ON Classes.idClasse = Habilidades.idClasse

--Selecionar todas as habilidades e suas classes (somente as que possuem correspondência);
SELECT nomeHabilidades FROM Habilidades
INNER JOIN Classe 
ON Habilidades.idClasses = Classe.idClasse

--Selecionar todas as habilidades e suas classes (mesmo que elas não tenham correspondência).
SELECT nomeHabilidades FROM Habilidades
FULL OUTER JOIN Classe 
ON Habilidades.idClasses = Classe.idClasse

 --FIM DO DQL