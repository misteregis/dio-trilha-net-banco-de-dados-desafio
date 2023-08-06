# DIO - Trilha .NET - Banco de Dados
www.dio.me

[**CHANGELOG.md**](CHANGELOG.md)
- Veja algumas alterações e uns screenshots.

## Desafio de projeto
Para este desafio, você precisará usar seus conhecimentos adquiridos no módulo de banco de dados, da trilha .NET da DIO.

## Contexto
Você é responsável pelo banco de dados de um site de filmes, onde são armazenados dados sobre os filmes e seus atores. Sendo assim, foi solicitado para que você realize uma consulta no banco de dados com o objetivo de trazer alguns dados para análises.

## Proposta
Você precisará realizar 12 consultas ao banco de dados, cada uma retornando um tipo de informação.
O seu banco de dados está modelado da seguinte maneira:

![Diagrama banco de dados](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/08208f09-88a0-47ed-9570-c95dcef10f5f)

As tabelas sao descritas conforme a seguir:

**Filmes**

Tabela responsável por armazenar informações dos filmes.

**Atores**

Tabela responsável por armazenar informações dos atores.

**Generos**

Tabela responsável por armazenar os gêneros dos filmes.

**ElencoFilme**

Tabela responsável por representar um relacionamento do tipo muitos para muitos entre filmes e atores, ou seja, um ator pode trabalhar em muitos filmes, e filmes
podem ter muitos atores.

**FilmesGenero**

Tabela responsável por representar um relacionamento do tipo muitos para muitos entre filmes e gêneros, ou seja, um filme pode ter mais de um gênero, e um genêro pode fazer parte de muitos filmes.

## Preparando o banco de dados
Você deverá executar o arquivo **Script Filmes.sql** em seu banco de dados SQL Server, presente na pasta Scripts deste repositório ([ou clique aqui](Script%20Filmes.sql)). Esse script irá criar um banco chamado **Filmes**, contendo as tabelas e os dados necessários para você realizar este desafio.

## Objetivo
Você deverá criar diversas consultas, com o objetivo de retornar os dados a seguir. Abaixo de cada pedido tem o retorno esperado. O seu retorno deve ser igual ao da imagem.

## 1 - Buscar o nome e ano dos filmes

![Exercício 1](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/7ef6aaf4-97af-41ff-b89f-9fbd82a68150)

## 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

![Exercício 2](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/af711057-b34c-4a2b-a65e-7604ddf102a0)

## 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

![Exercício 3](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/db28061a-7b7b-4832-9c06-4f8dba6f5579)

## 4 - Buscar os filmes lançados em 1997

![Exercício 4](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/e6a13e23-6eb3-4ad1-964f-d3427afb51bc)

## 5 - Buscar os filmes lançados APÓS o ano 2000

![Exercício 5](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/2e649ae1-677c-422a-9cc3-5e9cd1e0066b)

## 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

![Exercício 6](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/89121651-a383-465a-85c2-2457716961dd)

## 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

![Exercício 7](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/7160cf77-c903-4f9a-a3d7-ec77e9b245d5)

## 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

![Exercício 8](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/cf2d62ef-94a0-4f98-a55b-85c5fda2e16e)

## 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

![Exercício 9](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/d8ac34d9-d239-4b13-93d5-9c3c442c1118)

## 10 - Buscar o nome do filme e o gênero

![Exercício 10](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/899cde5b-ea2a-48e4-9ed6-083fab9ac1b6)

## 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

![Exercício 11](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/6e82f409-5df9-4259-b3f3-b1cbf8d45b1e)

## 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

![Exercício 12](https://github.com/misteregis/dio-trilha-net-banco-de-dados-desafio/assets/9176161/02db399d-da09-49de-81aa-d467d9618809)
