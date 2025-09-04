/* Comandos */

/* Cria a tabela + nome */
CREATE DATABASE PROJETO_EXEMPLO;

/* USE = para escolher o banco que vai ser utilizado no MySQL */
USE PROJETO_EXEMPLO;

/* Visualizar as tabelas
*** - Só tem no MySQL */
SHOW TABLES;

/* Descrever tabelas */
DESC /* nome da tabela */ CLIENTES;

/* AS = Alias */
/* Adiciona elementos que não existam na coluna */

/* Mostra os dados do banco que estou conectada */
STATUS;

/* ------------------------------------------------- */

/* Modelagem Básica */
/* Modelagem Conceitual */

/* Entidade = Tabela */
CLIENTES

/* Atributos */
/* Tipagem = tipo do dado armazenado e quantidade */
NOME - CARACTER(30)
CPF - NUMERICO(11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDERECO - CARACTER(100)
SEXO - CARACTER(1)

/* Criando a tabela com os atributos */
CREATE TABLE CLIENTES(
    NOME      VARCHAR(30),
    CPF       INT(11),
    EMAIL     VARCHAR(30),
    TELEFONE  VARCHAR(30),
    ENDERECO  VARCHAR(100),
    SEXO      CHAR(1)
);

/* Inserindo apenas atributos, sem apontar as colunas */
INSERT INTO CLIENTES
VALUES
(
    'Giovanna',
    123456789,
    'giovanna@gmail.com',
    '(11)12345-6789',
    'R Deserta, 734 - sp',
    'F'
);

/* Inserindo atributos, apontando as colunas */
INSERT INTO CLIENTES
VALUES
(
    NOME,
    CPF,
    EMAIL,
    TELEFONE,
    ENDERECO,
    SEXO
),
(
    'Giovanna',
    123456789,
    'giovanna@gmail.com',
    '(11)12345-6789',
    'R Deserta, 734 - sp',
    'F'
);

/* Seleção = WHERE, Projeção = SELECT e junção */

/* Mesclagem de informações, exibino as colunas desejadas + horário da consulta */
SELECT EMAIL, SEXO, ENDERECO, NOME, NOW() AS DATA_HORA FROM CLIENTES;

/* LIKE = Utilizado para filtrar buscas por linhas da tabela
   - só deve utilizar somente LIKE se a busca for precisa */
SELECT NOME, SEXO FROM CLIENTES WHERE ENDERECO LIKE 'RJ';

/* - senão, usar LIKE 'busca_desejada' + % (começo, meio, final ou em ambos lugares)
   - % = caracter coringa */
SELECT NOME, SEXO FROM CLIENTES WHERE ENDERECO LIKE '%RJ%';

/* Operadores lógicos OR e AND */
/* OR = Uma das condições de busca devem ser verdadeiras */
SELECT NOME_AUTOR, SEXO_AUTOR, UF_EDITORA FROM LIVRARIA WHERE SEXO_AUTOR = 'F' OR UF_EDITORA = 'RJ';

/*AND = As condições de buscam devem ser verdadeiras */
SELECT NOME_AUTOR, SEXO_AUTOR, UF_EDITORA FROM LIVRARIA WHERE SEXO_AUTOR = 'F' AND UF_EDITORA = 'RJ';

/* COUNT = Conta os registros de uma tabela */
SELECT COUNT(*) FROM CLIENTES;

/* GROUP BY = Agrupa registros de colunas desejadas */
/* nesse caso, ele busca o SEXO_AUTOR e exibe quais os tipos existem */

/* Dica: utilizar a função COUNT(*) para verificar a quantidade de cada dado a ser buscado
   ex.: 70 mulheres e 10 homens --> a quantidade de mulheres é maior em relação a homens

   Dica2 - Performance: para operadores OR ou AND, utilizar o valor maior a ser buscado,
   de forma que a probabilidade seja maior + melhorar a performance da busca e do banco */
SELECT SEXO_AUTOR, COUNT(*) FROM LIVRARIA GROUP BY SEXO_AUTOR;

/* Filtrando valores nulos = "IS NULL" - valores "não nulos" = "IS NOT NULL" */
SELECT NOME, SEXO, ENDERECO FROM CLIENTES WHERE EMAIL IS NULL;

/* Atualizar registros */
UPDATE CLIENTES SET EMAIL = 'giovanna@gmail.com' WHERE NOME = 'Giovanna';

/* Deletar registros */
DELETE FROM CLIENTES WHERE NOME = 'Giovanna';

/* ------------------------------------------------- */

/* Processos de modelagem */

/* Fase 01 e 02 - AD = ADM de Dados */

MODELAGEM CONCEITUAL - RASCUNHO
MODELAGEM LÓGICA - QUALQUER PROGRAMA DE MODELAGEM

/* Fase 03 - DBA/ADM */

MODELAGEM FÍSICA - SCRPITS DE BANCO


/* Tunning = profissional/ação de otimizar performance/tempo do banco de dados */

/* SGBD = Sistema de Gerenciamento de Banco de Dados */
/* tipo ENUM só existe no MySQL */
/* Registro/Tupla = linha de uma tabela */
