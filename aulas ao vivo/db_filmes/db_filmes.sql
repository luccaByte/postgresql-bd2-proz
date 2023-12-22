DROP TABLE demo

--drop table if exists generos;
--drop table if exists generos_filmes;
--drop table if exists filmes;
--drop table if exists ocupacoes;
--drop table if exists avaliacoes;
--drop table if exists usuarios;

CREATE TABLE generos (
    id integer NOT NULL,
    name character varying(255)
);

CREATE TABLE generos_filmes (
    id integer NOT NULL,
    movie_id integer,
    genre_id integer
);


CREATE TABLE filmes (
    id integer NOT NULL,
    title character varying(255),
    release_date timestamp without time zone
);


CREATE TABLE ocupacoes (
    id integer NOT NULL,
    name character varying(255)
);


CREATE TABLE avaliacoes (
    id integer NOT NULL,
    user_id integer,
    movie_id integer,
    rating integer,
    rated_at timestamp without time zone
);

CREATE TABLE usuarios (
    id integer NOT NULL,
    age integer,
    gender character(1),
    occupation_id integer,
    zip_code character varying(255)
);


ALTER TABLE ONLY generos_filmes
    ADD CONSTRAINT generos_filmes_pkey PRIMARY KEY (id);

ALTER TABLE ONLY generos
    ADD CONSTRAINT generos_pkey PRIMARY KEY (id);

ALTER TABLE ONLY filmes
    ADD CONSTRAINT filmes_pkey PRIMARY KEY (id);

ALTER TABLE ONLY ocupacoes
    ADD CONSTRAINT ocupacoes_pkey PRIMARY KEY (id);

ALTER TABLE ONLY avaliacoes
    ADD CONSTRAINT avaliacoes_pkey PRIMARY KEY (id);

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


INSERT INTO generos (id, name) VALUES (1, 'Action');
INSERT INTO generos (id, name) VALUES (2, 'Adventure');
INSERT INTO generos (id, name) VALUES (3, 'Animation');
INSERT INTO generos (id, name) VALUES (4, 'Children''s');
INSERT INTO generos (id, name) VALUES (5, 'Comedy');
INSERT INTO generos (id, name) VALUES (6, 'Crime');
INSERT INTO generos (id, name) VALUES (7, 'Documentary');
INSERT INTO generos (id, name) VALUES (8, 'Drama');
INSERT INTO generos (id, name) VALUES (9, 'Fantasy');
INSERT INTO generos (id, name) VALUES (10, 'Film-Noir');
INSERT INTO generos (id, name) VALUES (11, 'Horror');
INSERT INTO generos (id, name) VALUES (12, 'Musical');
INSERT INTO generos (id, name) VALUES (13, 'Mystery');
INSERT INTO generos (id, name) VALUES (14, 'Romance');
INSERT INTO generos (id, name) VALUES (15, 'Sci-Fi');
INSERT INTO generos (id, name) VALUES (16, 'Thriller');
INSERT INTO generos (id, name) VALUES (17, 'War');
INSERT INTO generos (id, name) VALUES (18, 'Western');


SELECT * from generos;
--
-- Data for Name: generos_filmes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (1, 1, 3);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (2, 1, 4);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (3, 1, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (4, 2, 1);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (5, 2, 2);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (6, 2, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (7, 3, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (8, 4, 1);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (9, 4, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (10, 4, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (11, 5, 6);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (12, 5, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (13, 5, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (14, 6, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (15, 7, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (16, 7, 15);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (17, 8, 4);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (18, 8, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (19, 8, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (20, 9, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (21, 10, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (22, 10, 17);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (23, 11, 6);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (24, 11, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (25, 12, 6);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (26, 12, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (27, 13, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (28, 14, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (29, 14, 14);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (30, 15, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (31, 16, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (32, 16, 14);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (33, 17, 1);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (34, 17, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (35, 17, 6);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (36, 17, 11);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (37, 17, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (38, 18, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (39, 19, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (40, 20, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (41, 20, 14);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (42, 21, 1);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (43, 21, 2);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (44, 21, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (45, 21, 12);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (46, 21, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (47, 22, 1);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (48, 22, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (49, 22, 17);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (50, 23, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (51, 23, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (52, 24, 1);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (53, 24, 2);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (54, 24, 6);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (55, 25, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (56, 26, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (57, 27, 1);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (58, 28, 1);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (59, 28, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (60, 28, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (61, 29, 1);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (62, 29, 2);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (63, 29, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (64, 29, 6);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (65, 30, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (66, 31, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (67, 31, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (68, 31, 17);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (69, 32, 7);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (70, 33, 1);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (71, 33, 14);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (72, 33, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (73, 34, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (74, 34, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (75, 35, 2);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (76, 35, 4);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (77, 35, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (78, 36, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (79, 36, 14);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (80, 37, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (81, 38, 15);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (82, 38, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (83, 39, 1);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (84, 39, 6);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (85, 39, 15);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (86, 40, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (87, 41, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (88, 42, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (89, 43, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (90, 43, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (91, 44, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (92, 44, 16);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (93, 45, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (94, 45, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (95, 46, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (96, 47, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (97, 47, 8);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (98, 48, 7);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (99, 49, 5);
INSERT INTO generos_filmes (id, movie_id, genre_id) VALUES (100, 49, 14);


--
-- Data for Name: filmes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO filmes (id, title, release_date) VALUES (1, 'Toy Story (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (2, 'GoldenEye (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (3, 'Four Rooms (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (4, 'Get Shorty (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (5, 'Copycat (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (6, 'Shanghai Triad (Yao a yao yao dao waipo qiao) (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (7, 'Twelve Monkeys (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (8, 'Babe (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (9, 'Dead Man Walking (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (10, 'Richard III (1995)', '1996-01-22 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (11, 'Seven (Se7en) (1995)', '1995-01-01 01:00:00 ');
INSERT INTO filmes (id, title, release_date) VALUES (12, 'Usual Suspects, The (1995)', '1995-08-14 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (13, 'Mighty Aphrodite (1995)', '1995-10-30 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (14, 'Postino, Il (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (15, 'Mr. Holland''s Opus (1995)', '1996-01-29 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (16, 'French Twist (Gazon maudit) (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (17, 'From Dusk Till Dawn (1996)', '1996-02-05 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (18, 'White Balloon, The (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (19, 'Antonia''s Line (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (20, 'Angels and Insects (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (21, 'Muppet Treasure Island (1996)', '1996-02-16 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (22, 'Braveheart (1995)', '1996-02-16 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (23, 'Taxi Driver (1976)', '1996-02-16 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (24, 'Rumble in the Bronx (1995)', '1996-02-23 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (25, 'Birdcage, The (1996)', '1996-03-08 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (26, 'Brothers McMullen, The (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (27, 'Bad Boys (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (28, 'Apollo 13 (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (29, 'Batman Forever (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (30, 'Belle de jour (1967)', '1967-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (31, 'Crimson Tide (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (32, 'Crumb (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (33, 'Desperado (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (34, 'Doom Generation, The (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (35, 'Free Willy 2: The Adventure Home (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (36, 'Mad Love (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (37, 'Nadja (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (38, 'Net, The (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (39, 'Strange Days (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (40, 'To Wong Foo, Thanks for Everything! Julie Newmar (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (41, 'Billy Madison (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (42, 'Clerks (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (43, 'Disclosure (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (44, 'Dolores Claiborne (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (45, 'Eat Drink Man Woman (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (46, 'Exotica (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (47, 'Ed Wood (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (48, 'Hoop Dreams (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (49, 'I.Q. (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (50, 'Star Wars (1977)', '1977-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (51, 'Legends of the Fall (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (52, 'Madness of King George, The (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (53, 'Natural Born Killers (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (54, 'Outbreak (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (55, 'Professional, The (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (56, 'Pulp Fiction (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (57, 'Priest (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (58, 'Quiz Show (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (59, 'Three Colors: Red (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (60, 'Three Colors: Blue (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (61, 'Three Colors: White (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (62, 'Stargate (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (63, 'Santa Clause, The (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (64, 'Shawshank Redemption, The (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (65, 'What''s Eating Gilbert Grape (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (66, 'While You Were Sleeping (1995)', '1995-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (67, 'Ace Ventura: Pet Detective (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (68, 'Crow, The (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (69, 'Forrest Gump (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (70, 'Four Weddings and a Funeral (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (71, 'Lion King, The (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (72, 'Mask, The (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (73, 'Maverick (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (74, 'Faster Pussycat! Kill! Kill! (1965)', '1965-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (75, 'Brother Minister: The Assassination of Malcolm X (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (76, 'Carlito''s Way (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (77, 'Firm, The (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (78, 'Free Willy (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (79, 'Fugitive, The (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (80, 'Hot Shots! Part Deux (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (81, 'Hudsucker Proxy, The (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (82, 'Jurassic Park (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (83, 'Much Ado About Nothing (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (84, 'Robert A. Heinlein''s The Puppet Masters (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (85, 'Ref, The (1994)', '1994-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (86, 'Remains of the Day, The (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (87, 'Searching for Bobby Fischer (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (88, 'Sleepless in Seattle (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (89, 'Blade Runner (1982)', '1982-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (90, 'So I Married an Axe Murderer (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (91, 'Nightmare Before Christmas, The (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (92, 'True Romance (1993)', '1993-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (93, 'Welcome to the Dollhouse (1995)', '1996-05-24 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (94, 'Home Alone (1990)', '1990-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (95, 'Aladdin (1992)', '1992-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (96, 'Terminator 2: Judgment Day (1991)', '1991-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (97, 'Dances with Wolves (1990)', '1990-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (98, 'Silence of the Lambs, The (1991)', '1991-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (99, 'Snow White and the Seven Dwarfs (1937)', '1937-01-01 01:00:00');
INSERT INTO filmes (id, title, release_date) VALUES (100, 'Fargo (1996)', '1997-02-14 01:00:00');


--
-- Data for Name: ocupacoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ocupacoes (id, name) 
VALUES 
(1, 'Administrator'),
(2, 'Artist'),
(3, 'Doctor'),
(4, 'Educator'),
(5, 'Engineer'),
(6, 'Entertainment'),
(7, 'Executive'),
(8, 'Healthcare'),
(9, 'Homemaker'),
(10, 'Lawyer'),
(11, 'Librarian'),
(12, 'Marketing'),
(13, 'None'),
(14, 'Other'),
(15, 'Programmer'),
(16, 'Retired'),
(17, 'Salesman'),
(18, 'Scientist'),
(19, 'Student'),
(20, 'Technician'),
(21, 'Writer');



--
-- Data for Name: avaliacoes; Type: TABLE DATA; Schema: public; Owner: postgres
--
INSERT INTO avaliacoes (id, user_id, movie_id, rating, rated_at) 
VALUES
--(1, 196, 242, 3, '1997-12-04 13:55:49')
(2, 186, 302, 3, '1998-04-04 16:22:22'),
(3, 22, 377, 1, '1997-11-07 05:18:36'),
(4, 244, 51, 2, '1997-11-27 03:02:03'),
(5, 166, 346, 1, '1998-02-02 03:33:16'),
(6, 298, 474, 4, '1998-01-07 12:20:06'),
(7, 115, 265, 2, '1997-12-03 15:51:28'),
(8, 253, 465, 5, '1998-04-03 15:34:27'),
(9, 305, 451, 3, '1998-02-01 07:20:17'),
(10, 6, 86, 3, '1997-12-31 19:16:53'),
(11, 62, 257, 2, '1997-11-12 20:07:14'),
(12, 286, 1014, 5, '1997-11-17 13:38:45'),
(13, 200, 222, 5, '1997-10-05 06:05:40'),
(14, 210, 40, 3, '1998-03-27 18:59:54'),
(15, 224, 29, 3, '1998-02-21 21:40:57'),
(16, 303, 785, 3, '1997-11-14 03:28:38'),
(17, 122, 387, 5, '1997-11-11 15:47:39'),
(18, 194, 274, 2, '1997-11-14 18:36:34'),
(19, 291, 1042, 4, '1997-09-21 06:42:24'),
(20, 234, 1184, 2, '1998-04-08 20:47:17'),
(21, 119, 392, 4, '1998-01-30 14:13:34'),
(22, 167, 486, 4, '1998-04-16 11:54:12'),
(23, 299, 144, 4, '1997-10-26 13:55:20'),
(24, 291, 118, 2, '1997-09-21 06:24:38'),
(25, 308, 1, 4, '1998-02-17 15:28:52'),
(26, 95, 546, 2, '1997-11-10 19:16:06'),
(27, 38, 95, 5, '1998-04-12 22:14:54'),
(28, 102, 768, 2, '1998-01-02 11:40:50'),
(29, 63, 277, 4, '1997-10-01 20:10:01'),
(30, 160, 234, 5, '1997-10-14 18:33:05'),
(31, 50, 246, 3, '1997-10-16 23:38:49'),
(32, 301, 98, 4, '1997-12-14 03:03:47'),
(33, 225, 193, 4, '1997-11-14 18:35:27'),
(34, 290, 88, 4, '1997-11-28 13:46:03'),
(35, 97, 194, 3, '1998-01-08 03:54:20'),
(36, 157, 274, 4, '1998-02-07 20:33:55'),
(37, 181, 1081, 1, '1997-11-08 02:17:03'),
(38, 278, 603, 5, '1998-03-30 19:02:10'),
(39, 276, 796, 1, '1997-09-20 18:45:32'),
(40, 7, 32, 4, '1998-03-31 10:28:52'),
(41, 10, 16, 4, '1997-10-26 16:01:17'),
(42, 284, 304, 4, '1998-01-20 18:48:42'),
(43, 201, 979, 2, '1998-01-06 17:17:13'),
(44, 276, 564, 3, '1997-09-20 18:43:25'),
(45, 287, 327, 5, '1997-09-27 01:18:36'),
(46, 246, 201, 5, '1998-01-16 01:33:14'),
(47, 242, 1137, 5, '1997-11-17 02:33:16'),
(48, 249, 241, 5, '1997-11-15 22:46:34'),
(49, 99, 4, 5, '1998-02-03 13:18:17'),
(50, 178, 332, 3, '1997-12-22 18:43:57'),
(51, 251, 100, 4, '1998-01-31 16:38:04'),
(52, 81, 432, 2, '1997-10-10 23:58:51'),
(53, 260, 322, 4, '1998-03-22 23:08:18'),
(54, 25, 181, 5, '1998-01-26 20:23:35'),
(55, 59, 196, 5, '1998-02-23 01:38:08'),
(56, 72, 679, 2, '1997-11-20 12:46:04'),
(57, 87, 384, 4, '1997-11-18 16:18:47'),
(58, 290, 143, 5, '1997-11-25 14:11:33'),
(59, 42, 423, 5, '1997-12-02 22:08:07'),
(60, 292, 515, 4, '1997-12-02 21:06:17'),
(61, 115, 20, 3, '1997-12-03 15:43:29'),
(62, 20, 288, 1, '1997-11-16 06:06:24'),
(63, 201, 219, 4, '1998-01-06 16:51:13'),
(64, 13, 526, 3, '1997-12-14 21:10:53'),
(65, 246, 919, 4, '1998-01-16 01:22:29'),
(66, 138, 26, 5, '1997-11-08 19:23:52'),
(67, 167, 232, 1, '1998-04-16 11:52:21'),
(68, 60, 427, 5, '1997-12-28 14:30:20'),
(69, 57, 304, 5, '1998-01-01 21:49:41'),
(70, 223, 274, 4, '1998-04-02 17:48:14'),
(71, 189, 512, 4, '1998-04-22 17:41:42'),
(72, 243, 15, 3, '1997-11-19 22:57:20'),
(73, 92, 1049, 1, '1998-03-18 17:10:26'),
(74, 246, 416, 3, '1998-01-16 01:57:27'),
(75, 194, 165, 4, '1997-11-14 20:32:03'),
(76, 241, 690, 2, '1998-02-12 00:11:22'),
(77, 178, 248, 4, '1997-12-22 18:52:34'),
(78, 254, 1444, 3, '1998-02-03 01:12:38'),
(79, 293, 5, 3, '1998-03-03 03:29:36'),
(80, 127, 229, 5, '1998-01-09 14:54:27'),
(81, 225, 237, 5, '1997-11-14 18:34:03'),
(82, 299, 229, 3, '1997-10-30 04:20:29'),
(83, 225, 480, 5, '1997-11-14 18:52:28'),
(84, 276, 54, 3, '1997-09-20 18:30:25'),
(85, 291, 144, 5, '1997-09-21 06:44:51'),
(86, 222, 366, 4, '1997-10-30 01:49:41'),
(87, 267, 518, 5, '1997-11-08 04:49:33'),
(88, 42, 403, 3, '1997-12-02 22:24:44'),
(89, 11, 111, 4, '1998-04-06 20:04:22'),
(90, 95, 625, 4, '1998-03-03 16:46:52'),
(91, 8, 338, 4, '1997-11-12 17:11:13'),
(92, 162, 25, 4, '1997-10-23 17:39:33'),
(93, 87, 1016, 4, '1997-11-18 16:03:14'),
(94, 279, 154, 5, '1997-09-26 14:51:31'),
(95, 145, 275, 2, '1998-01-23 10:11:45'),
(96, 119, 1153, 5, '1997-09-20 15:46:38'),
(97, 62, 498, 4, '1997-11-12 20:30:48'),
(98, 62, 382, 3, '1997-11-12 20:58:57'),
(99, 28, 209, 4, '1997-12-12 19:13:34'),
(100, 135, 23, 4, '1997-11-18 10:56:05'),
(101, 32, 294, 3, '1998-01-02 00:57:43'),
(102, 90, 382, 5, '1998-03-31 19:37:15'),
(103, 286, 208, 4, '1997-10-22 12:52:22'),
(104, 293, 685, 3, '1998-03-03 03:06:10'),
(105, 216, 144, 4, '1997-11-22 19:37:19'),
(106, 166, 328, 5, '1998-02-02 03:35:22'),
(107, 250, 496, 4, '1997-10-29 00:01:39'),
(108, 271, 132, 5, '1998-01-26 19:04:32'),
(109, 160, 174, 5, '1997-10-14 18:26:47'),
(110, 265, 118, 4, '1997-09-26 21:38:34'),
(111, 198, 498, 3, '1998-01-07 19:11:32'),
(112, 42, 96, 5, '1997-12-02 21:59:38'),
(113, 168, 151, 5, '1998-01-08 17:34:18'),
(114, 110, 307, 4, '1998-02-08 23:21:00'),
(115, 58, 144, 4, '1998-01-08 22:15:36'),
(116, 90, 648, 4, '1998-03-31 19:52:34'),
(117, 271, 346, 4, '1998-01-26 17:53:50'),
(118, 62, 21, 3, '1997-11-12 20:24:20'),
(119, 279, 832, 3, '1997-12-06 00:37:34'),
(120, 237, 514, 4, '1997-11-12 21:17:21'),
(121, 94, 789, 4, '1998-04-04 17:14:47'),
(122, 128, 485, 3, '1997-11-19 17:14:55'),
(123, 298, 317, 4, '1998-01-07 12:20:06'),
(124, 44, 195, 5, '1997-10-31 23:31:14'),
(125, 264, 200, 5, '1998-01-29 23:05:52'),
(126, 194, 385, 2, '1997-11-14 14:24:03'),
(127, 72, 195, 5, '1997-11-20 12:55:02'),
(128, 222, 750, 5, '1998-01-03 06:12:00'),
(129, 250, 264, 3, '1997-10-28 23:39:42'),
(130, 41, 265, 3, '1998-03-23 18:04:02'),
(131, 224, 245, 3, '1998-02-21 15:30:16'),
(132, 82, 135, 3, '1997-11-05 20:40:29'),
(133, 262, 1147, 4, '1997-11-17 16:35:10'),
(134, 293, 471, 3, '1998-03-03 03:01:24'),
(135, 216, 658, 3, '1997-11-22 22:30:29'),
(136, 250, 140, 3, '1997-10-29 00:27:39'),
(137, 59, 23, 5, '1998-02-23 01:41:40'),
(138, 286, 379, 5, '1997-10-22 13:22:51'),
(139, 244, 815, 4, '1997-11-27 02:33:05'),
(140, 7, 479, 4, '1998-03-31 10:46:50'),
(141, 174, 368, 1, '1998-02-02 13:46:42'),
(142, 87, 274, 4, '1997-11-18 16:12:14'),
(143, 194, 1211, 2, '1997-11-14 21:49:40'),
(144, 82, 1134, 2, '1998-01-13 16:00:02'),
(145, 13, 836, 2, '1997-12-14 20:49:06'),
(146, 13, 272, 4, '1998-01-11 15:06:43'),
(147, 244, 756, 2, '1997-11-27 02:32:37'),
(148, 305, 427, 5, '1998-02-01 06:51:30'),
(149, 95, 787, 2, '1998-03-03 16:55:30'),
(150, 43, 14, 2, '1998-01-04 21:15:45'),
(151, 299, 955, 4, '1998-03-10 01:07:03'),
(152, 57, 419, 3, '1998-01-01 21:47:34'),
(153, 84, 405, 3, '1997-12-30 01:26:03'),
(154, 269, 504, 4, '1998-04-01 13:58:42'),
(155, 299, 111, 3, '1997-10-26 13:03:04'),
(156, 194, 466, 4, '1997-11-14 14:44:36'),
(157, 160, 135, 4, '1997-10-14 18:26:47'),
(158, 99, 268, 3, '1998-01-24 19:44:07'),
(159, 10, 486, 4, '1997-10-26 15:27:26'),
(160, 259, 117, 4, '1997-09-20 00:09:48'),
(161, 85, 427, 3, '1997-11-13 19:25:50'),
(162, 303, 919, 4, '1997-11-13 22:28:15'),
(163, 213, 273, 5, '1997-11-07 00:49:47'),
(164, 121, 514, 3, '1998-03-31 20:45:47'),
(165, 90, 98, 5, '1998-03-31 19:26:44'),
(166, 49, 559, 2, '1998-02-21 11:23:25'),
(167, 42, 794, 3, '1997-12-02 22:20:25'),
(168, 155, 323, 2, '1997-11-12 19:47:41'),
(169, 68, 117, 4, '1997-10-16 01:52:19'),
(170, 172, 177, 4, '1997-09-29 09:59:25'),
(171, 19, 4, 4, '1998-01-21 18:00:40'),
(172, 268, 231, 4, '1997-10-01 19:15:36'),
(173, 5, 2, 3, '1997-09-30 13:14:13'),
(174, 305, 117, 2, '1998-02-01 07:07:08'),
(175, 44, 294, 4, '1997-12-31 21:52:36'),
(176, 43, 137, 4, '1997-10-04 11:34:16'),
(177, 279, 1336, 1, '1997-09-26 15:25:53'),
(178, 80, 466, 5, '1998-02-13 18:28:21'),
(179, 254, 164, 4, '1998-02-03 00:26:08'),
(180, 298, 281, 3, '1998-01-07 12:28:56'),
(181, 279, 1240, 1, '1998-04-09 23:13:24'),
(182, 66, 298, 4, '1997-12-31 18:48:44'),
(183, 18, 443, 3, '1997-11-21 14:36:33'),
(184, 268, 1035, 2, '1997-09-29 11:09:34'),
(185, 99, 79, 4, '1998-01-24 20:15:38'),
(186, 13, 98, 4, '1997-12-07 15:16:51'),
(187, 26, 258, 3, '1998-03-31 09:39:09'),
(188, 7, 455, 4, '1998-03-31 11:04:46'),
(189, 222, 755, 4, '1997-10-30 01:51:21'),
(190, 200, 673, 5, '1998-01-06 21:15:54'),
(191, 119, 328, 4, '1997-10-15 11:58:33'),
(192, 213, 172, 5, '1997-11-08 00:17:22'),
(193, 276, 322, 3, '1997-09-20 17:13:12'),
(194, 94, 1217, 3, '1998-04-04 17:51:26'),
(195, 130, 379, 4, '1997-10-02 11:14:22'),
(196, 38, 328, 4, '1998-04-12 21:51:28'),
(197, 160, 719, 3, '1997-10-14 17:39:37'),
(198, 293, 1267, 3, '1998-03-03 03:36:06'),
(199, 26, 930, 2, '1998-03-31 20:13:05'),
(200, 130, 216, 4, '1997-09-25 16:42:25'),
(201, 92, 1079, 3, '1998-02-02 16:17:35'),
(202, 256, 452, 4, '1997-12-15 03:49:59'),
(203, 1, 61, 4, '1997-11-03 05:33:40'),
(204, 72, 48, 4, '1997-11-20 12:38:38'),
(205, 56, 755, 3, '1998-04-18 11:36:47'),
(206, 13, 360, 4, '1997-12-14 21:08:46'),
(207, 15, 405, 2, '1997-11-13 19:19:17'),
(208, 92, 77, 3, '1997-09-30 18:23:57'),
(209, 207, 476, 2, '1998-01-09 20:52:23'),
(210, 292, 174, 5, '1997-12-02 21:31:21'),
(211, 232, 483, 5, '1998-02-27 01:20:22'),
(212, 251, 748, 2, '1998-01-31 16:42:55'),
(213, 224, 26, 3, '1998-02-21 21:35:53'),
(214, 181, 220, 4, '1997-11-08 02:13:12'),
(215, 259, 255, 4, '1997-09-20 00:05:10'),
(216, 305, 471, 4, '1998-02-01 07:00:48'),
(217, 52, 280, 3, '1997-12-23 22:20:06'),
(218, 161, 202, 5, '1998-03-29 08:26:09'),
(219, 148, 408, 5, '1997-10-20 23:56:58'),
(220, 125, 235, 2, '1998-04-17 15:42:39'),
(221, 97, 228, 5, '1998-01-08 03:54:20'),
(222, 58, 1098, 4, '1998-01-08 22:15:36'),
(223, 83, 234, 4, '1998-02-16 19:45:48'),
(224, 90, 347, 4, '1998-03-31 19:28:39'),
(225, 272, 178, 5, '1997-11-13 19:05:13'),
(226, 194, 181, 3, '1997-11-14 13:29:56'),
(227, 125, 478, 4, '1997-11-13 18:57:08'),
(228, 110, 688, 1, '1998-02-08 23:26:45'),
(229, 299, 14, 4, '1997-10-26 12:56:15'),
(230, 151, 10, 5, '1997-11-14 14:28:41'),
(231, 269, 127, 4, '1998-04-01 12:56:05'),
(232, 6, 14, 5, '1997-12-31 18:14:09'),
(233, 54, 106, 3, '1997-11-30 22:58:02'),
(234, 303, 69, 5, '1997-11-13 22:32:22'),
(235, 16, 944, 1, '1997-10-24 19:05:22'),
(236, 301, 790, 4, '1997-12-14 03:50:21'),
(237, 276, 1091, 3, '1997-09-20 19:03:55'),
(238, 305, 214, 2, '1998-02-01 06:51:08'),
(239, 194, 1028, 2, '1997-11-14 18:59:08'),
(240, 91, 323, 2, '1998-04-01 10:46:37'),
(241, 87, 554, 4, '1997-11-18 15:59:00'),
(242, 294, 109, 4, '1997-10-25 20:46:39'),
(243, 286, 171, 4, '1997-10-22 12:49:51'),
(244, 200, 318, 5, '1998-01-06 21:14:18'),
(245, 229, 328, 1, '1998-04-03 16:35:42'),
(246, 178, 568, 4, '1997-12-22 19:35:55'),
(247, 303, 842, 2, '1997-11-14 03:20:04'),
(248, 62, 65, 4, '1997-11-12 20:44:46'),
(249, 207, 591, 3, '1997-10-04 23:30:08'),
(250, 92, 172, 4, '1997-09-30 18:01:11'),
(251, 301, 401, 4, '1997-12-14 03:40:40'),
(252, 36, 339, 5, '1997-12-15 01:46:21'),
(253, 70, 746, 3, '1998-01-07 03:17:37'),
(254, 63, 242, 3, '1997-10-01 20:06:30'),
(255, 28, 201, 3, '1997-12-12 19:21:11'),
(256, 279, 68, 4, '1997-09-26 17:56:47'),
(257, 250, 7, 4, '1997-10-28 23:48:36'),
(258, 14, 98, 3, '1998-03-26 00:02:15'),
(259, 299, 1018, 3, '1998-03-10 00:58:44'),
(260, 194, 54, 3, '1997-11-14 14:44:36'),
(261, 303, 815, 3, '1997-11-14 03:32:12'),
(262, 119, 237, 5, '1997-09-20 14:03:58'),
(263, 295, 218, 5, '1997-11-19 17:08:18'),
(264, 268, 930, 2, '1997-10-01 18:55:42'),
(265, 268, 2, 2, '1997-10-01 19:16:13'),
(266, 66, 258, 4, '1997-12-31 18:44:49'),
(267, 233, 202, 5, '1997-11-13 02:11:04'),
(268, 83, 623, 4, '1997-11-23 16:09:38'),
(269, 214, 334, 3, '1998-04-02 15:42:20'),
(270, 192, 476, 2, '1997-12-05 22:30:43'),
(271, 100, 344, 4, '1998-03-31 17:07:48'),
(272, 268, 145, 1, '1997-10-01 19:21:41'),
(273, 301, 56, 4, '1997-12-14 03:16:27'),
(274, 307, 89, 5, '1997-11-11 19:29:46'),
(275, 234, 141, 3, '1998-04-11 19:43:29'),
(276, 83, 576, 4, '1997-11-23 16:12:35'),
(277, 181, 264, 2, '1997-11-08 02:00:24'),
(278, 297, 133, 4, '1997-09-25 23:14:50'),
(279, 38, 153, 5, '1998-04-12 22:19:29'),
(280, 7, 382, 4, '1998-03-31 10:48:13'),
(281, 264, 813, 4, '1998-01-29 23:15:52'),
(282, 181, 872, 1, '1997-11-08 02:03:34'),
(283, 201, 146, 1, '1998-01-07 00:36:19'),
(284, 85, 507, 4, '1997-11-13 19:23:19'),
(285, 269, 367, 3, '1998-04-01 14:00:23'),
(286, 59, 468, 3, '1998-02-23 01:50:55'),
(287, 286, 143, 4, '1998-03-11 18:25:49'),
(288, 193, 96, 1, '1998-03-05 16:01:47'),
(289, 113, 595, 5, '1997-10-04 00:40:24'),
(290, 292, 11, 5, '1997-12-02 21:08:13'),
(291, 130, 1014, 3, '1997-10-07 16:58:38'),
(292, 275, 98, 4, '1997-09-24 23:39:00'),
(293, 189, 520, 5, '1998-04-22 14:16:20'),
(294, 219, 82, 1, '1998-03-09 11:07:35'),
(295, 218, 209, 5, '1997-10-22 00:49:06'),
(296, 123, 427, 3, '1997-11-18 15:10:20'),
(297, 119, 222, 5, '1997-09-20 14:08:31'),
(298, 158, 177, 4, '1997-11-21 15:46:47'),
(299, 222, 118, 4, '1997-10-22 21:43:22'),
(300, 302, 322, 2, '1997-11-13 14:01:15'),
(301, 279, 501, 3, '1997-09-26 18:20:43'),
(302, 301, 79, 5, '1997-12-14 03:13:23'),
(303, 181, 3, 2, '1997-11-08 02:30:41'),
(304, 201, 695, 1, '1998-01-07 00:28:35'),
(305, 13, 198, 3, '1997-12-07 15:19:53'),
(306, 1, 189, 3, '1998-03-01 03:15:28'),
(307, 145, 237, 5, '1997-09-26 07:42:50'),
(308, 23, 385, 4, '1997-09-20 17:14:22'),
(309, 201, 767, 4, '1998-01-06 17:21:45'),
(310, 296, 705, 5, '1998-01-07 16:19:53'),
(311, 42, 546, 3, '1997-12-02 21:36:57'),
(312, 33, 872, 3, '1998-04-07 12:50:30'),
(313, 301, 554, 3, '1997-12-14 03:53:50'),
(314, 16, 64, 5, '1997-10-24 17:11:37'),
(315, 95, 135, 3, '1997-11-10 19:32:42'),
(316, 154, 357, 4, '1997-11-10 03:11:53'),
(317, 77, 484, 5, '1998-01-13 21:22:46'),
(318, 296, 508, 5, '1998-01-07 16:09:44'),
(319, 302, 303, 2, '1997-11-13 13:59:45'),
(320, 244, 673, 3, '1997-11-27 02:57:47'),
(321, 222, 77, 4, '1997-10-30 01:53:36'),
(322, 13, 215, 5, '1997-12-14 21:03:08'),
(323, 16, 705, 5, '1997-10-24 17:52:16'),
(324, 270, 452, 4, '1997-10-15 20:57:44'),
(325, 145, 15, 2, '1997-09-26 07:44:15'),
(326, 187, 64, 5, '1997-11-13 22:00:31'),
(327, 200, 304, 5, '1997-10-05 05:54:04'),
(328, 170, 749, 5, '1998-02-16 14:22:50'),
(329, 101, 829, 3, '1997-10-17 22:55:38'),
(330, 184, 218, 3, '1998-03-14 18:10:40'),
(331, 128, 204, 4, '1997-11-19 17:24:38'),
(332, 181, 1295, 1, '1997-11-08 02:03:01'),
(333, 184, 153, 3, '1998-03-14 18:34:45'),
(334, 1, 33, 4, '1997-11-03 05:38:19'),
(335, 1, 160, 4, '1997-09-24 00:42:27'),
(336, 184, 321, 5, '1998-03-14 17:22:47'),
(337, 54, 595, 3, '1997-11-30 22:56:53'),
(338, 94, 343, 4, '1998-04-04 18:23:29'),
(339, 128, 508, 4, '1997-11-19 17:29:27'),
(340, 23, 323, 2, '1997-09-20 16:37:46'),
(341, 301, 227, 3, '1997-12-14 03:27:02'),
(342, 301, 191, 3, '1997-12-14 03:01:12'),
(343, 112, 903, 1, '1998-04-13 01:02:52'),
(344, 82, 183, 3, '1997-11-05 20:44:08'),
(345, 222, 724, 3, '1997-10-30 01:26:16'),
(346, 218, 430, 3, '1997-10-22 00:45:16'),
(347, 308, 1197, 4, '1998-02-17 16:18:41'),
(348, 303, 134, 5, '1997-11-13 22:39:19'),
(349, 133, 751, 3, '1998-03-22 14:42:27'),
(350, 215, 212, 2, '1998-04-01 10:01:20'),
(351, 69, 256, 5, '1997-12-14 17:02:36'),
(352, 254, 662, 4, '1998-02-13 03:22:30'),
(353, 276, 2, 4, '1997-09-20 18:53:56'),
(354, 104, 984, 1, '1998-02-25 19:36:15'),
(355, 63, 1067, 3, '1997-10-01 20:11:54'),
(356, 267, 410, 4, '1997-11-08 04:33:05'),
(357, 13, 56, 5, '1997-12-07 15:16:51'),
(358, 240, 879, 3, '1998-01-25 22:49:05'),
(359, 286, 237, 2, '1997-10-02 12:40:00'),
(360, 294, 271, 5, '1998-03-07 00:30:26'),
(361, 90, 1086, 4, '1998-03-31 19:47:04'),
(362, 18, 26, 4, '1997-11-21 14:28:51'),
(363, 92, 229, 3, '1997-09-30 18:50:01'),
(364, 308, 649, 4, '1998-02-17 16:14:52'),
(365, 144, 89, 3, '1998-02-21 22:01:31'),
(366, 191, 302, 4, '1998-04-02 20:37:33'),
(367, 59, 951, 3, '1998-02-23 02:00:09'),
(368, 200, 96, 5, '1998-01-06 21:30:09'),
(369, 16, 197, 5, '1997-10-24 18:49:06'),
(370, 61, 678, 3, '1998-04-11 10:45:09'),
(371, 271, 199, 4, '1998-01-26 19:00:48'),
(372, 271, 709, 3, '1998-01-26 19:15:25'),
(373, 142, 169, 5, '1998-02-28 02:32:36'),
(374, 275, 597, 3, '1997-10-07 02:14:38'),
(375, 222, 151, 3, '1997-10-30 01:28:29'),
(376, 87, 40, 3, '1997-11-18 16:15:17'),
(377, 207, 258, 4, '1997-10-26 13:19:32'),
(378, 272, 1393, 2, '1997-11-13 18:57:43'),
(379, 177, 333, 4, '1997-11-21 14:39:57'),
(380, 207, 1115, 2, '1997-11-16 05:21:46'),
(381, 299, 577, 3, '1998-03-10 01:23:26'),
(382, 271, 378, 4, '1998-01-26 19:17:27'),
(383, 305, 425, 4, '1998-02-01 07:14:46'),
(384, 49, 959, 2, '1998-02-21 11:48:32'),
(385, 94, 1224, 3, '1998-04-04 17:46:42'),
(386, 130, 1017, 3, '1997-09-22 15:44:55'),
(387, 10, 175, 3, '1997-10-26 15:57:57'),
(388, 203, 321, 3, '1997-11-25 02:50:18'),
(389, 191, 286, 4, '1998-04-02 20:47:22'),
(390, 43, 323, 3, '1997-10-04 11:25:10'),
(391, 21, 558, 5, '1997-09-22 15:08:15'),
(392, 197, 96, 5, '1998-04-01 02:50:39'),
(393, 13, 344, 2, '1998-02-21 13:07:15'),
(394, 194, 66, 3, '1997-11-14 15:07:44'),
(395, 234, 206, 4, '1998-04-11 19:42:23'),
(396, 308, 402, 4, '1998-02-17 16:38:20'),
(397, 308, 640, 4, '1998-02-17 15:37:16'),
(398, 269, 522, 5, '1998-04-01 13:22:53'),
(399, 94, 265, 4, '1998-04-04 17:31:29'),
(400, 268, 62, 3, '1997-09-26 18:53:44'),
(401, 272, 12, 5, '1997-11-13 19:07:34'),
(402, 121, 291, 3, '1998-03-31 21:27:57'),
(403, 296, 20, 5, '1998-01-07 16:15:21'),
(404, 134, 286, 3, '1998-04-04 20:25:34'),
(405, 180, 462, 5, '1997-10-22 16:16:58'),
(406, 234, 612, 3, '1998-04-08 20:45:40'),
(407, 104, 117, 2, '1998-02-26 02:06:12'),
(408, 38, 758, 1, '1998-04-12 23:30:26'),
(409, 269, 845, 1, '1998-04-01 15:44:15'),
(410, 7, 163, 4, '1998-03-31 11:10:44'),
(411, 234, 1451, 3, '1998-04-08 20:32:23'),
(412, 275, 405, 2, '1997-10-07 02:14:05'),
(413, 52, 250, 3, '1997-12-23 22:17:41'),
(414, 102, 823, 3, '1998-03-01 22:17:45'),
(415, 13, 186, 4, '1998-03-23 23:03:19'),
(416, 178, 731, 4, '1997-12-22 19:52:12'),
(417, 236, 71, 3, '1998-03-17 03:37:51'),
(418, 256, 781, 5, '1997-12-15 03:54:56'),
(419, 263, 176, 5, '1998-03-30 20:15:52'),
(420, 244, 186, 3, '1997-11-27 02:41:37'),
(421, 279, 1181, 4, '1997-09-26 19:46:41'),
(422, 43, 815, 4, '1998-01-04 21:23:09'),
(423, 83, 78, 2, '1997-11-23 16:18:09'),
(424, 151, 197, 5, '1997-11-14 15:31:50'),
(425, 254, 436, 2, '1998-02-03 00:50:16'),
(426, 109, 631, 3, '1997-11-26 19:22:51'),
(427, 297, 716, 3, '1997-09-25 23:03:42'),
(428, 249, 188, 4, '1997-11-15 22:44:27'),
(429, 144, 699, 4, '1998-02-21 22:08:26'),
(430, 301, 604, 4, '1997-12-14 03:06:34'),
(431, 64, 392, 3, '1998-03-12 18:19:02'),
(432, 92, 501, 2, '1997-09-30 18:07:45'),
(433, 222, 97, 4, '1997-10-30 01:22:19'),
(434, 268, 436, 3, '1997-09-26 18:52:25'),
(435, 293, 135, 5, '1998-03-03 03:12:30'),
(436, 213, 173, 5, '1997-11-08 00:17:22'),
(437, 160, 460, 2, '1997-10-14 18:33:05'),
(438, 13, 498, 4, '1997-12-14 20:51:41'),
(439, 59, 715, 5, '1998-02-23 01:52:01'),
(440, 5, 17, 4, '1997-09-30 13:16:38'),
(441, 125, 163, 5, '1997-11-13 19:02:36'),
(442, 174, 315, 5, '1998-02-02 13:19:09'),
(443, 114, 505, 3, '1997-12-04 16:30:03'),
(444, 213, 515, 4, '1997-11-07 00:41:58'),
(445, 23, 196, 2, '1997-09-20 17:22:06'),
(446, 128, 15, 4, '1997-11-19 17:47:07'),
(447, 239, 56, 4, '1998-03-06 07:17:58'),
(448, 181, 279, 1, '1997-11-08 02:22:35'),
(449, 291, 80, 4, '1997-09-24 04:32:34'),
(450, 250, 238, 4, '1997-10-28 23:52:43'),
(451, 201, 649, 3, '1998-01-06 17:17:55'),
(452, 60, 60, 5, '1997-12-28 14:48:54'),
(453, 181, 325, 2, '1997-11-08 02:03:34'),
(454, 119, 407, 3, '1998-02-09 13:37:45'),
(455, 287, 1, 5, '1997-09-27 01:21:28'),
(456, 216, 228, 3, '1997-11-22 22:40:42'),
(457, 216, 531, 4, '1997-11-22 19:23:30'),
(458, 203, 471, 4, '1997-11-25 03:07:43'),
(459, 92, 587, 3, '1997-09-30 20:00:08'),
(460, 13, 892, 3, '1997-12-22 05:03:44'),
(461, 213, 176, 4, '1997-11-08 00:32:18'),
(462, 286, 288, 5, '1997-10-02 12:37:52'),
(463, 117, 1047, 2, '1997-12-01 18:54:57'),
(464, 99, 111, 1, '1998-01-24 19:54:46'),
(465, 11, 558, 3, '1998-04-06 20:10:14'),
(466, 65, 47, 2, '1997-11-11 00:51:12'),
(467, 295, 194, 4, '1997-11-14 12:23:32'),
(468, 269, 217, 2, '1998-04-01 14:26:50'),
(469, 85, 259, 2, '1997-12-09 20:03:46'),
(470, 250, 596, 5, '1997-10-28 23:52:01'),
(471, 137, 144, 5, '1997-12-06 16:41:29'),
(472, 201, 960, 2, '1998-01-06 16:41:17'),
(473, 257, 137, 4, '1997-12-13 19:52:12'),
(474, 111, 328, 4, '1998-04-04 05:52:19'),
(475, 91, 480, 4, '1998-04-01 10:54:35'),
(476, 215, 211, 4, '1998-04-01 10:10:02'),
(477, 181, 938, 1, '1997-11-08 01:59:46'),
(478, 189, 1060, 5, '1998-04-22 13:58:21'),
(479, 1, 20, 4, '1998-02-14 02:51:23'),
(480, 303, 404, 4, '1997-11-13 22:46:15'),
(481, 299, 305, 3, '1997-11-17 01:28:34'),
(482, 187, 210, 4, '1997-11-13 21:54:02'),
(483, 222, 278, 2, '1997-10-22 21:45:13'),
(484, 214, 568, 4, '1998-04-15 16:23:17'),
(485, 293, 770, 3, '1998-03-03 03:30:55'),
(486, 285, 191, 4, '1998-03-22 16:44:19'),
(487, 303, 252, 3, '1997-11-14 19:59:51'),
(488, 96, 156, 4, '1998-01-10 01:27:40'),
(489, 72, 1110, 3, '1997-11-20 12:48:54'),
(490, 115, 1067, 4, '1997-12-03 15:43:29'),
(491, 7, 430, 3, '1998-03-31 10:49:38'),
(492, 116, 350, 3, '1998-02-08 20:45:26'),
(493, 73, 480, 4, '1998-02-27 22:29:13'),
(494, 269, 246, 5, '1998-04-01 15:57:47'),
(495, 263, 419, 5, '1998-03-30 20:11:54'),
(496, 70, 431, 3, '1998-01-07 03:17:37'),
(497, 221, 475, 4, '1997-09-26 00:23:24'),
(498, 72, 182, 5, '1997-11-20 12:35:15'),
(499, 25, 357, 4, '1998-01-26 20:12:37'),
(500, 290, 50, 5, '1997-11-25 13:59:42'),
(501, 189, 526, 4, '1998-04-22 14:30:05'),
(502, 299, 303, 3, '1997-10-23 12:56:24'),
(503, 264, 294, 3, '1998-01-29 22:51:56'),
(504, 200, 365, 5, '1998-01-06 21:39:22'),
(505, 187, 135, 4, '1997-11-13 22:00:53'),
(506, 184, 187, 4, '1998-03-14 17:57:04'),
(507, 63, 289, 2, '1997-10-01 20:03:05'),
(508, 13, 229, 4, '1997-12-17 20:27:30'),
(509, 298, 486, 3, '1998-01-07 12:24:23'),
(510, 235, 185, 4, '1998-03-11 19:30:35'),
(511, 62, 712, 4, '1997-11-12 21:09:38'),
(512, 246, 94, 2, '1998-01-16 02:05:05'),
(513, 54, 742, 5, '1997-11-30 22:06:46'),
(514, 63, 762, 3, '1997-10-01 20:14:48'),
(515, 11, 732, 3, '1998-04-06 20:16:36'),
(516, 92, 168, 4, '1997-09-30 18:08:43'),
(517, 8, 550, 3, '1997-11-12 17:19:16'),
(518, 307, 174, 4, '1997-11-11 19:24:40'),
(519, 303, 200, 4, '1997-11-13 22:47:39'),
(520, 256, 849, 2, '1997-12-15 03:43:23'),
(521, 72, 54, 3, '1997-11-20 12:40:54'),
(522, 164, 406, 2, '1998-03-08 21:13:09'),
(523, 117, 150, 4, '1997-11-21 13:11:41'),
(524, 224, 77, 4, '1998-02-21 21:31:12'),
(525, 193, 869, 3, '1998-03-05 16:56:51'),
(526, 94, 184, 2, '1998-04-04 17:14:22'),
(527, 281, 338, 2, '1997-12-03 23:54:17'),
(528, 130, 109, 3, '1997-09-22 15:43:14'),
(529, 128, 371, 1, '1997-11-19 17:15:54'),
(530, 94, 720, 1, '1998-04-04 17:59:53'),
(531, 182, 845, 3, '1998-01-24 01:37:47'),
(532, 129, 873, 1, '1997-12-27 15:57:32'),
(533, 254, 229, 4, '1998-02-03 00:56:20'),
(534, 64, 381, 4, '1997-11-12 18:11:31'),
(535, 151, 176, 2, '1997-11-14 14:18:13'),
(536, 45, 25, 4, '1997-12-01 20:06:55'),
(537, 193, 879, 3, '1998-03-05 15:40:57'),
(538, 276, 922, 4, '1998-03-06 06:00:49'),
(539, 276, 57, 3, '1997-09-20 17:32:06'),
(540, 234, 187, 4, '1998-04-08 20:45:40'),
(541, 181, 306, 1, '1997-11-08 02:06:46'),
(542, 21, 370, 1, '1997-09-22 15:01:33'),
(543, 293, 249, 3, '1998-03-03 03:07:09'),
(544, 264, 721, 5, '1998-01-29 23:27:36'),
(545, 10, 611, 5, '1997-10-26 15:25:22'),
(546, 197, 346, 3, '1998-04-01 02:37:50'),
(547, 276, 142, 3, '1997-09-20 19:02:25'),
(548, 308, 427, 4, '1998-02-17 15:29:44'),
(549, 221, 943, 4, '1997-09-26 01:05:59'),
(550, 131, 126, 4, '1998-01-01 17:05:14'),
(551, 268, 824, 2, '1997-10-10 19:22:37'),
(552, 109, 8, 3, '1997-11-26 17:30:42'),
(553, 198, 58, 3, '1998-01-07 19:22:53'),
(554, 230, 680, 4, '1997-11-25 16:58:06'),
(555, 181, 741, 1, '1997-11-08 02:21:58'),
(556, 192, 1061, 4, '1997-12-05 22:41:31'),
(557, 234, 448, 3, '1998-04-11 19:58:21'),
(558, 90, 900, 4, '1998-03-31 19:11:49'),
(559, 193, 941, 4, '1998-03-05 16:08:10'),
(560, 128, 603, 5, '1997-11-19 17:13:59'),
(561, 126, 905, 2, '1998-02-19 00:28:03'),
(562, 244, 265, 4, '1997-11-27 02:57:14'),
(563, 90, 289, 3, '1998-03-31 19:11:50'),
(564, 157, 25, 3, '1998-02-07 20:33:07'),
(565, 305, 71, 3, '1998-02-01 07:01:24'),
(566, 119, 382, 5, '1997-09-20 15:55:42'),
(567, 21, 222, 2, '1997-09-22 15:03:02'),
(568, 231, 181, 4, '1998-02-27 16:47:53'),
(569, 280, 508, 3, '1998-04-04 11:34:13'),
(570, 288, 132, 3, '1998-02-01 21:02:09'),
(571, 279, 1497, 2, '1998-03-24 20:02:56'),
(572, 301, 33, 4, '1997-12-14 03:43:48'),
(573, 72, 699, 3, '1997-11-20 12:39:43'),
(574, 90, 259, 2, '1998-03-31 19:13:12'),
(575, 308, 55, 3, '1998-02-17 16:06:00'),
(576, 59, 742, 3, '1998-02-23 01:04:13'),
(577, 94, 744, 4, '1998-04-04 17:24:22'),
(578, 130, 642, 4, '1997-09-25 16:48:53'),
(579, 26, 1015, 3, '1998-03-31 10:48:56'),
(580, 56, 121, 5, '1998-04-15 19:31:20'),
(581, 82, 508, 2, '1998-01-13 15:57:29'),
(582, 62, 12, 4, '1997-11-12 20:26:53'),
(583, 276, 40, 3, '1997-09-20 18:44:31'),
(584, 181, 1015, 1, '1997-11-08 02:25:21'),
(585, 152, 301, 3, '1997-11-21 19:23:27'),
(586, 178, 845, 4, '1997-12-22 18:58:11'),
(587, 217, 597, 4, '1998-03-05 00:54:47'),
(588, 79, 303, 4, '1998-03-30 12:20:03'),
(589, 138, 484, 4, '1997-11-08 19:22:07'),
(590, 308, 81, 5, '1998-02-17 15:41:33'),
(591, 75, 284, 2, '1998-01-05 23:33:13'),
(592, 269, 198, 4, '1998-04-01 13:11:02'),
(593, 307, 94, 3, '1997-10-17 19:11:35'),
(594, 222, 781, 3, '1997-12-02 08:47:57'),
(595, 121, 740, 3, '1998-03-31 21:29:04'),
(596, 269, 22, 1, '1998-04-01 13:27:52'),
(597, 13, 864, 4, '1997-12-14 21:25:24'),
(598, 230, 742, 5, '1997-11-25 17:10:43'),
(599, 269, 507, 4, '1998-04-01 13:40:00'),
(600, 239, 1099, 5, '1998-03-06 07:14:13'),
(601, 245, 1028, 5, '1998-02-26 15:17:27'),
(602, 56, 546, 3, '1998-04-15 19:31:00'),
(603, 295, 961, 5, '1997-11-14 12:59:16'),
(604, 271, 1028, 2, '1998-01-26 18:55:02'),
(605, 222, 812, 2, '1997-12-02 08:38:37'),
(606, 69, 240, 3, '1997-12-14 17:02:36'),
(607, 10, 7, 4, '1997-10-26 16:56:50'),
(608, 22, 376, 3, '1997-11-07 05:18:32'),
(609, 294, 931, 3, '1998-03-07 00:54:17'),
(610, 82, 717, 1, '1998-01-13 16:01:32'),
(611, 279, 399, 4, '1997-09-26 19:44:19'),
(612, 269, 234, 1, '1998-04-01 13:50:06'),
(613, 6, 98, 5, '1997-12-31 18:38:00'),
(614, 243, 1039, 4, '1997-11-19 23:09:44'),
(615, 298, 181, 4, '1998-01-06 20:27:09'),
(616, 282, 325, 1, '1997-12-09 19:30:44'),
(617, 78, 323, 1, '1997-11-15 20:39:27'),
(618, 118, 200, 5, '1997-09-27 15:24:07'),
(619, 283, 1114, 5, '1997-11-11 23:19:05'),
(620, 171, 292, 4, '1998-03-27 18:40:35'),
(621, 70, 217, 4, '1998-01-07 03:31:59'),
(622, 10, 100, 5, '1997-10-26 16:49:07'),
(623, 245, 181, 4, '1998-02-26 15:21:04'),
(624, 107, 333, 3, '1998-03-30 10:24:27'),
(625, 246, 561, 1, '1998-01-16 02:04:05'),
(626, 13, 901, 1, '1998-01-01 14:04:32'),
(627, 276, 70, 4, '1997-09-20 18:27:06'),
(628, 244, 17, 2, '1997-11-27 03:06:45'),
(629, 189, 56, 5, '1998-04-22 14:14:23'),
(630, 226, 242, 5, '1998-01-04 02:37:51'),
(631, 62, 1016, 4, '1997-11-12 20:16:48'),
(632, 276, 417, 4, '1997-09-20 19:01:47'),
(633, 214, 478, 4, '1998-04-02 16:07:32'),
(634, 306, 235, 4, '1997-10-10 15:25:54'),
(635, 222, 26, 3, '1997-10-30 01:44:03'),
(636, 280, 631, 5, '1998-04-04 11:39:11'),
(637, 60, 430, 5, '1997-12-28 14:22:02'),
(638, 56, 71, 4, '1998-04-15 20:34:35'),
(639, 42, 274, 5, '1997-12-02 21:36:57'),
(640, 1, 202, 5, '1997-09-24 00:40:42'),
(641, 13, 809, 4, '1997-12-17 20:26:22'),
(642, 173, 289, 4, '1997-10-22 19:49:48'),
(643, 15, 749, 1, '1997-11-13 19:08:31'),
(644, 185, 23, 4, '1997-12-30 21:24:09'),
(645, 280, 540, 3, '1998-04-04 12:05:04'),
(646, 244, 381, 4, '1997-11-27 02:14:37'),
(647, 150, 293, 4, '1997-11-05 14:22:26'),
(648, 7, 497, 4, '1998-03-31 10:48:54'),
(649, 178, 317, 4, '1997-12-22 19:41:55'),
(650, 178, 742, 3, '1997-12-22 18:50:33'),
(651, 95, 1217, 3, '1997-11-26 17:30:58'),
(652, 234, 1462, 3, '1998-04-11 19:31:05'),
(653, 97, 222, 5, '1998-01-08 03:54:47'),
(654, 109, 127, 2, '1997-11-26 14:57:51'),
(655, 117, 268, 5, '1997-11-21 12:58:26'),
(656, 269, 705, 2, '1998-04-01 13:40:50'),
(657, 130, 1246, 3, '1997-10-07 17:28:17'),
(658, 264, 655, 4, '1998-01-29 23:25:30'),
(659, 207, 13, 3, '1997-09-29 01:20:39'),
(660, 42, 588, 5, '1997-12-02 22:15:47'),
(661, 246, 409, 2, '1998-01-16 02:02:52'),
(662, 87, 367, 4, '1997-11-18 16:11:42'),
(663, 101, 304, 3, '1997-10-17 22:47:57'),
(664, 256, 127, 4, '1997-12-15 03:40:06'),
(665, 92, 794, 3, '1997-09-30 18:26:38'),
(666, 181, 762, 2, '1997-11-08 02:30:18'),
(667, 213, 235, 1, '1997-11-08 00:11:55'),
(668, 92, 739, 2, '1997-10-06 20:06:22'),
(669, 292, 661, 5, '1997-12-02 21:32:41'),
(670, 246, 665, 4, '1998-01-16 01:53:51'),
(671, 274, 845, 5, '1997-11-07 21:32:59'),
(672, 188, 692, 5, '1997-09-24 00:43:03'),
(673, 18, 86, 4, '1997-11-21 14:28:51'),
(674, 5, 439, 1, '1997-11-06 17:27:03'),
(675, 236, 632, 3, '1998-03-17 03:30:54'),
(676, 193, 407, 4, '1998-03-05 16:58:41'),
(677, 144, 709, 4, '1998-02-21 22:05:40'),
(678, 90, 1198, 5, '1998-03-31 19:37:46'),
(679, 48, 609, 4, '1997-11-13 13:26:59'),
(680, 5, 225, 2, '1997-09-30 13:08:43'),
(681, 22, 128, 5, '1997-11-07 05:33:03'),
(682, 311, 432, 4, '1998-01-09 15:04:45'),
(683, 8, 22, 5, '1997-11-12 17:16:23'),
(684, 276, 188, 4, '1997-09-20 18:55:47'),
(685, 222, 173, 5, '1997-10-30 01:44:03'),
(686, 72, 866, 4, '1997-11-20 12:24:47'),
(687, 299, 134, 4, '1997-10-30 04:18:31'),
(688, 1, 171, 5, '1998-03-12 22:15:11'),
(689, 308, 295, 3, '1998-02-17 16:51:01'),
(690, 165, 216, 4, '1997-11-14 14:42:58'),
(691, 222, 49, 3, '1997-10-30 01:51:52'),
(692, 181, 121, 4, '1997-11-08 02:17:03'),
(693, 200, 11, 5, '1998-01-06 21:32:22'),
(694, 234, 626, 4, '1998-04-11 20:12:38'),
(695, 244, 707, 4, '1997-11-27 02:50:43'),
(696, 90, 25, 5, '1998-03-31 19:53:09'),
(697, 208, 216, 5, '1997-12-26 01:52:04'),
(698, 263, 96, 4, '1998-03-30 19:52:16'),
(699, 134, 323, 4, '1998-04-04 20:25:35'),
(700, 279, 586, 4, '1998-04-17 22:57:43'),
(701, 2, 292, 4, '1998-02-27 01:39:34'),
(702, 288, 593, 2, '1998-02-07 20:55:27'),
(703, 49, 302, 4, '1998-02-21 10:50:32'),
(704, 286, 153, 5, '1997-10-22 12:43:26'),
(705, 205, 304, 3, '1998-02-23 23:38:33'),
(706, 22, 80, 4, '1997-11-07 05:20:27'),
(707, 234, 318, 4, '1998-04-08 20:41:30'),
(708, 223, 328, 3, '1998-04-02 17:29:19'),
(709, 15, 25, 3, '1997-11-13 19:23:24'),
(710, 268, 147, 4, '1997-10-10 18:06:42'),
(711, 94, 1220, 3, '1998-04-04 17:44:38'),
(712, 274, 405, 4, '1997-11-07 21:37:20'),
(713, 7, 492, 5, '1998-03-31 10:46:50'),
(714, 268, 217, 2, '1997-10-01 19:21:41'),
(715, 16, 55, 5, '1997-10-24 16:32:36'),
(716, 164, 620, 3, '1998-03-08 21:11:38'),
(717, 290, 161, 4, '1997-11-25 14:11:33'),
(718, 92, 515, 4, '1997-09-30 14:33:20'),
(719, 239, 1070, 5, '1998-03-06 07:10:32'),
(720, 56, 449, 5, '1998-04-15 19:28:28'),
(721, 248, 234, 4, '1998-01-11 14:09:28'),
(722, 234, 10, 3, '1998-03-30 00:17:31'),
(723, 280, 1049, 2, '1998-04-04 12:08:06'),
(724, 308, 187, 5, '1998-02-17 16:06:00'),
(725, 276, 64, 5, '1997-09-20 17:30:41'),
(726, 192, 948, 3, '1997-12-05 22:31:42'),
(727, 122, 509, 4, '1997-11-11 15:48:31'),
(728, 85, 588, 3, '1997-11-29 19:18:26'),
(729, 262, 931, 2, '1997-11-17 16:21:14'),
(730, 201, 272, 3, '1998-01-28 16:55:00'),
(731, 181, 870, 2, '1997-11-08 02:17:03'),
(732, 295, 739, 4, '1997-11-14 12:38:39'),
(733, 263, 568, 4, '1998-03-30 20:09:47'),
(734, 295, 39, 4, '1997-11-14 12:37:59'),
(735, 201, 1100, 4, '1998-01-06 16:53:20'),
(736, 93, 820, 3, '1998-02-28 20:46:06'),
(737, 159, 1028, 5, '1997-11-26 13:18:59'),
(738, 158, 665, 2, '1997-11-21 15:48:52'),
(739, 293, 423, 3, '1998-03-03 03:21:10'),
(740, 82, 597, 3, '1997-11-05 20:28:02'),
(741, 276, 181, 5, '1997-09-20 17:14:48'),
(742, 13, 823, 5, '1997-12-17 20:30:33'),
(743, 217, 2, 3, '1998-03-05 00:49:42'),
(744, 83, 660, 4, '1997-11-23 16:04:16'),
(745, 189, 20, 5, '1998-04-22 14:01:06'),
(746, 222, 796, 4, '1997-10-30 01:54:44'),
(747, 146, 1022, 5, '1998-04-01 16:16:33'),
(748, 267, 121, 3, '1997-11-08 04:31:21'),
(749, 126, 294, 3, '1998-02-19 00:24:47'),
(750, 181, 1060, 1, '1997-11-08 02:17:55'),
(751, 125, 80, 4, '1998-04-17 15:47:45'),
(752, 43, 120, 4, '1998-01-05 17:43:50'),
(753, 13, 780, 1, '1997-12-14 21:27:37'),
(754, 253, 259, 2, '1998-04-03 15:41:23'),
(755, 42, 44, 3, '1997-12-02 22:22:28'),
(756, 77, 518, 4, '1998-01-14 02:46:42'),
(757, 291, 686, 5, '1997-09-21 06:46:05'),
(758, 268, 21, 3, '1997-10-01 18:53:42'),
(759, 262, 28, 3, '1997-11-17 16:43:40'),
(760, 234, 81, 3, '1998-04-11 19:44:40'),
(761, 29, 245, 3, '1997-12-22 18:00:03'),
(762, 236, 57, 5, '1998-03-17 03:36:15'),
(763, 158, 729, 3, '1997-11-21 15:25:16'),
(764, 156, 661, 4, '1998-02-22 20:19:07'),
(765, 232, 52, 5, '1998-02-27 01:28:50'),
(766, 168, 866, 5, '1998-01-08 17:32:07'),
(767, 37, 288, 4, '1997-11-30 16:40:58'),
(768, 141, 245, 3, '1998-01-12 03:53:46'),
(769, 235, 230, 4, '1998-03-11 19:26:02'),
(770, 102, 70, 3, '1998-03-01 22:52:17'),
(771, 77, 172, 3, '1998-01-14 02:36:02'),
(772, 90, 506, 5, '1998-03-31 19:28:39'),
(773, 186, 566, 5, '1997-11-08 19:14:23'),
(774, 44, 660, 5, '1997-10-31 23:31:55'),
(775, 118, 774, 5, '1997-09-27 15:33:18'),
(776, 7, 661, 5, '1998-03-31 10:40:24'),
(777, 49, 1003, 2, '1998-02-21 11:44:11'),
(778, 62, 68, 1, '1997-11-12 20:49:29'),
(779, 42, 1028, 4, '1997-12-02 21:41:12'),
(780, 178, 433, 4, '1997-12-22 19:57:14'),
(781, 85, 51, 2, '1997-11-13 18:59:42'),
(782, 77, 474, 5, '1998-01-13 21:00:07'),
(783, 58, 1099, 2, '1998-04-10 18:17:59'),
(784, 56, 1047, 4, '1998-04-18 11:54:50'),
(785, 197, 688, 1, '1998-04-01 02:46:04'),
(786, 286, 99, 4, '1997-10-29 14:14:41'),
(787, 90, 258, 3, '1998-03-31 19:08:41'),
(788, 181, 1288, 1, '1997-11-08 02:12:29'),
(789, 295, 190, 4, '1997-11-14 12:17:42'),
(790, 224, 69, 4, '1998-02-21 15:34:55'),
(791, 272, 317, 4, '1997-11-13 19:02:57'),
(792, 221, 1010, 3, '1997-09-26 01:04:22'),
(793, 66, 877, 1, '1997-12-31 18:44:49'),
(794, 207, 318, 5, '1997-10-17 19:47:51'),
(795, 234, 487, 3, '1998-04-08 20:47:17'),
(796, 7, 648, 5, '1998-03-31 10:40:53'),
(797, 87, 82, 5, '1997-11-18 15:56:14'),
(798, 195, 1052, 1, '1997-10-26 01:05:02'),
(799, 44, 449, 5, '1997-12-31 22:08:54'),
(800, 306, 287, 4, '1997-10-10 15:27:22'),
(801, 194, 172, 3, '1997-11-14 13:31:14'),
(802, 94, 62, 3, '1998-04-04 17:48:53'),
(803, 167, 659, 4, '1998-04-16 11:51:17'),
(804, 108, 100, 4, '1997-11-18 17:02:00'),
(805, 230, 304, 5, '1997-11-25 16:58:06'),
(806, 181, 927, 1, '1997-11-08 02:17:55'),
(807, 54, 302, 4, '1997-11-30 20:21:59'),
(808, 90, 22, 4, '1998-03-31 19:45:57'),
(809, 181, 696, 2, '1997-11-08 02:23:17'),
(810, 286, 357, 4, '1997-10-22 12:45:37'),
(811, 14, 269, 4, '1998-04-10 18:06:43'),
(812, 311, 179, 2, '1998-01-09 15:02:37'),
(813, 92, 121, 5, '1997-09-30 14:31:19'),
(814, 21, 440, 1, '1997-09-22 15:09:58'),
(815, 244, 550, 1, '1997-11-27 01:44:24'),
(816, 181, 405, 4, '1997-11-08 02:21:59'),
(817, 65, 806, 4, '1997-11-11 00:48:49'),
(818, 37, 540, 2, '1997-11-30 16:54:30'),
(819, 44, 443, 5, '1997-10-31 23:38:09'),
(820, 244, 183, 4, '1997-11-27 02:47:23'),
(821, 1, 265, 4, '1997-11-03 05:34:01'),
(822, 270, 25, 5, '1997-10-15 20:27:36'),
(823, 299, 387, 2, '1998-03-10 01:05:56'),
(824, 94, 572, 3, '1998-04-04 18:04:43'),
(825, 286, 746, 4, '1997-10-22 13:10:58'),
(826, 239, 272, 5, '1998-03-06 07:47:27'),
(827, 216, 55, 5, '1997-11-22 22:32:25'),
(828, 254, 121, 3, '1998-02-03 00:19:29'),
(829, 62, 665, 2, '1997-11-12 21:14:43'),
(830, 178, 385, 4, '1997-12-22 19:43:02'),
(831, 194, 23, 4, '1997-11-14 13:53:39'),
(832, 268, 955, 3, '1997-10-01 19:32:40'),
(833, 188, 143, 5, '1997-09-24 00:44:34'),
(834, 276, 294, 4, '1997-09-20 17:12:46'),
(835, 158, 1098, 4, '1997-11-21 15:57:49'),
(836, 207, 845, 3, '1997-12-09 13:34:23'),
(837, 161, 48, 1, '1998-03-29 08:25:45'),
(838, 305, 654, 4, '1998-02-01 07:05:37'),
(839, 47, 324, 3, '1997-11-13 14:37:58'),
(840, 64, 736, 4, '1998-03-12 18:46:52'),
(841, 191, 751, 3, '1998-04-02 20:45:53'),
(842, 7, 378, 5, '1998-03-31 11:03:31'),
(843, 59, 92, 5, '1998-02-23 01:36:37'),
(844, 69, 268, 5, '1997-12-13 13:31:49'),
(845, 10, 461, 3, '1997-10-26 16:02:24'),
(846, 21, 129, 4, '1997-09-22 15:03:02'),
(847, 58, 9, 4, '1998-01-08 22:05:28'),
(848, 194, 152, 3, '1997-11-14 21:26:36'),
(849, 7, 200, 5, '1998-03-31 11:12:23'),
(850, 113, 126, 5, '1997-09-24 01:53:47'),
(851, 173, 328, 5, '1997-10-22 19:50:28'),
(852, 95, 233, 4, '1997-11-10 19:12:34'),
(853, 16, 194, 5, '1997-10-24 17:18:53'),
(854, 59, 323, 4, '1998-02-23 02:06:49'),
(855, 311, 654, 3, '1998-01-09 14:57:55'),
(856, 292, 589, 4, '1997-12-02 21:31:56'),
(857, 43, 203, 4, '1998-01-04 21:07:04'),
(858, 79, 50, 4, '1998-03-30 12:25:45'),
(859, 235, 70, 5, '1998-03-11 19:33:39'),
(860, 125, 190, 5, '1998-04-17 15:05:09'),
(861, 284, 322, 3, '1998-01-20 18:54:31'),
(862, 303, 161, 5, '1997-11-13 22:49:07'),
(863, 254, 378, 3, '1998-02-03 00:53:16'),
(864, 255, 1034, 1, '1997-12-27 08:03:50'),
(865, 104, 301, 2, '1998-02-25 19:31:15'),
(866, 90, 923, 5, '1998-03-31 19:38:32'),
(867, 6, 463, 4, '1997-12-31 18:55:13'),
(868, 279, 122, 1, '1997-09-26 15:10:33'),
(869, 286, 298, 4, '1997-10-02 12:43:24'),
(870, 222, 448, 3, '1997-10-30 01:52:45'),
(871, 297, 57, 5, '1997-09-25 23:03:03'),
(872, 42, 625, 3, '1997-12-02 22:27:53'),
(873, 130, 1217, 4, '1997-10-02 11:16:18'),
(874, 254, 357, 3, '1998-02-03 00:21:06'),
(875, 109, 475, 1, '1997-11-26 15:00:41'),
(876, 230, 1444, 2, '1997-11-25 17:22:06'),
(877, 244, 310, 3, '1997-11-27 01:38:25'),
(878, 6, 301, 2, '1997-12-31 18:33:26'),
(879, 36, 748, 4, '1997-12-15 01:41:25'),
(880, 256, 443, 3, '1997-12-15 03:45:27'),
(881, 102, 515, 1, '1998-03-01 22:15:16'),
(882, 104, 285, 4, '1998-02-26 01:53:21'),
(883, 21, 447, 5, '1997-09-22 15:08:15'),
(884, 111, 301, 4, '1998-04-04 05:53:48'),
(885, 18, 408, 5, '1997-11-21 14:27:08'),
(886, 25, 222, 4, '1998-01-26 20:13:37'),
(887, 110, 944, 3, '1998-02-08 23:58:21'),
(888, 270, 98, 5, '1997-10-15 20:51:08'),
(889, 68, 237, 5, '1997-10-16 01:55:33'),
(890, 83, 215, 4, '1997-11-23 15:59:00'),
(891, 6, 258, 2, '1997-12-27 22:17:58'),
(892, 89, 216, 5, '1997-11-13 20:24:19'),
(893, 128, 317, 4, '1997-11-19 17:33:49'),
(894, 305, 512, 4, '1998-02-01 06:58:45'),
(895, 184, 412, 2, '1998-03-14 18:58:11'),
(896, 286, 175, 5, '1997-10-22 13:01:10'),
(897, 279, 1428, 3, '1998-02-26 01:53:29'),
(898, 256, 86, 5, '1997-12-15 03:51:43'),
(899, 221, 48, 5, '1997-09-26 00:44:22'),
(900, 140, 332, 3, '1997-11-08 16:26:57'),
(901, 190, 977, 2, '1998-03-27 20:55:38'),
(902, 11, 227, 3, '1998-04-06 20:38:16'),
(903, 201, 203, 5, '1998-01-06 17:21:11'),
(904, 150, 181, 5, '1997-11-05 14:18:05'),
(905, 126, 245, 3, '1998-02-19 00:18:46'),
(906, 20, 208, 2, '1997-11-16 06:36:41'),
(907, 144, 742, 4, '1998-02-21 21:35:22'),
(908, 181, 930, 1, '1997-11-08 02:27:55'),
(909, 109, 566, 4, '1997-11-26 19:13:34'),
(910, 85, 1065, 3, '1997-11-13 19:03:41'),
(911, 213, 133, 3, '1997-11-08 00:26:13'),
(912, 222, 379, 1, '1997-10-30 02:04:50'),
(913, 223, 11, 3, '1998-04-02 17:57:29'),
(914, 215, 421, 4, '1998-04-01 10:01:44'),
(915, 218, 208, 3, '1997-10-22 00:46:06'),
(916, 174, 937, 5, '1998-02-02 13:23:09'),
(917, 275, 186, 3, '1997-11-23 17:46:23'),
(918, 68, 742, 1, '1997-10-16 01:56:38'),
(919, 268, 583, 4, '1997-10-10 18:03:50'),
(920, 160, 462, 4, '1997-10-14 17:45:46'),
(921, 195, 273, 4, '1997-10-28 04:15:42'),
(922, 224, 178, 4, '1998-02-21 15:34:28'),
(923, 5, 110, 1, '1997-09-30 13:21:33'),
(924, 99, 1016, 5, '1998-01-24 19:52:04'),
(925, 2, 251, 5, '1998-02-27 02:01:24'),
(926, 292, 9, 4, '1997-12-02 21:09:08'),
(927, 72, 568, 4, '1997-11-20 12:46:43'),
(928, 85, 228, 3, '1997-12-22 15:54:08'),
(929, 83, 281, 5, '1997-11-23 15:44:32'),
(930, 92, 831, 2, '1998-02-02 16:21:48'),
(931, 7, 543, 3, '1998-03-31 10:42:52'),
(932, 87, 401, 2, '1997-11-18 16:13:33'),
(933, 287, 926, 4, '1997-09-27 01:25:40'),
(934, 1, 155, 2, '1997-11-03 05:30:01'),
(935, 234, 632, 2, '1998-04-08 20:52:18'),
(936, 222, 53, 5, '1997-10-30 02:01:53'),
(937, 24, 64, 5, '1997-09-26 22:12:38'),
(938, 7, 554, 3, '1998-03-31 11:30:39'),
(939, 82, 56, 3, '1997-11-05 20:36:50'),
(940, 161, 318, 3, '1998-03-29 08:27:04'),
(941, 196, 393, 4, '1997-12-04 14:11:03'),
(942, 56, 91, 4, '1998-04-15 20:34:35'),
(943, 82, 477, 3, '1997-10-08 09:49:04'),
(944, 7, 472, 2, '1998-03-31 11:09:17'),
(945, 256, 761, 4, '1997-12-15 03:44:04'),
(946, 226, 56, 4, '1998-01-04 02:45:02'),
(947, 279, 741, 5, '1997-09-26 15:01:31'),
(948, 308, 1286, 3, '1998-02-17 15:55:51'),
(949, 16, 8, 5, '1997-10-24 17:52:16'),
(950, 180, 202, 3, '1997-10-17 20:46:28'),
(951, 203, 93, 4, '1997-11-25 03:15:40'),
(952, 145, 56, 5, '1997-09-26 08:04:56'),
(953, 288, 305, 4, '1998-02-01 20:35:27'),
(954, 84, 742, 3, '1997-12-30 00:57:23'),
(955, 44, 644, 3, '1997-10-31 23:30:18'),
(956, 17, 13, 3, '1998-01-20 03:04:14'),
(957, 313, 117, 4, '1998-03-27 13:15:19'),
(958, 148, 1, 4, '1997-10-16 14:30:11'),
(959, 197, 347, 4, '1998-04-01 02:37:50'),
(960, 21, 164, 5, '1997-09-22 15:08:15'),
(961, 279, 982, 3, '1997-09-26 15:25:14'),
(962, 239, 491, 5, '1998-03-06 07:43:35'),
(963, 185, 287, 5, '1997-12-30 21:58:08'),
(964, 297, 89, 4, '1997-09-25 22:58:45'),
(965, 303, 68, 4, '1997-11-13 22:29:21'),
(966, 186, 250, 1, '1997-11-08 19:13:27'),
(967, 73, 206, 3, '1998-02-27 22:29:14'),
(968, 104, 756, 2, '1998-02-26 02:02:19'),
(969, 94, 216, 3, '1998-01-27 01:11:05'),
(970, 239, 194, 5, '1998-03-06 07:07:13'),
(971, 197, 511, 5, '1998-04-01 02:50:39'),
(972, 280, 1, 4, '1998-04-04 11:33:46'),
(973, 1, 117, 3, '1997-09-22 19:02:19'),
(974, 224, 583, 1, '1998-02-21 21:28:49'),
(975, 303, 397, 1, '1997-11-14 19:43:51'),
(976, 60, 162, 4, '1997-12-28 14:48:54'),
(977, 198, 258, 4, '1998-01-07 18:21:41'),
(978, 239, 513, 5, '1998-03-06 07:08:07'),
(979, 6, 69, 3, '1997-12-31 18:47:57'),
(980, 233, 375, 4, '1997-10-09 03:20:19'),
(981, 85, 642, 4, '1997-12-24 18:33:35'),
(982, 110, 38, 3, '1998-02-08 23:42:54'),
(983, 184, 522, 3, '1998-03-14 17:47:42'),
(984, 99, 873, 1, '1998-01-24 19:47:16'),
(985, 13, 418, 2, '1997-12-17 20:46:03'),
(986, 201, 518, 4, '1998-01-06 16:43:21'),
(987, 13, 858, 1, '1997-12-17 20:17:48'),
(988, 214, 131, 3, '1998-04-02 16:14:25'),
(989, 296, 228, 4, '1998-01-07 16:21:04'),
(990, 222, 87, 3, '1997-10-30 01:36:29'),
(991, 279, 725, 4, '1997-09-26 19:49:04'),
(992, 217, 182, 2, '1998-03-05 00:55:09'),
(993, 85, 433, 3, '1997-11-18 02:52:00'),
(994, 239, 234, 3, '1998-03-06 07:06:02'),
(995, 13, 72, 4, '1997-12-14 21:22:07'),
(996, 194, 77, 3, '1997-11-14 15:10:21'),
(997, 208, 663, 5, '1997-12-26 01:54:36'),
(998, 109, 178, 3, '1997-11-26 17:35:50'),
(999, 230, 172, 4, '1997-11-25 17:02:03'),
(1000, 59, 485, 2, '1998-02-23 01:27:46');


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO usuarios (id, age, gender, occupation_id, zip_code) 
VALUES 
(1, 24, 'M', 20, '85711'),
(2, 53, 'F', 14, '94043'),
(3, 23, 'M', 21, '32067'),
(4, 24, 'M', 20, '43537'),
(5, 33, 'F', 14, '15213'),
(6, 42, 'M', 7, '98101'),
(7, 57, 'M', 1, '91344'),
(8, 36, 'M', 1, '05201'),
(9, 29, 'M', 19, '01002'),
(10, 53, 'M', 10, '90703'),
(11, 39, 'F', 14, '30329'),
(12, 28, 'F', 14, '06405'),
(13, 47, 'M', 4, '29206'),
(14, 45, 'M', 18, '55106'),
(15, 49, 'F', 4, '97301'),
(16, 21, 'M', 6, '10309'),
(17, 30, 'M', 15, '06355'),
(18, 35, 'F', 14, '37212'),
(19, 40, 'M', 11, '02138'),
(20, 42, 'F', 9, '95660'),
(21, 26, 'M', 21, '30068'),
(22, 25, 'M', 21, '40206'),
(23, 30, 'F', 2, '48197'),
(24, 21, 'F', 2, '94533'),
(25, 39, 'M', 5, '55107'),
(26, 49, 'M', 5, '21044'),
(27, 40, 'F', 11, '30030'),
(28, 32, 'M', 21, '55369'),
(29, 41, 'M', 15, '94043'),
(30, 7, 'M', 19, '55436'),
(31, 24, 'M', 2, '10003'),
(32, 28, 'F', 19, '78741'),
(33, 23, 'M', 19, '27510'),
(34, 38, 'F', 1, '42141'),
(35, 20, 'F', 9, '42459'),
(36, 19, 'F', 19, '93117'),
(37, 23, 'M', 19, '55105'),
(38, 28, 'F', 14, '54467'),
(39, 41, 'M', 6, '01040'),
(40, 38, 'M', 18, '27514'),
(41, 33, 'M', 5, '80525'),
(42, 30, 'M', 1, '17870'),
(43, 29, 'F', 11, '20854'),
(44, 26, 'M', 20, '46260'),
(45, 29, 'M', 15, '50233'),
(46, 27, 'F', 12, '46538'),
(47, 53, 'M', 12, '07102'),
(48, 45, 'M', 1, '12550'),
(49, 23, 'F', 19, '76111'),
(50, 21, 'M', 21, '52245'),
(51, 28, 'M', 4, '16509'),
(52, 18, 'F', 19, '55105'),
(53, 26, 'M', 15, '55414'),
(54, 22, 'M', 7, '66315'),
(55, 37, 'M', 15, '01331'),
(56, 25, 'M', 11, '46260'),
(57, 16, 'M', 13, '84010'),
(58, 27, 'M', 15, '52246'),
(59, 49, 'M', 4, '08403'),
(60, 50, 'M', 8, '06472'),
(61, 36, 'M', 5, '30040'),
(62, 27, 'F', 1, '97214'),
(63, 31, 'M', 12, '75240'),
(64, 32, 'M', 4, '43202'),
(65, 51, 'F', 4, '48118'),
(66, 23, 'M', 19, '80521'),
(67, 17, 'M', 19, '60402'),
(68, 19, 'M', 19, '22904'),
(69, 24, 'M', 5, '55337'),
(70, 27, 'M', 5, '60067'),
(71, 39, 'M', 18, '98034'),
(72, 48, 'F', 1, '73034'),
(73, 24, 'M', 19, '41850'),
(74, 39, 'M', 18, 'T8H1N'),
(75, 24, 'M', 6, '08816'),
(76, 20, 'M', 19, '02215'),
(77, 30, 'M', 20, '29379'),
(78, 26, 'M', 1, '61801'),
(79, 39, 'F', 1, '03755'),
(80, 34, 'F', 1, '52241'),
(81, 21, 'M', 19, '21218'),
(82, 50, 'M', 15, '22902'),
(83, 40, 'M', 14, '44133'),
(84, 32, 'M', 7, '55369'),
(85, 51, 'M', 4, '20003'),
(86, 26, 'M', 1, '46005'),
(87, 47, 'M', 1, '89503'),
(88, 49, 'F', 11, '11701'),
(89, 43, 'F', 1, '68106'),
(90, 60, 'M', 4, '78155'),
(91, 55, 'M', 12, '01913'),
(92, 32, 'M', 6, '80525'),
(93, 48, 'M', 7, '23112'),
(94, 26, 'M', 19, '71457'),
(95, 31, 'M', 1, '10707'),
(96, 25, 'F', 2, '75206'),
(97, 43, 'M', 2, '98006'),
(98, 49, 'F', 7, '90291'),
(99, 20, 'M', 19, '63129'),
(100, 36, 'M', 7, '90254');


--
-- PostgreSQL database dump complete
--

--filmesdb_data.sql
--Exibindo filmesdb_data.sql…