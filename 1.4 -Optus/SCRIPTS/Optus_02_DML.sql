USE Optus;

INSERT INTO Empresas(nomeEmpresa,Edere�o)
VALUES ('Optus','Rua Alameda Bar�o')

INSERT INTO Artistas(Nomes)
VALUES('Lil Nas X'),('Tobias Boon'),('Santoro'),('Mayra')

INSERT INTO Estilos(Titulos)
VALUES ('Pop'),('Rock'),('MPB'),('Punk')

INSERT INTO Permiss�o(Tipo)
VALUES ('ADM'),('Comun')

INSERT INTO Usuarios(idPermiss�o,nomeUser,Email,Senha)
VALUES (1,'Adalberto','Ada@gmail','13543'),(2,'Ordilei','Ord@gmail','124546'),(1,',Thiago','Thi@gmail','AbDDL02'),
(2,'Matheus','Mat@gmail','178654')

INSERT INTO Albuns(idEmpresas,idArtistas,idEstilos,Titulo,Lan�amento,Localiza��o,Minutos,Visualiza��o)
VALUES (1,3,4,'Moon light','15/08/2021','Spotify','00:40:00','Ativo'),(1,1,1,'Arise','15/09/2021','Spotify','00:55:00','Desativado'),
(1,2,2,'Sombrero','15/10/2021','Spotify','00:37:00','Desativado'),(1,4,3,'R�gia','15/11/2021','Spotify','00:46:00','Desativado')
