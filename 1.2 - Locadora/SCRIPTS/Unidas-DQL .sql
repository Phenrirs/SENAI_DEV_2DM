--DQL Unidas

USE Unidas

--listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
SELECT Inicio,Fim,nomeCliente,nomeModelo FROM Aluguel
RIGHT JOIN Cliente
ON Aluguel.idCliente = Cliente.idCliente
RIGHT JOIN Veiculo
ON Aluguel.idVeiculo = Veiculo.idVeiculo
RIGHT JOIN Modelo
ON Veiculo.idModelo = Modelo.idModelo

--listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro
SELECT Preco,Inicio,Fim,nomeCliente FROM Aluguel
INNER JOIN Cliente
ON Aluguel.idCliente = Cliente.idCliente
WHERE Cliente.idCliente = 3;
