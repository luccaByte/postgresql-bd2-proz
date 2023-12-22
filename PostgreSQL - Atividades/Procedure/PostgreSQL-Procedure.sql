CREATE TABLE vendas (
    id SERIAL PRIMARY KEY,
    produto VARCHAR(50),
    quantidade INT,
    data_venda DATE
);

DELIMITER //

CREATE PROCEDURE buscar_produto_por_id(IN produto_id INT)
BEGIN
    SELECT
        CONCAT('Produto: ', produto) AS nome_produto,
        CONCAT('Quantidade disponível: ', quantidade) AS qtd_disponivel
    FROM vendas
    WHERE id = produto_id;
END //

DELIMITER ;
