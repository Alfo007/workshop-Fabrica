CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE Livros(
    preco FLOAT NOT NULL,
    id INT,
    genero VARCHAR(40),
    nome VARCHAR(100),
PRIMARY KEY(id)
);

CREATE TABLE cliente(
     nome VARCHAR(100) NOT NULL,
     cpf varchar(14),
     telefone VARCHAR(20),
     endereco VARCHAR(30),
     cep VARCHAR(20),
     
PRIMARY KEY (cpf)
);

CREATE TABLE 

CREATE TABLE endereco(
   rua VARCHAR(100),
   numero INT,
   cep VARCHAR(20),
   cidade VARCHAR(100),
   bairro VARCHAR(100),
   tipo VARCHAR(10),
   
   PRIMARY KEY (cep)
);