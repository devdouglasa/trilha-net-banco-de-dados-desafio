
-- Desafio 1

SELECT
	Nome,
	Ano
FROM Filmes

-- Desafio 2

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

-- Desafio 3

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Desafio 4

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- Desafio 5

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

-- Desafio 6

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- Desafio 7

SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano ORDER BY Quantidade DESC

-- Desafio 8

SELECT
	*
FROM Atores
WHERE Genero = 'M'

-- Desafio 9

SELECT
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC


-- Desafio 10

SELECT
	Nome,
	Genero
FROM Filmes, Generos, FilmesGenero
WHERE Filmes.Id = FilmesGenero.IdFilme AND Generos.Id = FilmesGenero.IdGenero


--Desafio 11

SELECT
	Nome,
	Genero
FROM Filmes, Generos, FilmesGenero
WHERE Filmes.Id = FilmesGenero.IdFilme AND Generos.Id = FilmesGenero.IdGenero AND Generos.Genero = 'Mistério'


-- Desafio 12

SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM Filmes, Atores, ElencoFilme
WHERE Atores.Id = ElencoFilme.IdAtor AND Filmes.Id = ElencoFilme.IdFilme

