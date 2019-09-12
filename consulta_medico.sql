CREATE TABLE paciente (
id_paciente integer PRIMARY KEY,
nome varchar(100),
endereco varchar(100),
dt_nascimento date(8),
sexo char(1),
identidade char(10),
convenio varchar(100)
)

CREATE TABLE consulta (
id_consulta integer PRIMARY KEY,
diagnostico varchar(1000),
data date,
prescricao varchar(300),
hora time,
exame varchar(100),
id_paciente integer,
id_medico integer,
FOREIGN KEY(id_paciente) REFERENCES paciente (id_paciente),
FOREIGN KEY(id_medico) REFERENCES medico (id_medico)
)

CREATE TABLE medico (
id_medico integer PRIMARY KEY,
telefone varchar(20),
CRM varchar(20),
cpf char(11),
endereco varchar(100),
nome varchar(100),
especialidade varchar(100)
)
