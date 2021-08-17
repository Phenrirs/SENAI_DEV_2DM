USE Optus

--INICIO DQL

--RESPOSTAS!
--listar todos os usuários administradores, sem exibir suas senhas
SELECT nomeUser,Email,Tipo FROM Usuarios
FULL OUTER JOIN Permissão
ON Usuarios.idPermissão = Permissão.idPermissão

--listar todos os álbuns lançados após o um determinado ano de lançamento
SELECT * FROM Albuns


--Vou demonstrar os albuns lançados após um dia especifico! - Pedro do futuro: ou a gente altera a porra das datas, apagando o banco e pondo 
--pra rodar de novo


--listar os dados de um usuário através do e-mail e senha
SELECT Email,Senha FROM Usuarios
WHERE Email = 'Thi@gmail'
AND Senha = 'AbDDL02'

--Sobre listar os dados dos usuarios através do email e senha era isso?

--listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 
SELECT * FROM Albuns
LEFT JOIN Artistas
ON Albuns.idArtistas = Artistas.idArtistas
LEFT JOIN Estilos
ON Albuns.idEstilos = Estilos.idEstilos
--Como e onde eu coloco os critérios de aparição nesse select para que is ids sumam?




