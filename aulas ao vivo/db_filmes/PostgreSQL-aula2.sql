CREATE TABLE artista (
	ID SERIAL PRIMARY KEY,
  	nome VARCHAR(20) UNIQUE
);

CREATE TABLE musica (
	ID SERIAL PRIMARY KEY,
  	nome VARCHAR(30) NOT NULL
);

CREATE TABLE gravacao (
	ID SERIAL PRIMARY KEY,
  	duracao_seg INT NOT NULL
);

DROP TABLE gravacao;


-- tabela musica
ALTER TABLE musica 
ADD COLUMN duracao_seg INT NOT NULL; 

-- inserir dados na tabela artista

INSERT INTO artista (nome)
VALUES 
  ('Carol Shein'),
  ('Metallica'),
  ('Iron Maiden'),
  ('Avenged Sevenfold'),
  ('Ghost'),
  ('Kessoku Band');

SELECT * FROM artista;

-- inserir dados na tabela música

INSERT INTO musica (nome, duracao_seg)
VALUES 
	('Cool', 200),
    ('Fade to Black', 180),
    ('Fear of the dark', 400),
    ('Unholy confessions', 180),
    ('Dance macabre', 200),
    ('if i could be a constellation', 250);

-- mostrar as tabelas

SELECT * FROM musica;
SELECT * FROM artista;

-- inserindo id de outra tabela

ALTER TABLE musica
ADD COLUMN fk_id_artista INT,
ADD CONSTRAINT fk_artista
FOREIGN KEY (fk_id_artista) REFERENCES artista (id);


-- referenciando a tabela artista na tabela música

UPDATE musica 
SET fk_id_artista = 1
WHERE nome = 'Cool';

UPDATE musica 
SET fk_id_artista = 2
WHERE nome = 'Fade to Black';

UPDATE musica 
SET fk_id_artista = 3
WHERE nome = 'Fear of the dark';

UPDATE musica 
SET fk_id_artista = 4
WHERE nome = 'Unholy confessions';

UPDATE musica 
SET fk_id_artista = 5
WHERE nome = 'Dance macabre';

UPDATE musica 
SET fk_id_artista = 6
WHERE nome = 'if i could be a constellation';


CREATE TABLE album (
	ID SERIAL PRIMARY KEY,
  	nome VARCHAR(30) NOT NULL,
  	ano INT NOT NULL,
  	total_musicas INT NOT NULL
);

-- puxando id de outra tabela

ALTER TABLE musica
ADD COLUMN fk_id_album INT,
ADD CONSTRAINT fk_album FOREIGN KEY(fk_id_album) REFERENCES album(id);

INSERT INTO album (nome, ano, total_musicas)
VALUES 
	('Cool', 2022, 10),
    ('Ride the Lightning', 1984, 8),
    ('Fear of the dark', 1992, 12),
    ('Waking the Fallen', 2003, 12),
    ('Prequelle', 2018, 10),
    ('Kessoku band', 2022, 14);

-- referenciando a tabela artista na tabela album

UPDATE musica 
SET fk_id_album = 1
WHERE nome = 'Cool';

UPDATE musica 
SET fk_id_album = 2
WHERE nome = 'Fade to Black';

UPDATE musica 
SET fk_id_album = 3
WHERE nome = 'Fear of the dark';

UPDATE musica 
SET fk_id_album = 4
WHERE nome = 'Unholy confessions';

UPDATE musica 
SET fk_id_album = 5
WHERE nome = 'Dance macabre';

UPDATE musica 
SET fk_id_album = 6
WHERE nome = 'if i could be a constellation';

SELECT * FROM musica;
SELECT * FROM artista;
SELECT * FROM album;


-- removendo a constraint da tabela artista na tabela musica

ALTER TABLE musica 
DROP CONSTRAINT fk_artista;

SELECT * FROM musica;

-- add novamente

ALTER TABLE musica 
ADD CONSTRAINT fk_artista
FOREIGN KEY (fk_id_artista) REFERENCES artista(ID)
ON DELETE CASCADE;
