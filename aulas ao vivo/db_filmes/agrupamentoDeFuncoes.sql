-- Agrupamento com funções de grupo - GROUP BY
/*
	COUNT
    AVG
    SUM
    DISTINCT
    MAX & MIN
*/

-- =========================

-- Média das idades dos gêneros (M e F)
SELECT TRUNC(AVG (age)) AS media_das_idades_MASCULINO
FROM usuarios
WHERE gender = 'M';

SELECT TRUNC(AVG (age)) AS media_das_idades_FEMININO
FROM usuarios
WHERE gender = 'F';

-- com GROUP BY
SELECT TRUNC(AVG(age)) AS media_dos_generos, gender AS generos
FROM usuarios
GROUP BY gender;

-- saber a quantidade de avaliação, a média dessas avaliações de cada filme
SELECT 
	COUNT (*) as qtde_de_avaliacao,
    TRUNC(AVG(rating)) as media_das_avaliacoes,
    movie_id as filmes_id
FROM avaliacoes
GROUP BY filmes_id
ORDER BY media_das_avaliacoes DESC;

-- INCLUIR O NOME DO FILME NA BUSCA
SELECT 
	COUNT (*) as qtde_de_avaliacao,
    TRUNC(AVG(rating)) as media_das_avaliacoes,
    movie_id as filmes_id,
    max (filmes.title) as nome_do_filme
FROM avaliacoes
INNER JOIN filmes ON avaliacoes.movie_id = filmes.id
GROUP BY filmes_id
ORDER BY media_das_avaliacoes DESC;










