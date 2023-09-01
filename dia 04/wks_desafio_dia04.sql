CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE livros(
    preco FLOAT NOT NULL,
    id INT,
    genero VARCHAR(40),
    quantidade INT,
    nome VARCHAR(100),
    
    PRIMARY KEY(id)
);

CREATE TABLE funcionario(
     nome VARCHAR(60) NOT NULL,
     idade INT,
     salario FLOAT,
     setor VARCHAR(50),
     cpf VARCHAR(14),
     
     PRIMARY KEY(cpf)
);

CREATE TABLE cliente(
     nome VARCHAR(100) NOT NULL,
     idade INT,
     cpf varchar(14),
     telefone VARCHAR(20),
     data_de_cadastro DATE,

 PRIMARY KEY(cpf)
);

ALTER TABLE livros ADD COLUMN disponibilidade VARCHAR(50);
ALTER TABLE funcionario ADD COLUMN data_de_contratacao DATE;
ALTER TABLE cliente ADD COLUMN categoria VARCHAR(20);

INSERT INTO 
livros(preco, id, genero, quantidade, nome, disponibilidade) 
VALUES 
(89.90, '555-99', 'Ação', 6, 'Avatar', 'Disponível'),
(80.90, '444-99', 'História', 8, 'Tesla', 'Disponível'),
(59.90, '333-99', 'Aventura', 0, 'Jogos Vorazes', 'Não disponível');

INSERT INTO 
funcionario(nome, idade, salario, setor, cpf, data_de_contratacao) 
VALUES 
('Walace Moureira', 66, 3200, 'Limpeza', '111-222-333-44', '2012-06-12'),
('Joeslei Anderson', 41, 4500, 'Bibliotecário', '555-667-777-88', '2017-02-07'),
('Walace Moureira', 21, 2000, 'Estagiário', '999-000-111-22', '2022-09-06');

INSERT INTO 
cliente(nome, idade, cpf, telefone, data_de_cadastro, categoria) 
VALUES
('Alessandro Gomes', 51, '000-111-222-33', '(81)98765-432', '2014-07-10', 'Diamante'),
('André Tavares', 37, '444-555-667-77', '(83)91234-567', '2017-10-04', 'Prata'),
('Ademir Brito', 29, '888-999-000-11', '(41)98901-234', '2016-01-10', 'Bronze'); 

ALTER TABLE livros DROP COLUMN disponibilidade;
ALTER TABLE funcionario DROP COLUMN data_de_contratacao;
ALTER TABLE cliente DROP COLUMN categoria;

SELECT * FROM livros;
SELECT * FROM funcionario;
SELECT * FROM cliente;

SELECT * FROM cliente WHERE nome ='Ademir';
SELECT * FROM funcionario WHERE idade > 40;
SELECT * FROM livros WHERE preco BETWEEN 50 AND 80;





