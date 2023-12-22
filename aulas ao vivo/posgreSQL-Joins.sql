/*
INNER JOIN: retorna apenas as linhas que existem em ambas as tabelas 
LEFT JOIN: retorna todas as linhas da tabela à esquerda, mesmo que não haja correspondência na tabela à direita 
RIGHT JOIN: retorna todas as linhas da tabela à direita, mesmo que não haja correspondência na tabela à esquerda
FULL JOIN: retorna todas as linhas em ambas as tabelas.

JOIN simples (INNER JOIN)
RIGHT JOIN (ou RIGHT OUTER JOIN)
Filtrar com WHERE e identificar os NULOS (NULL)
Seleção de colunas usando AS(ALIAS)
*/

CREATE TABLE cliente (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(16) not NULL,
  sobrenome VARCHAR(24) not NULL,
  idade INT,
  pais VARCHAR(4)
);
 
CREATE TABLE produto (
  ID SERIAL PRIMARY KEY,
  item VARCHAR(48) NOT NULL,
  marca VARCHAR (24) NOT NULL
);
 
CREATE TABLE pedido (
  id SERIAL PRIMARY KEY,
  fk_id_cliente INT NOT NULL,
  fk_id_produto INT NOT NULL,
  quantidade INT NOT NULL,
  CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id),
  CONSTRAINT fk_produto FOREIGN KEY (fk_id_produto) REFERENCES produto(id)
);
 
INSERT INTO cliente (nome, sobrenome, idade, pais) 
VALUES
  ('João', 'Alves', 48, 'BR'),
  ('Roberto', 'Garcia', 36, 'MX'),
  ('Dario', 'Rubens', 39, 'ARG'),
  ('Julia', 'Lopes', 28, 'PE'),
  ('Rebeca', 'Giglio', 54, 'IT');
 
INSERT INTO produto (item, marca) 
VALUES
  ('teclado', 'Logitech'),
  ('mouse', 'HP'),
  ('monitor', 'LG'),
  ('mousepad', 'Logitech');
 
INSERT INTO pedido (fk_id_produto, fk_id_cliente, quantidade) 
VALUES
  (1, 4, 200),
  (2, 4, 800),
  (3, 3, 100),
  (1, 1, 400),
  (4, 2, 1200);
  
	ON fk_id_produto = produto.id

-- Primeiro passo
SELECT * FROM pedido
	RIGHT JOIN cliente
	ON fk_id_cliente = cliente.id
    
-- Segundo passo
SELECT * FROM pedido
	RIGHT JOIN cliente
	ON fk_id_cliente = cliente.id
	LEFT JOIN produto
	ON fk_id_produto = produto.id
 
-- Terceiro passo
SELECT nome, sobrenome, cliente.id AS cliente_id, quantidade, item, pedido.id AS pedido_id FROM pedido
	RIGHT JOIN cliente
	ON fk_id_cliente = cliente.id
	LEFT JOIN produto
	ON fk_id_produto = produto.id
    
--Essa consulta retorna apenas as colunas nome, sobrenome, cliente_id, quantidade, item e pedido_id. 
--As colunas nome e sobrenome da tabela cliente recebem os ALIAS nome e sobrenome, respectivamente. 
--A coluna id da tabela pedido recebe o ALIAS pedido_id.

--Listar todos os clientes que já compraram um teclado:
SELECT cliente.nome, cliente.sobrenome
FROM cliente
INNER JOIN pedido
ON cliente.id = pedido.fk_id_cliente
WHERE pedido.fk_id_produto = 1;
 
--Listar todos os produtos que já foram comprados por um determinado cliente com id = 4:
SELECT produto.item, produto.marca
FROM produto
INNER JOIN pedido
ON produto.id = pedido.fk_id_produto
WHERE pedido.fk_id_cliente = 4;
 
--Listar todos os pedidos de um determinado produto id=1:
SELECT pedido.id, pedido.quantidade
FROM pedido
WHERE pedido.fk_id_produto = 1;
 
--Listar o total de produtos vendidos de cada marca:
SELECT produto.marca, SUM(pedido.quantidade) AS quantidade_vendida
FROM produto
INNER JOIN pedido
ON produto.id = pedido.fk_id_produto
GROUP BY produto.marca;
 
--Listar todos os clientes que compraram produtos de mais de uma marca
SELECT cliente.nome, cliente.sobrenome
FROM cliente
CROSS JOIN pedido
GROUP BY cliente.id
HAVING COUNT(pedido.id) > 1;
 
-- Listar os três produtos mais vendidos
SELECT produto.item, SUM(pedido.quantidade) AS quantidade_vendida
FROM produto
INNER JOIN pedido
ON produto.id = pedido.fk_id_produto
GROUP BY produto.id
ORDER BY quantidade_vendida DESC
LIMIT 3;
 
-- Listar os três clientes que mais compraram cliente
SELECT cliente.nome, cliente.sobrenome, SUM(pedido.quantidade) AS quantidade_comprada
FROM cliente
INNER JOIN pedido
ON cliente.id = pedido.fk_id_cliente
GROUP BY cliente.id
ORDER BY quantidade_comprada DESC
LIMIT 3;