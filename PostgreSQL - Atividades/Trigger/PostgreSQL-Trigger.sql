-- criando database escola
CREATE DATABASE escola;
USE escola;

-- criando a tabela aluno
CREATE TABLE aluno (
    aluno_id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    nota DECIMAL(2,1)
);

-- criando a tabela de notas
CREATE TABLE notas (
    notas_id SERIAL PRIMARY KEY,
    aluno_id INTEGER,
    nota_anterior DECIMAL(2,1),
    nova_nota DECIMAL(2,1),
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (aluno_id) REFERENCES aluno(aluno_id)
);

INSERT INTO aluno
	(nome, sobrenome, nota)
VALUES
	('lucas', 'ton gonçalves', 8.5),
    ('carol', 'ribeiro', 7.5);


-- criando uma trigger
CREATE TRIGGER trigger_alteracao_de_notas
AFTER INSERT OR UPDATE ON aluno
FOR EACH ROW
BEGIN
    INSERT INTO notas (aluno_id, nota_anterior, nova_nota)
    VALUES (
        CASE WHEN NEW.aluno_id IS NOT NULL THEN NEW.aluno_id ELSE OLD.aluno_id END,
        CASE WHEN NEW.aluno_id IS NOT NULL THEN 'INSERT' ELSE 'UPDATE' END,
        CASE WHEN NEW.aluno_id IS NOT NULL THEN NULL ELSE OLD.nota END,
        CASE WHEN NEW.aluno_id IS NOT NULL THEN NEW.nota ELSE NEW.nota END
    );
END;

INSERT INTO 
	notas (aluno_id, nota_anterior, nova_nota)
VALUES 
	(1, 8.5, 9.2);
    
SELECT * FROM aluno;
SELECT * FROM notas;