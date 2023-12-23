-- Criando a tabela
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_cadastro TIMESTAMP
);

INSERT INTO clientes (nome, email, data_cadastro) VALUES
    ('João Silva', 'joaosilva@gmail.com', '2023-12-21'),
    ('Maria Oliveira', 'mariaoliveira@gmail.com', '2021-01-10'),
    ('Carlos Santos', 'carlossantos@gmail.com', '2019-07-05');

-- Criação da função
CREATE OR REPLACE FUNCTION contar_clientes_cadastrados(data_consulta DATE)
RETURNS INTEGER AS
$$
DECLARE
    total_clientes INTEGER;
BEGIN
    SELECT COUNT(*) INTO total_clientes
    FROM clientes
    WHERE data_cadastro::DATE = data_consulta;

    RETURN total_clientes;
END;
$$
LANGUAGE plpgsql;

-- Chamada da função
SELECT contar_clientes_cadastrados('2023-12-22') AS total_clientes_cadastrados;
