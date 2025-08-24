CREATE DATABASE EXERCICIOS;

CREATE TABLE LIVRARIA
(
    NOME_LIVRO       VARCHAR(100),
    NOME_AUTOR       VARCHAR(100),
    SEXO_AUTOR       CHAR(1),
    N_PAGINAS        INT(5),
    NOME_EDITORA     VARCHAR(100),
    VALOR_LIVRO      FLOAT(10,2),
    UF_EDITORA       CHAR(2),
    ANO_PUBLICACAO   INT(4)
);

INSERT INTO LIVRARIA 
VALUES
(
    'Cavaleiro Real',
    'Ana Claudia',
    'F',
    465,
    'Atlas',
    49.9,
    'RJ',
    2009
);

INSERT INTO LIVRARIA 
VALUES
(
    'SQL para leigos',
    'João Nunes',
    'M',
    450,
    'Addison',
    98,
    'SP',
    2018
);

INSERT INTO LIVRARIA 
VALUES
(
    'Receitas Caseiras',
    'Celia Tavares',
    'F',
    210,
    'Atlas',
    45,
    'RJ',
    2008
);

INSERT INTO LIVRARIA 
VALUES
(
    'Pessoas Efetivas',
    'Eduardo Santos',
    'M',
    390,
    'Beta',
    78.99,
    'RJ',
    2018
);

INSERT INTO LIVRARIA 
VALUES
(
    'Habitos Saudáveis',
    'Eduardo Santos',
    'M',
    630,
    'Beta',
    150.98,
    'RJ',
    2019
);

INSERT INTO LIVRARIA 
VALUES
(
    'A Casa Marrom',
    'Hermes Macedo',
    'M',
    250,
    'Bubba',
    60,
    'MG',
    2016
);

INSERT INTO LIVRARIA 
VALUES
(
    'Estacio Querido',
    'Geraldo Franscisco',
    'M',
    310,
    'Insigna',
    100,
    'ES',
    2015
);

INSERT INTO LIVRARIA 
VALUES
(
    'Pra sempre amigas',
    'Leda Silva',
    'F',
    510,
    'Insigna',
    28.98,
    'ES',
    2011
);

INSERT INTO LIVRARIA 
VALUES
(
    'Copas Inesqueciveis',
    'Marco Alcantara',
    'M',
    200,
    'Larson',
    130.98,
    'RS',
    2018
);

INSERT INTO LIVRARIA 
VALUES
(
    'O poder da mente',
    'Clara Mafra',
    'F',
    120,
    'Continental',
    56.58,
    'SP',
    2017
);

/* Exercícios */

/* 1) Buscar o todos os dados */ 
SELECT * FROM LIVRARIA;
/* 2) Buscar o nome do livro e editora */ 
SELECT NOME_LIVRO, NOME_EDITORA FROM LIVRARIA;
/* 3) Buscar o nome do livro e a UF dos livros publicados por autores masculinos */ 
SELECT NOME_LIVRO, UF_EDITORA FROM LIVRARIA WHERE SEXO_AUTOR LIKE 'M'; /* ou WHERE = 'M'; */
/* 4) Buscar o nome do livros, n° de páginas publicados por autores femininas */ 
SELECT NOME_LIVRO, N_PAGINAS FROM LIVRARIA WHERE SEXO_AUTOR LIKE 'F'; /* ou WHERE = 'F'; */
/* 5) Buscar o valor dos livros da editoras de São Paulo */ 
SELECT NOME_LIVRO, VALOR_LIVRO FROM LIVRARIA WHERE UF_EDITORA LIKE 'SP';
/* 6) Buscar os dados dos autores masculinos com livros publicados em São Paulo ou Rio de Janeiro */ 
SELECT NOME_AUTOR, SEXO_AUTOR FROM LIVRARIA WHERE SEXO_AUTOR = 'M' AND (UF_EDITORA = 'SP' OR UF_EDITORA = 'RJ');