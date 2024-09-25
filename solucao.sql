-- 1 - Buscar o nome e ano dos filmes
SELECT F.Nome, F.Ano  FROM Filmes f

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT F.Nome, F.Ano, F.Duracao  FROM Filmes f ORDER BY 2

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT F.Nome, F.Ano, F.Duracao  FROM Filmes f WHERE F.Nome LIKE 'de volta para o futuro'

--4 - Buscar os filmes lançados em 1997
SELECT F.Nome, F.Ano, F.Duracao  FROM Filmes f WHERE F.Ano =1997

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT F.Nome, F.Ano, F.Duracao  FROM Filmes f WHERE F.Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT F.Nome, F.Ano, F.Duracao  FROM Filmes f WHERE F.Duracao > 100 and  f.Duracao < 150

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT F.Ano, Count(*)  FROM Filmes f GROUP BY F.Ano  ORDER BY 2 DESC 

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT A.PrimeiroNome, A.UltimoNome  FROM Atores a WHERE A.Genero ='M' 

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT A.PrimeiroNome, A.UltimoNome  FROM Atores a WHERE A.Genero ='F' ORDER BY A.PrimeiroNome 

--10 - Buscar o nome do filme e o gênero
SELECT F.Nome,G.Genero  FROM Filmes f
JOIN FilmesGenero fg ON FG.IdFilme = F.Id 
JOIN Generos g ON FG.IdGenero = G.Id  

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome,G.Genero  FROM Filmes f
JOIN FilmesGenero fg ON FG.IdFilme = F.Id 
JOIN Generos g ON FG.IdGenero = G.Id  
WHERE G.Genero LIKE 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome , UltimoNome ,EF.Papel  FROM Filmes f
JOIN ElencoFilme ef ON EF.IdFilme = F.Id 
JOIN Atores a ON A.Id = EF.IdAtor  







