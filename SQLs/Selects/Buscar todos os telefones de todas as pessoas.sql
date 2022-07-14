--Consulta para pegar todos os números de cada pessoa
SELECT p.Nome, t.DDD, t.Numero 
FROM Pessoa p INNER JOIN Telefone t ON p.Id = t.IdPessoa
ORDER BY p.Id