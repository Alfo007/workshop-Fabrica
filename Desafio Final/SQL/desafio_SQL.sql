CREATE DATABASE loja_joias;
Use loja_joias;

CREATE TABLE joia(
    id INT,
    tipo VARCHAR(40),
    preco FLOAT,    
	PRIMARY KEY(id)
);

CREATE TABLE funcionario(
		nome VARCHAR(60) NOT NULL,
        cpf VARCHAR(30),
        cargo VARCHAR(60),
        salario decimal(6,2) NOT NULL,
        data_contratacao DATE,
        PRIMARY KEY(cpf)
);

CREATE TABLE cliente(
		nome VARCHAR(60) NOT NULL,
        idade INT,
        data_de_cadastro DATE,
        cpf varchar(14),
        
        PRIMARY KEY(cpf)
);

ALTER TABLE joia ADD COLUMN valiosa VARCHAR(30);
ALTER TABLE funcionario ADD COLUMN idade INT;
ALTER TABLE cliente ADD COLUMN endereco VARCHAR(100);


INSERT INTO 
joia(id, tipo, preco, valiosa) 
VALUES 
('55555', 'Diamante', 4700.90, 'Sim'),
('44444', 'Ouro', 2700.90, 'Sim'),
('33333', 'Prata', 700.90, 'Não'),
('22222', 'Bronze', 110.90, 'Não');

INSERT INTO 
funcionario (nome, cpf, cargo, salario, data_contratacao, idade) 
VALUES
('Joselias Ferreiro', '102.111.222-33', 'Vendedor', 3200, '2019-08-01', 34),
('Dagoberto Macedo', '102.444.555-66', 'Técnico de TI', 4200, '2021-03-06', 28),
('Gertrude Machado', '102.777.888-99', 'Gerente', 5200, '2016-05-11', 39);

INSERT INTO 
cliente (nome, idade, data_de_cadastro, cpf, endereco) 
VALUES
('Adoberto Josías', 29, '2019-10-09', '505-000-111-22', 'Manaíra'),
('Erivaldo Matías', 36, '2022-09-12', '505-333-444-55', 'Mangabeira'),
('Josías Alberto', 41, '2020-03-10', '505-667-777-88', 'Tambaú');

select * from joia;
select * from funcionario;
select * from cliente;



