-- 1
SELECT Nome, Ano FROM Filmes;

-- 2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY ANO;

-- 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

-- 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE ANO > 2000;

-- 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

-- 7
SELECT Ano, COUNT(Id) AS Quantidade FROM Filmes GROUP BY Ano  ORDER BY COUNT(Id)  DESC;

-- 8
SELECT * FROM Atores WHERE Genero = 'M';

-- 9 
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10
SELECT Nome, Genero 
FROM Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON FG.IdGenero = G.Id;

-- 11
SELECT Nome, Genero 
FROM Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE Genero = 'Mistério';

-- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id
