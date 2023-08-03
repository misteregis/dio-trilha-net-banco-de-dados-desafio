-- Comente ou remova a linha abaixo se for usar SQLite, pois o comando "USE" não é compatível.
USE movies;

-- 1 - Buscar o nome e ano dos filmes
SELECT
    name,
    year
FROM movies;


-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
    name,
    year,
    duration
FROM
    movies
ORDER BY
    year;


-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT
    name,
    year,
    duration
FROM
    movies
WHERE
    UPPER(name) = UPPER('de volta para o futuro');


-- 4 Buscar os filmes lançados em 1997
SELECT
    name,
    year,
    duration
FROM
    movies
WHERE
    year = 1997;


-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT
    name,
    year,
    duration
FROM
    movies
WHERE
    year > 2000;


-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
    name,
    year,
    duration
FROM
    movies
WHERE
    duration > 100 AND
    duration < 150
ORDER BY
    duration;


-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT year,
    COUNT(year) Quantidade
FROM
    movies
GROUP BY
    year
ORDER BY
    SUM(duration) DESC;


-- 8 - Buscar os actors do gênero masculino, retornando o first_name, last_name
SELECT
    id,
    first_name,
    last_name,
    gender
FROM
    actors
WHERE
    gender = 'M';


-- 9 - Buscar os actors do gênero feminino, retornando o first_name, last_name, e ordenando pelo first_name
SELECT
    id,
    first_name,
    last_name,
    gender
FROM
    actors
WHERE
    gender = 'F'
ORDER BY
    first_name;


-- 10 - Buscar o nome do filme e o gênero
SELECT
    name,
    genres.gender
FROM
    movies
    INNER JOIN genre_movies ON movies.id = genre_movies.movie_id
    INNER JOIN genres ON genre_movies.gender_id = genres.id;


-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
    name,
    genres.gender
FROM
    movies
    INNER JOIN genre_movies ON movies.id = genre_movies.movie_id
    INNER JOIN genres ON genre_movies.gender_id = genres.id
WHERE
    gender = 'Mistério';


-- 12 - Buscar o nome do filme e os atores, trazendo o first_name, last_name e seu role
SELECT
    name,
    actors.first_name,
    actors.last_name,
    movie_cast.role
FROM
    movies
    INNER JOIN movie_cast ON movies.id = movie_cast.movie_id
    INNER JOIN actors ON movie_cast.actor_id = actors.id
