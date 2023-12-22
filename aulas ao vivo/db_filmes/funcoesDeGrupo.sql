-- Funções de grupo
/*
	COUNT
    AVG
    SUM
    DISTINCT
    MAX & MIN
*/
-- =========================

-- 1. COUNT (CONTAR)

SELECT COUNT (*) AS quantos_filmes_cadastrados
FROM filmes;

SELECT COUNT (ID) AS qdte_usuarios
FROM usuarios;

SELECT COUNT (*) AS usuarios_maior_que_50_anos
FROM usuarios
WHERE age > 50;

-- 2. AVG (MÉDIA)

SELECT AVG (age) AS media_da_idade_dos_usuarios
FROM usuarios;

-- TRUNC tira todos os números depois da vírgula
SELECT TRUNC(AVG (age)) AS media_da_idade_dos_usuarios
FROM usuarios; 

-- conta apenas usuarios masculino
SELECT TRUNC(AVG (age)) AS media_das_idades_MASCULINO
FROM usuarios
WHERE gender = 'M';

-- 3. SUM (SOMAR)

SELECT * 
FROM avaliacoes
WHERE movie_id = 242;

SELECT SUM (rating) AS soma_das_notas
FROM avaliacoes
WHERE movie_id = 89;

SELECT SUM (age) AS soma_idade_MASCULINO
FROM usuarios
WHERE gender = 'M';

-- 4. DISTINCT (RETIRAR A REPETIÇÃO)

SELECT rating
FROM avaliacoes;

SELECT DISTINCT (rating) as notas_de_avaliacao
FROM avaliacoes
order by notas_de_avaliacao DESC;

SELECT DISTINCT (occupation_id) as cod_ocupacao_do_usuario
FROM usuarios
ORDER BY cod_ocupacao_do_usuario DESC;

-- 5. MAX & MIN 

SELECT 
	MAx (age) as maior_idade,
	MIN (age) as menor_idade
from usuarios;

-- =========================
SELECT *
FROM avaliacoes;

