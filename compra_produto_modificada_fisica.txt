CREATE TABLE forma_pgto (
id_forma_pgto integer PRIMARY KEY,
descricao varchar(20)
);

CREATE TABLE cliente (
id_cliente integer PRIMARY KEY,
nome varchar(100),
endereco varchar(100),
e_mail varchar(100),
cpf char(11),
telefone varchar(20)
);

CREATE TABLE produto (
id_produto integer PRIMARY KEY,
validade date,
marca varchar(50),
descricao varchar(30),
qtde_produto integer,
vlr_unt numeric(6,2)
);

CREATE TABLE compra (
id_compra integer PRIMARY KEY,
dt_compra date,
valor numeric(6,2),
atendente varchar(100),
id_cliente integer,
id_forma_pgto integer,
FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente),
FOREIGN KEY(id_forma_pgto) REFERENCES forma_pgto (id_forma_pgto)
);

CREATE TABLE compra_produto (
id_produto integer,
id_compra integer,
vlr_total numeric(6,2),
qtde_comprada integer,
PRIMARY KEY(id_produto,id_compra),
FOREIGN KEY(id_produto) REFERENCES produto (id_produto),
FOREIGN KEY(id_compra) REFERENCES compra (id_compra)
)
