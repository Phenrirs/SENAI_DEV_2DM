--INICIO DO DQL

USE Gufi
GO

--LISTAR TODOS OS TIPOS  DE USUARIO
SELECT * FROM TipoUsuario

--LISTAR TODOS OS USUARIO
SELECT * FROM Usuarios

--LISTAR TODAS AS INSTITUI��ES
SELECT * FROM Institui�ao

--LISTAR TODO OS TIPOS  DE EVENTOS
SELECT * FROM Categoria

--LISTA DE TODAS AS PRESEN�AS
SELECT * FROM Presen�as

-->SELECIONAR OS DADOS DOS EVENTOS , DA INSTITUICAO E DOS TIPOS DE EVENTOS
SELECT E.titulo, E.acesso, E.diaEvento, E.descri�ao, C.nomeTipoEve, I.nomeFantasia, I.endere�o FROM Eventos E
INNER JOIN Categoria C ON E.idCategoria = C.idCategoria
INNER JOIN Institui�ao I ON E.idInstitui�ao = I.idInstitui�ao

--ESSE "E","C" e "I" NA PONTA ANTES DOS NOMES DAS COLUNAS � UM APILIDO APLICADO NA TABELA QUE A COLUNA ESTA SENDO REFERENCIADA!

--SELECINAR OS DADOS DOS USU�RIOS MOSTRANDO O TIPO DE USU�RIO
SELECT U.nomeUser, U.email, U.senha, U.endere�o, TU.nomeTipoUser FROM Usuarios U
LEFT JOIN TipoUsuario TU ON U.idTipoUser = TU.idTipoUser

--SELECIONAR OS DADOS DOS EVENTOS, DA INSTITUI�AO, DOS TIPOS DE EVENTOS, DOS USUARIOS E A SITUA��O DA PRESEN�A
SELECT E.titulo, E.acesso, E.diaEvento, E.descri�ao, I.CNPJ, I.nomeFantasia, I.endere�o, C.nomeTipoEve, U.nomeUser, U.email, U.senha, U.endere�o, S.descri��o
FROM Eventos E
LEFT JOIN Institui�ao I ON E.idInstitui�ao = I.idInstitui�ao
LEFT JOIN Categoria C ON E.idCategoria = C.idCategoria
LEFT JOIN Presen�as P ON E.idEvento = P.idEvento
LEFT JOIN Usuarios U ON P.idUser = U.idUser
LEFT JOIN Situa�ao S ON P.idSitua�ao = S.idSitua�ao

--BUSCA UM USUARIOS ATTRAV�S DO SEU EMAIL E SENHA (UTILIZANDO WHERE)
SELECT U.email, U.senha, U.endere�o FROM Usuarios U
WHERE email = 'Lucas@email.com'
AND senha = 'lucas123'
AND endere�o = 'Rua S�o Sebasti�o, 41'

--Ha uma maneira mais facil de se fazer essa busca especifica pelos lados de uma linha especifica?
--Estou com essa duvida pois meio que para voc� puxar todos os dados de uma linha vc precisa saber de fato TODOSos dados daquela linha, logo, 
--� meio redundante puxar todos os dados via SCRIPT n�o acha?

--EXEMPLO DA OPTUS
--listar os dados de um usu�rio atrav�s do e-mail e senha
--SELECT Email,Senha FROM Usuarios
--WHERE Email = 'Thi@gmail'
--AND Senha = 'AbDDL02'