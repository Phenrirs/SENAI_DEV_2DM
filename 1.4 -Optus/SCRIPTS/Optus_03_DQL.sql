USE Optus

--INICIO DQL

--RESPOSTAS!
--listar todos os usu�rios administradores, sem exibir suas senhas
SELECT nomeUser,Email,Tipo FROM Usuarios
FULL OUTER JOIN Permiss�o
ON Usuarios.idPermiss�o = Permiss�o.idPermiss�o

--listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
SELECT * FROM Albuns


--Vou demonstrar os albuns lan�ados ap�s um dia especifico! - Pedro do futuro: ou a gente altera a porra das datas, apagando o banco e pondo 
--pra rodar de novo


--listar os dados de um usu�rio atrav�s do e-mail e senha
SELECT Email,Senha FROM Usuarios
WHERE Email = 'Thi@gmail'
AND Senha = 'AbDDL02'

--Sobre listar os dados dos usuarios atrav�s do email e senha era isso?

--listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 
SELECT * FROM Albuns
LEFT JOIN Artistas
ON Albuns.idArtistas = Artistas.idArtistas
LEFT JOIN Estilos
ON Albuns.idEstilos = Estilos.idEstilos
--Como e onde eu coloco os crit�rios de apari��o nesse select para que is ids sumam?




