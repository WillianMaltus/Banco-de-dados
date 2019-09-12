CREATE TABLE cliente (
id_cliente integer PRIMARY KEY,
nome varchar(100),
cpf char(11),
cidade varchar(50),
logradouro varchar(100),
estado char(2),
telefone varchar(20),
complemento varchar(50),
id_conta_corrente integer,
FOREIGN KEY(id_conta_corrente) REFERENCES conta_corrente (id_conta_corrente)
)

CREATE TABLE conta_corrente (
id_conta_corrente integer PRIMARY KEY,
num_conta numeric(6.2),
extrato varchar(500),
vlr_limite numeric(8.2),
saldo numeric(10.2),
id_agencia integer,
FOREIGN KEY(id_agencia) REFERENCES agencia (id_agencia)
)

CREATE TABLE agencia (
id_agencia integer PRIMARY KEY,
num_agencia varchar(20),
nome varchar(100),
cidade varchar(50),
estado char(2),
gerente varchar(100)
)

CREATE TABLE emprestimo (
id_emprestimo integer PRIMARY KEY,
dt_enc date,
dt_efetivacao date,
qtd_parcelas integer,
valor numeric(10.2),
tx_juros numeric(6.2),
id_conta_corrente integer,
FOREIGN KEY(id_conta_corrente) REFERENCES conta_corrente (id_conta_corrente)
)
