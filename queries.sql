-- Comente ou remova a linha abaixo se for usar SQLite, pois o comando "USE" não é compatível.
USE movies;

-- 1 - Buscar o nome e ano dos filmes
SELECT
    name AS Nome,
    year AS Ano
FROM movies;


-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
    name AS Nome,
    year AS Ano,
    duration AS Duracao
FROM
    movies
ORDER BY
    year;


-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT
    name AS Nome,
    year AS Ano,
    duration AS Duracao
FROM
    movies
WHERE
    UPPER(name) = UPPER('de volta para o futuro');


-- 4 Buscar os filmes lançados em 1997
SELECT
    name AS Nome,
    year AS Ano,
    duration AS Duracao
FROM
    movies
WHERE
    year = 1997;


-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT
    name AS Nome,
    year AS Ano,
    duration AS Duracao
FROM
    movies
WHERE
    year > 2000;


-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
    name AS Nome,
    year AS Ano,
    duration AS Duracao
FROM
    movies
WHERE
    duration > 100 AND
    duration < 150
ORDER BY
    duration;


-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
    year AS Ano,
    COUNT(year) Quantidade
FROM
    movies
GROUP BY
    year
ORDER BY
    SUM(duration) DESC;


-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
    id AS Id,
    first_name AS PrimeiroNome,
    last_name AS UltimoNome,
    gender AS Genero
FROM
    actors
WHERE
    gender = 'M';


-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
    id AS Id,
    first_name AS PrimeiroNome,
    last_name AS UltimoNome,
    gender AS Genero
FROM
    actors
WHERE
    gender = 'F'
ORDER BY
    first_name;


-- 10 - Buscar o nome do filme e o gênero
SELECT
    name AS Nome,
    genres.gender AS Genero
FROM
    movies
    INNER JOIN movie_genres ON movies.id = movie_genres.movie_id
    INNER JOIN genres ON movie_genres.gender_id = genres.id;


-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
    name AS Nome,
    genres.gender AS Genero
FROM
    movies
    INNER JOIN movie_genres ON movies.id = movie_genres.movie_id
    INNER JOIN genres ON movie_genres.gender_id = genres.id
WHERE
    gender = 'Mistério';


-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
    name AS Nome,
    actors.first_name AS PrimeiroNome,
    actors.last_name AS UltimoNome,
    movies_cast.role AS Papel
FROM
    movies
    INNER JOIN movies_cast ON movies.id = movies_cast.movie_id
    INNER JOIN actors ON movies_cast.actor_id = actors.id
