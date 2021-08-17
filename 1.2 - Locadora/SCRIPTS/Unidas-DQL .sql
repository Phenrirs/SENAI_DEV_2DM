--DQL Unidas

USE Unidas

--listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
SELECT Inicio,Fim,nomeClientes,nomeModelo FROM Aluguel
RIGHT JOIN Clientes
ON Aluguel.idClientes = Clientes.idClientes
RIGHT JOIN Veiculo
ON Aluguel.idVeiculo = Veiculo.idVeiculo
RIGHT JOIN Modelo
ON Veiculo.idModelo = Modelo.idModelo

--listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro
SELECT Preço,Inicio,Fim,nomeClientes FROM Aluguel
INNER JOIN Clientes
ON Aluguel.idClientes = Clientes.idClientes
WHERE Clientes.idClientes = 3;