--INICIO DO DQL

USE Gufi
GO

--LISTAR TODOS OS TIPOS  DE USUARIO
SELECT * FROM TipoUsuario

--LISTAR TODOS OS USUARIO
SELECT * FROM Usuarios

--LISTAR TODAS AS INSTITUIÇÕES
SELECT * FROM Instituiçao

--LISTAR TODO OS TIPOS  DE EVENTOS
SELECT * FROM Categoria

--LISTA DE TODAS AS PRESENÇAS
SELECT * FROM Presenças

-->SELECIONAR OS DADOS DOS EVENTOS , DA INSTITUICAO E DOS TIPOS DE EVENTOS
SELECT E.titulo, E.acesso, E.diaEvento, E.descriçao, C.nomeTipoEve, I.nomeFantasia, I.endereço FROM Eventos E
INNER JOIN Categoria C ON E.idCategoria = C.idCategoria
INNER JOIN Instituiçao I ON E.idInstituiçao = I.idInstituiçao

--ESSE "E","C" e "I" NA PONTA ANTES DOS NOMES DAS COLUNAS É UM APILIDO APLICADO NA TABELA QUE A COLUNA ESTA SENDO REFERENCIADA!

--SELECINAR OS DADOS DOS USUÁRIOS MOSTRANDO O TIPO DE USUÁRIO
SELECT U.nomeUser, U.email, U.senha, U.endereço, TU.nomeTipoUser FROM Usuarios U
LEFT JOIN TipoUsuario TU ON U.idTipoUser = TU.idTipoUser

--SELECIONAR OS DADOS DOS EVENTOS, DA INSTITUIÇAO, DOS TIPOS DE EVENTOS, DOS USUARIOS E A SITUAÇÃO DA PRESENÇA
SELECT E.titulo, E.acesso, E.diaEvento, E.descriçao, I.CNPJ, I.nomeFantasia, I.endereço, C.nomeTipoEve, U.nomeUser, U.email, U.senha, U.endereço, S.descrição
FROM Eventos E
LEFT JOIN Instituiçao I ON E.idInstituiçao = I.idInstituiçao
LEFT JOIN Categoria C ON E.idCategoria = C.idCategoria
LEFT JOIN Presenças P ON E.idEvento = P.idEvento
LEFT JOIN Usuarios U ON P.idUser = U.idUser
LEFT JOIN Situaçao S ON P.idSituaçao = S.idSituaçao

--BUSCA UM USUARIOS ATTRAVÉS DO SEU EMAIL E SENHA (UTILIZANDO WHERE)
SELECT U.email, U.senha, U.endereço FROM Usuarios U
WHERE email = 'Lucas@email.com'
AND senha = 'lucas123'
AND endereço = 'Rua São Sebastião, 41'

--Ha uma maneira mais facil de se fazer essa busca especifica pelos lados de uma linha especifica?
--Estou com essa duvida pois meio que para você puxar todos os dados de uma linha vc precisa saber de fato TODOSos dados daquela linha, logo, 
--é meio redundante puxar todos os dados via SCRIPT não acha?

--EXEMPLO DA OPTUS
--listar os dados de um usuário através do e-mail e senha
--SELECT Email,Senha FROM Usuarios
--WHERE Email = 'Thi@gmail'
--AND Senha = 'AbDDL02'