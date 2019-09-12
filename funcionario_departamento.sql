CREATE TABLE funcionario (
id_funcionario integer PRIMARY KEY,
nome varchar(50),
dt_admissao date,
telefone varchar(20),
e_mail varchar(100),
endereco varchar(100),
num_matricula varchar(8),
id_departamento integer,
FOREIGN KEY(id_departamento) REFERENCES departamento (id_departamento)
)

CREATE TABLE departamento (
id_departamento integer PRIMARY KEY,
ramal integer,
responsavel varchar(50),
sigla varchar(4),
nome varchar(50)
)
