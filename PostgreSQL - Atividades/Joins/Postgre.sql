-- Tabela usuario

CREATE TABLE usuario (
    ID SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    cpf VARCHAR(11),
    email VARCHAR(100)
);

-- Tabela Pedido
CREATE TABLE pedido (
    ID INT PRIMARY KEY,
    Produto VARCHAR(50),
    Quantidade INT
);

-- adicionando id estrangeira na tabela pedido

ALTER TABLE pedido
ADD COLUMN usuarioID INT,
ADD CONSTRAINT usuarioID
FOREIGN KEY (usuarioID) REFERENCES usuario (id);


-- adicionando valores na tabela usuario
INSERT INTO usuario 
	(ID, nome, cpf, email)
VALUES
    (1, 'Lucas', '12345678911', 'lucas@email.com'),
    (2, 'Carol', '12345678900', 'carol@email.com');

-- adicionando valores na tabela pedido

INSERT INTO pedido (ID, Produto, Quantidade)
VALUES
    (1, 'Placa de vídeo', 1),
    (2, 'Placa mãe', 5);

SELECT * FROM usuario;
SELECT * FROM pedido;

UPDATE pedido 
SET usuarioID = 1
WHERE Produto = 'Placa de vídeo';

UPDATE pedido 
SET usuarioID = 2
WHERE Produto = 'Placa mãe';

-- Consulta com INNER JOIN
SELECT usuario.nome, usuario.cpf, usuario.email, pedido.Produto, pedido.Quantidade
FROM usuario
INNER JOIN pedido ON usuario.ID = pedido.usuarioID;

-- Consulta com LEFT JOIN
SELECT usuario.nome, usuario.cpf, usuario.email, pedido.Produto, pedido.Quantidade
FROM usuario
LEFT JOIN pedido ON usuario.ID = pedido.usuarioID;

-- Consulta com RIGHT JOIN
SELECT usuario.nome, usuario.cpf, usuario.email, pedido.Produto, pedido.Quantidade
FROM pedido
RIGHT JOIN usuario ON usuario.ID = pedido.usuarioID;

-- utilizando FULL JOIN 
SELECT usuario.nome, usuario.cpf, usuario.email, pedido.Produto, pedido.Quantidade
FROM usuario
LEFT JOIN pedido ON usuario.ID = pedido.usuarioID

UNION

SELECT usuario.nome, usuario.cpf, usuario.email, pedido.Produto, pedido.Quantidade
FROM pedido
RIGHT JOIN usuario ON usuario.ID = pedido.usuarioID;

