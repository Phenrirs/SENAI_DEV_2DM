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
ORDER BY nomeHabilidade ASC

--Preciso conferir essa parte
--Por ordem crescente

--Selecionar todos os tipos de habilidades;
SELECT nomeTipos FROM Tipos

--Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte;
SELECT nomeHabilidade,nomeTipos FROM Habilidades
INNER JOIN Tipos
ON Habilidades.idTipos = Tipos.idTipos

--Selecionar todos os personagens e suas respectivas classes;
SELECT NomePer,nomeClasse FROM Personagens
INNER JOIN Classe
ON Personagens.idClasse = Classe.idClasse
--Nesse caso coloquei o INNER JOIN pois acredito que com "todos os personagens" o enunciado esteja se referindo aos personagens cadastrados

--Selecionar todos os personagens e as classes (mesmo que elas não tenham correspondência em personagens);
SELECT NomePer,nomeClasse FROM Personagens
FULL OUTER JOIN Classe
ON Personagens.idClasse = Classe.idClasse

--Selecionar todas as classes e suas respectivas habilidades;
SELECT I.idHT, C.nomeClasse, H.nomeHabilidade  FROM Intermediaria I
INNER JOIN Classe C ON I.idClasse = C.idClasse
INNER JOIN Habilidades H ON I.idHabilidades = H.idHabilidades

--Selecionar todas as habilidades e suas classes (somente as que possuem correspondência);
SELECT H.nomeHabilidade,C.nomeClasse FROM Intermediaria I
INNER JOIN Habilidades H ON I.idHabilidades = H.idHabilidades
INNER JOIN Classe C ON I.idClasse = C.idClasse

--Tabela inermediaria também!

--Selecionar todas as habilidades e suas classes (mesmo que elas não tenham correspondência).
SELECT H.nomeHabilidade,C.nomeClasse FROM Intermediaria I
FULL OUTER JOIN Habilidades H ON I.idHabilidades = H.idHabilidades
FULL OUTER  JOIN Classe C ON I.idClasse = C.idClasse

--Tabela inermediaria também!

 --FIM DO DQL